# To refresh the cash, delete the cache directory and set OFFLINE to False
# You will need access to the database at gimli.logic
OFFLINE = True

import os, json, Levenshtein
import bm.cfg, bm.utils, bm.io
if not OFFLINE:
    import paramiko, sshtunnel, psycopg2

SSH_USER    = "data"
SSH_HOST    = "gimli.logic.tuwien.ac.at"
SSH_KEYPATH = os.path.join(bm.cfg.HOME,"..","..","..","ssh","id_rsa")
SSH_KEYPW   = ""
DB_NAME = 'e'
DB_USER = 'data'
DB_HOST = 'localhost'
DB_PW = 'd41d8cd98f00b204e9800998ecf8427e'

VERIFIED    = "/data-btrfs/home/ethereum/verified"
CACHE = os.path.join(bm.cfg.HOME, "cache")


ssh,tunnel,connection,cursor = None,None,None,None

def open():
    if OFFLINE:
        return
    global ssh,tunnel,connection,cursor
    ssh = paramiko.SSHClient()
    tunnel = sshtunnel.SSHTunnelForwarder(
        SSH_HOST,
        ssh_username=SSH_USER,
        ssh_pkey=SSH_KEYPATH,
        ssh_private_key_password=SSH_KEYPW,
        remote_bind_address=('127.0.0.1', 5432))
    # Establish ssh connection to Gimli:
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.connect(SSH_HOST, 22, username=SSH_USER, key_filename=SSH_KEYPATH)
    # Establish tunnel to Postgres Sever
    tunnel.start()
    port = tunnel.local_bind_port
    # Establish connection to DB
    connection = psycopg2.connect(
        f"dbname='{DB_NAME}' user='{DB_USER}' host='{DB_HOST}'"
        f"password='{DB_PW}' port='{port}'")
    cursor = connection.cursor()


def query(sql, args):
    try:
        cursor.execute(sql, args)
        rows = cursor.fetchall()
    except psycopg2.Error as error:
        if str(error) == 'no results to fetch':
            rows = None
        else:
            raise
    return rows


def close():
    if OFFLINE:
        return
    cursor.close()
    connection.close()
    tunnel.stop()
    ssh.close()



CACHE_ES = os.path.join(CACHE, "verified_source")
os.makedirs(CACHE_ES, exist_ok=True)

def verified_source(address, chain):
    address = bm.utils.norm_address(address)
    cache = os.path.join(CACHE_ES, f"{chain}-{address}.json")
    try:
        data = bm.io.read_json(cache)
    except:
        assert not OFFLINE
        try:
            cmd_to_execute = f'cat {VERIFIED}/{chain}/{address[2:4]}/{address}.json'
            ssh_stdin, ssh_stdout, ssh_stderr = ssh.exec_command(cmd_to_execute)
            data = json.load(ssh_stdout)
        except Exception:
            data = {}
        bm.io.write_json(data, cache)
    return unpack_verified_source(data)



CACHE_VADDR = os.path.join(CACHE, "vaddr")
os.makedirs(CACHE_VADDR, exist_ok=True)

def verified_address(address):
    if not address:
        return []
    address = bm.utils.norm_address(address)
    cache = os.path.join(CACHE_VADDR, f"{address}.csv")
    try:
        return [ tuple(line.split(",")) for line in bm.io.read_lines(cache) ]
    except:
        assert not OFFLINE
        address = address[2:]
        a = address.strip("0")
        rows = query("""
            SELECT address,chain,hash,contractname FROM verified_source
            WHERE address LIKE '%%'||%s||'%%' OR address LIKE '%%'||%s||'%%';
            """, (a[2:12],a[-12:-2]))
        if rows:
            dists = [ (Levenshtein.distance(r[0],address),r) for r in rows ]
            min_dist = min(l for l,_ in dists)
            if min_dist > 5:
                result = []
            else:
                result = sorted([ (f"0x{r[0]}",r[1],r[2],r[3]) for l,r in dists if l==min_dist ])
        else:
            result = []
        bm.io.write_lines([",".join(r) for r in result], cache)
        return result



CACHE_MADDR = os.path.join(CACHE, "maddr")
os.makedirs(CACHE_MADDR, exist_ok=True)

def main_address(address):
    if not address:
        return []
    address = bm.utils.norm_address(address)
    cache = os.path.join(CACHE_MADDR, f"{address}.csv")
    try:
        return [ tuple(line.split(",")) for line in bm.io.read_lines(cache) ]
    except:
        assert not OFFLINE
        address = address[2:]
        a = address.strip("0")
        rows = query("""
            SELECT address FROM contract_address_main
            WHERE address LIKE '%%'||%s||'%%' OR address LIKE '%%'||%s||'%%';
            """, (a[2:12],a[-12:-2]))
        if rows:
            dists = [ (Levenshtein.distance(a,address),a) for (a,) in rows ]
            min_dist = min(l for l,_ in dists)
            if min_dist > 5:
                result = []
            else:
                result = sorted([ (f"0x{a}","main") for l,a in dists if l==min_dist ])
        else:
            result = []
        bm.io.write_lines([",".join(r) for r in result], cache)
        return result



