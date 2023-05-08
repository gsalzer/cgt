import re, json
import bm.utils

SPECIAL_START = re.compile('//|/\\*|"|\'')
QUOTE_END = re.compile("([^\\\\']|\\\\.)*'")
DQUOTE_END = re.compile('([^\\\\"]|\\\\.)*"')
SPDX = re.compile("// SPDX-License-Identifier: [_A-Za-z0-9-]*$")

def remove_comments(todo):
    todo = todo.splitlines()
    no_lines = len(todo)
    todo = "\n".join(todo) # normalize line ends
    todo = SPDX.sub("", todo)
    done = ""
    one_line_comment = False
    while m := SPECIAL_START.search(todo):
        done += todo[:m.start()]
        todo = todo[m.end():]
        if m[0] == "//":
            one_line_comment = True
            end = todo.find('\n')
            if end == -1:
                todo = ""
                break
            todo = todo[end:]
        elif m[0] == "/*":
            end = todo.find("*/")
            if end == -1: # error: comment not closed
                todo = ""
                break
            done += " "
            todo = todo[end+2:]
        else: # m[0] in ('"',"'")
            done += m[0]
            m2 = DQUOTE_END.search(todo) if m[0] == '"' else QUOTE_END.search(todo)
            if not m2: # error: string not closed
                break
            done += todo[:m2.end()]
            todo =  todo[m2.end():]
    return done+todo, no_lines, one_line_comment



ALNUM = { ord(c): None for c in "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_" }

def remove_alnum(prg):
    return prg.translate(ALNUM)



PRAGMA = re.compile("pragmasolidity[^;]*;")

def remove_pragma(prg):
    return PRAGMA.sub("",prg)



STRING_START = re.compile('"|\'')

def remove_strings(todo):
    done = ""
    while m := STRING_START.search(todo):
        done += todo[:m.start()] + '""'
        todo = todo[m.end():]
        m2 = DQUOTE_END.search(todo) if m[0] == '"' else QUOTE_END.search(todo)
        if not m2: # error: string not closed
            todo = ""
            break
        todo = todo[m2.end():]
    return done+todo



def remove_spaces(todo):
    todo = todo.replace("\\\n","")
    done = ""
    while m := STRING_START.search(todo):
        done += "".join(todo[:m.end()].split())
        todo = todo[m.end():]
        m2 = DQUOTE_END.search(todo) if m[0] == '"' else QUOTE_END.search(todo)
        if not m2: # error: string not closed
            done += todo
            todo = ""
            break
        done += todo[:m2.end()]
        todo = todo[m2.end():]
    return done + "".join(todo.split())



def fingerprints(sources):
    wo_spaces = []
    wo_pragma = []
    wo_strings = []
    wo_alnum = []
    msgs = []
    for fn,prg in sources.items():
        prg, no_lines, one_line_comment = remove_comments(prg)
        prg = remove_spaces(prg)
        wo_spaces.append(prg)
        prg = remove_pragma(prg)
        wo_pragma.append(prg)
        prg = remove_strings(prg)
        wo_strings.append(prg)
        msg = broken(prg, no_lines, one_line_comment)
        if msg:
            msgs.append(f"{fn}: {msg}")
        # remove "contract" and "interface" only now (needed for broken())
        prg = remove_alnum(prg)
        wo_alnum.append(prg)
    return (
        bm.utils.md5(wo_spaces,'utf8'),
        bm.utils.md5(wo_pragma,'utf8'),
        bm.utils.md5(wo_strings,'utf8'),
        bm.utils.md5(wo_alnum,'utf8'),
        ", ".join(msgs))



def broken(prg, no_lines, one_line_comments):
    if no_lines <= 1 and one_line_comments:
        return "len(lines)<=1 and one-line comments"
    if prg in ("None",""):
        return f"contains just '{prg}'"
    parentheses, at_least_one = [], False
    for c in prg:
        for p_open, p_close in (("(",")"), ("[","]"), ("{","}")):
            if c == p_open:
                parentheses.append(p_open)
                at_least_one = True
            elif c == p_close:
                if not parentheses:
                    return f"Extra '{p_close}' without '{p_open}'"
                top = parentheses.pop()
                if top != p_open:
                    return f"'{top}' closed by '{p_close}'"
    if parentheses != []:
        return f"Some parentheses have been left open: '{''.join(parentheses)}'"
    if "contract" in prg and not at_least_one:
        return "contract without parentheses"
    if "library" in prg and not at_least_one:
        return "library without parentheses"
    return ""



RE_CONTRACT_NAMES = re.compile(r'(?:contract|library)\s+([A-Za-z0-9_]*)(?:\s*{|\s+is\s)')

def contractnames(sources):
    if isinstance(sources, str):
        sources = [sources]
    elif isinstance(sources, dict):
        sources = sources.values()
    names = set()
    for prg in sources:
        prg,_,_ = remove_comments(prg)
        prg = remove_strings(prg)
        names.update(RE_CONTRACT_NAMES.findall(prg))
    return sorted(names)



def fingerprint(sol):
    return fingerprints({'': sol})[0]

def fingerprint2(sol):
    return fingerprints({'': sol})[1]

def is_broken(sol):
    return bool(fingerprints({'': sol})[4])

