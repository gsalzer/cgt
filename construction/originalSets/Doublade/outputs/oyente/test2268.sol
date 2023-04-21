{u'source_code/test2268.sol': {u'Ryancoin': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test2268.sol:158:36: Warning: Integer Overflow.\n        uint256 previousBalances = balances[_from] + balances[_to]\nInteger Overflow occurs if:\n    balances[_from] = 115792089237316195423570985008687907853269984665640564039457584007913062834182\n    balances[_to] = 115487308118641924126717866189809754409289743693429519769181606938190102396799\n    _value = 9444732965739357536127\n    allowed[_from][msg.sender] = 9444732965739357536127\n    _to = 1461501637330902918203684832716283019655932542975\n    _from = 1461501637330902918203684832716283019655932542975'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test2268.sol:193:9: Warning: Integer Underflow.\n        _totalSupply -= _value\nInteger Underflow occurs if:\n    _value = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    _totalSupply = 115792089237316195423570985008687907853269984665640564039457584007913129639934\n    balances[msg.sender] = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '43.0'}, u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}}}