CACHE_VSOL2ADDR = os.path.join(CACHE, "vsol2addr")
os.makedirs(CACHE_VSOL2ADDR, exist_ok=True)

def verified_sol2address(sol):
    fp = bm.solidity.fingerprint(sol)
    cache = os.path.join(CACHE_VSOL2ADDR, f"{fp}.csv")
    try:
        return [ tuple(line.split(",")) for line in bm.io.read_lines(cache) ]
    except:
        assert not OFFLINE
        rows = query("""
            SELECT address,chain FROM verified_source
            WHERE hash = %s;
            """, (fp,))
        acs = sorted([ (f"0x{r[0]}", r[1]) for r in rows ])
        bm.io.write_lines([",".join(ac) for ac in acs], cache)
        return acs



CACHE_VRT2ADDR = os.path.join(CACHE, "vrt2addr")
os.makedirs(CACHE_VRT2ADDR, exist_ok=True)

def verified_runtime2address(code):
    if not code:
        return []
    code = bm.utils.norm_hex(code)
    md5 = bm.utils.md5(code)
    cache = os.path.join(CACHE_VRT2ADDR, f"{md5}.csv")
    try:
        return [ tuple(line.split(",")) for line in bm.io.read_lines(cache) ]
    except:
        assert not OFFLINE
        rows = query("""
            SELECT distinct account(aid) FROM bindata2id(%s) code,
            contract2 join verified_source ON address=encode(id2addr(aid),'hex') AND chain='main'
            WHERE cdeployed = code""", (code,))
        acs = sorted([ (r[0],"main") for r in rows ])
        bm.io.write_lines([",".join(ac) for ac in acs], cache)
        return acs



CACHE_RT2ADDR = os.path.join(CACHE, "rt2addr")
os.makedirs(CACHE_RT2ADDR, exist_ok=True)

def runtime2address(code):
    if not code:
        return []
    code = bm.utils.norm_hex(code)
    md5 = bm.utils.md5(code)
    cache = os.path.join(CACHE_RT2ADDR, f"{md5}.csv")
    try:
        return [ tuple(line.split(",")) for line in bm.io.read_lines(cache) ]
    except:
        assert not OFFLINE
        rows = query("""
            SELECT distinct account(aid) FROM bindata2id(%s) code, contract2
            WHERE cdeployed = code""", (code,))
        acs = sorted([ (r[0],"main") for r in rows ])
        bm.io.write_lines([",".join(ac) for ac in acs], cache)
        return acs



CACHE_VBC2ADDR = os.path.join(CACHE, "vbc2addr")
os.makedirs(CACHE_VBC2ADDR, exist_ok=True)

def verified_bytecode2address(code):
    if not code:
        return []
    code = bm.utils.norm_hex(code)
    md5 = bm.utils.md5(code)
    cache = os.path.join(CACHE_VBC2ADDR, f"{md5}.csv")
    try:
        return [ tuple(line.split(",")) for line in bm.io.read_lines(cache) ]
    except:
        assert not OFFLINE
        rows = query("""
            SELECT distinct account(aid) FROM bindata2id(%s) code,
            contract2 join verified_source ON address=encode(id2addr(aid),'hex') AND chain='main'
            WHERE cdeployment = code""", (code,))
        acs = sorted([ (r[0],"main") for r in rows ])
        bm.io.write_lines([",".join(ac) for ac in acs], cache)
        return acs



CACHE_BC2ADDR = os.path.join(CACHE, "bc2addr")
os.makedirs(CACHE_BC2ADDR, exist_ok=True)

def bytecode2address(code):
    if not code:
        return []
    code = bm.utils.norm_hex(code)
    md5 = bm.utils.md5(code)
    cache = os.path.join(CACHE_BC2ADDR, f"{md5}.csv")
    try:
        return [ tuple(line.split(",")) for line in bm.io.read_lines(cache) ]
    except:
        assert not OFFLINE
        rows = query("""
            SELECT distinct account(aid) FROM bindata2id(%s) code, contract2
            WHERE cdeployment = code""", (code,))
        acs = sorted([ (r[0],"main") for r in rows ])
        bm.io.write_lines([",".join(ac) for ac in acs], cache)
        return acs



CACHE_VBC2RT = os.path.join(CACHE, "vbc2rt")
os.makedirs(CACHE_VBC2RT, exist_ok=True)

def verified_bytecode2runtime(code):
    if not code:
        return []
    code = bm.utils.norm_hex(code)
    md5 = bm.utils.md5(code)
    cache = os.path.join(CACHE_VBC2RT, f"{md5}.csv")
    try:
        return bm.io.read_lines(cache)
    except:
        assert not OFFLINE
        rows = query("""
            SELECT distinct bindata(cdeployed) FROM bindata2id(%s) code,
            contract2 join verified_source ON address=encode(id2addr(aid),'hex') AND chain='main'
            WHERE cdeployment = code;
            """, (code,))
        runtime = sorted([ row[0][2:] for row in rows ])
        bm.io.write_lines(runtime, cache)
        return runtime



