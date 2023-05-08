import hashlib, Crypto.Hash.keccak

def norm_address(address):
    if not address:
        return address
    address = norm_hex(address).zfill(40)
    return f"0x{address[:40]}"

def norm_hex(h):
    if not h:
        return h
    h = h.strip().lower()
    if h[:2] == "0x":
        h = h[2:]
    if len(h)%2 == 1:
        h = f"0{h}"
    assert all(c in "0123456789abcdef" for c in h)
    return h

def hex2bytes(h):
    if not h:
       return b''
    if h[:2] == "0x":
        h = h[2:]
    return bytes.fromhex(h)

def bytes2hex(b):
    if not b:
        return ''
    return b.hex()

def keccak(data, encoding=None):
    if isinstance(data,str):
        if encoding:
            data = str(data).encode(encoding)
        else:
            data = bytes.fromhex(data)
    return Crypto.Hash.keccak.new(digest_bits=256).update(data).digest().hex()

def md5(data, encoding=None):
    if not isinstance(data,list):
        data = [data]
    md5_data = []
    for d in data:
        if isinstance(d,str):
            if encoding:
                d = str(d).encode(encoding)
            else:
                d = bytes.fromhex(d)
        md5_data.append(hashlib.md5(d).digest())
    # Don't hash singletons a second time (backwards compatibility)
    if len(md5_data)==1:
        return md5_data[0].hex()
    else:
        joined_md5_data = b''.join(sorted(md5_data))
        return hashlib.md5(joined_md5_data).digest().hex()
