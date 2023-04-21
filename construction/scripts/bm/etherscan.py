import re, string
import requests_html

HEADERS = {"User-Agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:107.0) Gecko/20100101 Firefox/107.0"}

URL = {
    "main": string.Template("https://etherscan.io/address/$ADDRESS#code"),
    "ropsten": string.Template("https://ropsten.etherscan.io/address/$ADDRESS#code"),
}

CODE = {
    "main": re.compile(r"<div id=\'verifiedbytecode2\'>((?:[0-9a-f]{2})*)</div></pre>"),
    "ropsten": re.compile(r"<div id=\'verifiedbytecode2\'>((?:[0-9a-f]{2})*)</div></pre>")
}

#>0x</pre>

def bytecode(chain,address):
    session = requests_html.HTMLSession()
    r = session.get(URL["main"].substitute(ADDRESS=address), headers = HEADERS)
    m = CODE["main"].findall(r.text)
    return m,r