CACHE_BC2RT = os.path.join(CACHE, "bc2rt")
os.makedirs(CACHE_BC2RT, exist_ok=True)

def bytecode2runtime(code):
    if not code:
        return []
    code = bm.utils.norm_hex(code)
    md5 = bm.utils.md5(code)
    cache = os.path.join(CACHE_BC2RT, f"{md5}.csv")
    try:
        return bm.io.read_lines(cache)
    except:
        assert not OFFLINE
        rows = query("""
            SELECT distinct bindata(cdeployed) FROM bindata2id(%s) code,contract2
            WHERE cdeployment = code;
            """, (code,))
        runtime = sorted([ row[0][2:] for row in rows ])
        bm.io.write_lines(runtime, cache)
        return runtime



CACHE_VRT2BC = os.path.join(CACHE, "vrt2bc")
os.makedirs(CACHE_VRT2BC, exist_ok=True)

def verified_runtime2bytecode(code):
    if not code:
        return []
    code = bm.utils.norm_hex(code)
    md5 = bm.utils.md5(code)
    cache = os.path.join(CACHE_VRT2BC, f"{md5}.csv")
    try:
        return bm.io.read_lines(cache)
    except:
        assert not OFFLINE
        rows = query("""
            SELECT distinct bindata(cdeployment) FROM bindata2id(%s) code,
            contract2 join verified_source ON address=encode(id2addr(aid),'hex') AND chain='main'
            WHERE cdeployed = code;
            """, (code,))
        bytecodes = sorted([ row[0][2:] for row in rows ])
        bm.io.write_lines(bytecodes, cache)
        return bytecodes



CACHE_RT2BC = os.path.join(CACHE, "rt2bc")
os.makedirs(CACHE_RT2BC, exist_ok=True)

def runtime2bytecode(code):
    if not code:
        return []
    code = bm.utils.norm_hex(code)
    md5 = bm.utils.md5(code)
    cache = os.path.join(CACHE_RT2BC, f"{md5}.csv")
    try:
        return bm.io.read_lines(cache)
    except:
        assert not OFFLINE
        rows = query("""
            SELECT distinct bindata(cdeployment) FROM bindata2id(%s) code,contract2
            WHERE cdeployed = code;
            """, (code,))
        bytecodes = sorted([ row[0][2:] for row in rows ])
        bm.io.write_lines(bytecodes, cache)
        return bytecodes



CACHE_ADDR2CODES = os.path.join(CACHE, "addr2codes")
os.makedirs(CACHE_ADDR2CODES, exist_ok=True)

def address2codes(address):
    if not address:
        return []
    address = bm.utils.norm_address(address)
    cache = os.path.join(CACHE_ADDR2CODES, f"main-{address}.csv")
    try:
        return [ tuple(line.split(",")) for line in bm.io.read_lines(cache) ]
    except:
        assert not OFFLINE
        rows = query("""
            SELECT distinct bindata(cdeployment),bindata(cdeployed) FROM addr2id(%s) address,contract2
            WHERE aid=address;""", (address,))
        codes = sorted([ (row[0][2:],row[1][2:]) for row in rows ])
        bm.io.write_lines([f"{bytecode},{runtime}" for bytecode,runtime in codes], cache)
        return codes



def unpack_verified_source(data):
    if not data:
        return data
    assert data["status"] == "1"
    assert data["message"] == "OK"
    results = data["result"]
    assert len(results) == 1
    result = results[0]
    abi = result.get("ABI")
    contractName = result.get("ContractName")
    compilerVersion = result.get("CompilerVersion")
    optimizationUsed = result.get("OptimizationUsed") # "1"
    runs = result.get("Runs")
    library = result.get("Library")
    swarm = result.get("SwarmSource")
    constructorArguments = result.get("ConstructorArguments")
    language = None
    settings = None
    sourceCode = result.get("SourceCode","")
    if sourceCode.startswith("{{"):
        sourceCode = json.loads(sourceCode[1:-1], strict=False)
        sources  = { k:v["content"] for k,v in sourceCode["sources"].items() }
        language = sourceCode["language"]
        settings = sourceCode["settings"]
    elif sourceCode.startswith("{"):
        sourceCode = json.loads(sourceCode)
        sources  = { k:v["content"] for k,v in sourceCode.items() }
    else:
        ext = "vy" if compilerVersion.startswith("vyper") else "sol"
        sources = { f"{contractName}.{ext}": sourceCode }
    for name,code in sources.items():
        sources[name] = code.replace("\r","")
    return {
        "abi": abi,
        "contractName": contractName,
        "compilerVersion": compilerVersion,
        "optimizationUsed": optimizationUsed,
        "runs": runs,
        "library": library,
        "swarm": swarm,
        "constructorArguments": constructorArguments,
        "sources": sources,
        "language": language,
        "settings": settings }

