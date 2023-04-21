import sys

class InternalError(Exception):
    pass

class BenchmarkError(Exception):
    pass

def notify(message):
    print(message)

def warn(message):
    #print(message)
    pass
