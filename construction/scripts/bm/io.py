import json, yaml, csv
import bm.log

def read_yaml(fn, encoding=None):
    try:
        with open(fn, 'r', encoding=encoding) as f:
            # for an empty file, return empty dict, not NoneType
            return yaml.safe_load(f) or {}
    except Exception as e:
        raise bm.log.BenchmarkError(e)

def read_json(fn, encoding=None):
    try:
        with open(fn, 'r', encoding=encoding) as f:
            return json.load(f)
    except Exception as e:
        raise bm.log.BenchmarkError(e)

def write_json(data, fn, encoding=None, **kwargs):
    try:
        with open(fn, 'w', encoding=encoding) as f:
            return json.dump(data, f, **kwargs)
    except Exception as e:
        raise bm.log.BenchmarkError(e)

def read_lines(fn, encoding=None):
    try:
        with open(fn, 'r', encoding=encoding) as f:
            return f.read().splitlines()
    except Exception as e:
        raise bm.log.BenchmarkError(e)

def write_lines(data, fn, encoding=None):
    try:
        with open(fn, 'w', encoding=encoding) as f:
            for line in data:
                f.write(f"{line}\n")
    except Exception as e:
        raise bm.log.BenchmarkError(e)

def read_string(fn, encoding=None):
    try:
        with open(fn, 'r', encoding=encoding) as f:
            return f.read()
    except Exception as e:
        raise bm.log.BenchmarkError(e)

def write_string(data, fn, encoding=None):
    try:
        with open(fn, 'w', encoding=encoding) as f:
            f.write(data)
    except Exception as e:
        raise bm.log.BenchmarkError(e)

def read_yaml(fn, encoding=None):
    try:
        with open(fn, 'r', encoding=encoding) as f:
            # for an empty file, return empty dict, not NoneType
            return yaml.safe_load(f) or {}
    except Exception as e:
        raise bm.log.BenchmarkError(e)

def read_csv(fn, encoding=None, **kwargs):
    try:
        with open(fn, 'r', encoding=encoding, newline='') as f:
            return list(csv.DictReader(f, **kwargs))
    except Exception as e:
        raise bm.log.BenchmarkError(e)
