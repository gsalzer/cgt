import io, re, cbor2
import bm.utils

# detect and remove meta data
BZZR0 = b'bzzr0'
BZZR1 = b'bzzr1'
IPFS  = b'ipfs'
SOURCE_RE = re.compile(BZZR0 + b'|' + BZZR1 + b'|' + IPFS)
METADATA_OFFSET = 50

def matchMetadata(code,keyword):
    try:
        fp = io.BytesIO(code)
        metadata = cbor2.load(fp)
        rest = fp.read()
        len_metadata = int.from_bytes(rest[:2],'big')
        if len(rest) >= 2 and len(code) == len_metadata + len(rest) and keyword.decode('ascii') in metadata:
            return code[:len_metadata+2]
        else:
            return b''
    except:
        return b''

def zeroMetadata(code):
    code_wo_metadata = b''
    code_start = 0
    i = 0
    while True:
        source_match = SOURCE_RE.search(code,i)
        if source_match is None:
            break
        source_start = source_match.start()
        metadata = b''
        metadata_start = source_start
        for j in range(source_start-2,max(source_start-METADATA_OFFSET,0)-1,-1):
            metadata = matchMetadata(code[j:],source_match[0])
            if metadata != b'':
                metadata_start = j
                break
        metadata_end = metadata_start + len(metadata) 
        if metadata_end > source_start:
            if metadata_start > code_start:
                code_wo_metadata += code[code_start:metadata_start]
            code_wo_metadata += b'\x00'*(metadata_end-metadata_start)
            code_start = metadata_end
            i = metadata_end
        else:
            i = source_start + 1
    if code_start < len(code):
        code_wo_metadata += code[code_start:]
    return code_wo_metadata


def fingerprint(code):
    c = bm.utils.norm_hex(code)
    c = bytes.fromhex(c)
    return bm.utils.md5(zeroMetadata(c))


# compute runtime from deployment code
STOP     = b'\x00'
CODECOPY = b'\x39'
RETURN   = b'\xf3'
INVALID  = b'\xfe'
DUP1     = b'\x80'
DUP2     = b'\x81'
DUP3     = b'\x82'
SWAP1    = b'\x90'
PUSH_x   = b'(\x60(?:.)|\x61(?:..)|\x62(?:...)|\x63(?:....))' # PUSH1/PUSH2/PUSH3/PUSH4
PUSH1_0  = b'\x60\x00'
SEPARATOR= b'(?:' + INVALID + b'|' + STOP + b')?'
ANYTHING = b'.*?'
RUNTIME1 = PUSH_x + DUP1 + PUSH_x + PUSH1_0 + CODECOPY + PUSH1_0 + RETURN + SEPARATOR
RE_RUNTIME1 = re.compile(RUNTIME1, re.DOTALL)
RUNTIME2 = PUSH_x + SWAP1 + DUP2 + SWAP1 + PUSH_x + SWAP1 + CODECOPY + PUSH1_0 + RETURN + SEPARATOR
RE_RUNTIME2 = re.compile(RUNTIME2, re.DOTALL)
RTLIBRARY = PUSH_x + PUSH_x + PUSH_x + DUP3 + DUP3 + DUP3 + CODECOPY + ANYTHING + RETURN + SEPARATOR
RE_RTLIBRARY = re.compile(RTLIBRARY, re.DOTALL)

ORACLE_RUNTIME = {
    bytes.fromhex("608060405260606040518060400160405280601481526020017f60203414600857005b60008080803031335af1000000000000000000000000008152509050805181602001f3fe"): bytes.fromhex("60203414600857005b60008080803031335af100")
}

def deploy(code):
    if code in ORACLE_RUNTIME:
        return ORACLE_RUNTIME[code]
    for RE in (RE_RUNTIME1, RE_RUNTIME2, RE_RTLIBRARY):
        if not (m := RE.search(code)):
            continue
        rt_length = int.from_bytes(m[1][1:], 'big')
        rt_start  = int.from_bytes(m[2][1:], 'big')
        #assert m.end()==rt_start
        #assert m.end()+rt_length==len(code) # does not hold if deployment code creates contracts itself
        return code[rt_start:rt_start+rt_length]
    raise Exception(f"Unknown type of deployment code\n{code.hex()}")

def is_library(code):
    return code.startswith(b'\x73\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00')


def add_0x(_hex):
    return _hex if _hex[0:2] == '0x' else '0x' + _hex


def del_0x(_hex):
    return _hex[2:] if _hex[0:2] == '0x' else _hex
