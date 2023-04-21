import re, json
import bm.utils

SPECIAL_START = re.compile('//|/\*|"|\'')
QUOTE_END = re.compile("(?<!\\\\)'")
DQUOTE_END = re.compile('(?<!\\\\)"')

def remove_comments(todo):
    todo = '\n'.join(todo.splitlines()) # normalize line ends
    done = ''
    one_line_comment = False
    while m := SPECIAL_START.search(todo):
        done += todo[:m.start()]
        if m[0] == '//':
            one_line_comment = True
            end = todo.find('\n', m.end())
            if end == -1:
                return done, one_line_comment
            else:
                todo = todo[end:]
        elif m[0] == '/*':
            end = todo.find('*/', m.end())
            if end == -1:
                return done, one_line_comment
            else:
                done += " "
                todo = todo[end+2:]
        else:
            m2 = DQUOTE_END.search(todo[m.end():]) if m[0] == '"' else QUOTE_END.search(todo[m.end():])
            if not m2:
                return done+todo, one_line_comment
            done += todo[m.start():m.end()+m2.end()]
            todo =  todo[m.end()+m2.end():]
    return done+todo, one_line_comment



def remove_comments_strings(todo):
    todo = '\n'.join(todo.splitlines()) # normalize line ends
    done = ''
    one_line_comment = False
    while m := SPECIAL_START.search(todo):
        done += todo[:m.start()]
        if m[0] == '//':
            one_line_comment = True
            end = todo.find('\n', m.end())
            if end == -1:
                return done, one_line_comment
            else:
                todo = todo[end:]
        elif m[0] == '/*':
            end = todo.find('*/', m.end())
            if end == -1:
                return done, one_line_comment
            else:
                done += " "
                todo = todo[end+2:]
        else:
            m2 = DQUOTE_END.search(todo[m.end():]) if m[0] == '"' else QUOTE_END.search(todo[m.end():])
            if not m2:
                return done, one_line_comment
            todo =  todo[m.end()+m2.end():]
    return done+todo, one_line_comment



def remove_spaces(prg):
    return "".join(prg.split())



ALNUM = { ord(c): None for c in "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_" }

def remove_alnum(prg):
    return prg.translate(ALNUM)

PRAGMA = re.compile("pragmasolidity[^;]*;")

def fingerprint(prg):
    p,_ = remove_comments(prg)
    p = remove_spaces(p)
    return bm.utils.md5(p,'utf8')

def fingerprint2(prg):
    p,_ = remove_comments(prg)
    p = remove_spaces(p)
    p = PRAGMA.sub("",p)
    return bm.utils.md5(p,'utf8')

def fingerprint3(prg):
    p,_ = remove_comments(prg)
    p = remove_spaces(p)
    p = PRAGMA.sub("",p)
    p = remove_alnum(p)
    return bm.utils.md5(p,'utf8')


def is_broken(prg):
    lines = prg.splitlines()
    wo_comments_strings, one_line_comments = remove_comments_strings(prg)
    if len(lines) <=1 and one_line_comments:
        return True
    if any(line.endswith("&#13;") for line in lines):
        return True
    parentheses, at_least_one = [], False
    for c in wo_comments_strings:
        if c in "([{":
            parentheses.append(c)
            at_least_one = True
        elif c == ")":
            if not parentheses or parentheses.pop() != "(":
                return True
        elif c == "]":
            if not parentheses or parentheses.pop() != "[":
                return True
        elif c == "}":
            if not parentheses or parentheses.pop() != "{":
                return True
    return not at_least_one or parentheses != []



RE_CONTRACT_NAMES = re.compile(r'(?:contract|library)\s+([A-Za-z0-9_]*)(?:\s*{|\s+is\s)')

def contractnames(prg):
    if isinstance(prg, str):
        prg = [prg]
    elif isinstance(prg, dict):
        prg = prg.values()
    names = set()
    for p in prg:
        wo_comments_strings,_ = remove_comments_strings(p)
        names.update(RE_CONTRACT_NAMES.findall(wo_comments_strings))
    return sorted(names)

