{u'source_code/test2153.sol': {u'ICOSyndicate': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test2153.sol:117:9: Warning: Integer Overflow.\n        balances[msg.sender] += msg.value\nInteger Overflow occurs if:\n    balances[msg.sender] = 1\n    eth_cap = 1\n    bought_tokens = 0\n    kill_switch = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '92.1'}}}
