{u'source_code/test524.sol': {u'EnjinBuyer': {'vulnerabilities': {'callstack': [], 'time_dependency': [u'source_code/test524.sol:175:5: Warning: Timestamp Dependency.\n    if (now < earliest_buy_time) return;'], 'reentrancy': [], 'integer_overflow': [u'source_code/test524.sol:205:5: Warning: Integer Overflow.\n    balances[msg.sender] += msg.value\nInteger Overflow occurs if:\n    balances[msg.sender] = 1\n    eth_cap = 1\n    bought_tokens = 0\n    kill_switch = 0', u'source_code/test524.sol:155:5: Warning: Integer Overflow.\n    buy_bounty += msg.value\nInteger Overflow occurs if:\n    buy_bounty = 1\n    developer = 0', u'source_code/test524.sol:163:5: Warning: Integer Overflow.\n    withdraw_bounty += msg.value\nInteger Overflow occurs if:\n    withdraw_bounty = 1\n    developer = 0', u'source_code/test524.sol:83:3: Warning: Integer Overflow.\n  function activate_kill_switch(string password) {\r\n  ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    password = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '75.8'}}}
