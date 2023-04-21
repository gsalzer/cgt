{u'source_code/test3692.sol': {u'BabyCoin': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3692.sol:98:36: Warning: Integer Overflow.\n        uint256 previousBalances = balances[_from] + balances[_to]\nInteger Overflow occurs if:\n    balances[_from] = 115792089237316195423570985008687907853269984665640564039457584007913129639934\n    balances[_to] = 102754238\n    _value = 0\n    touched[_owner] = 255\n    _to = 1461501637330902918203684832716283019655932542975\n    allowed[_from][msg.sender] = 0', u'source_code/test3692.sol:102:16: Warning: Integer Overflow.\n        assert(balances[_from] + balances[_to]\nInteger Overflow occurs if:\n    balances[_from] = 57896044618658097711785492504343953926634992332820282019728792003956564819967\n    balances[_to] = 57896044618763410003454049691041871954318662765139177115129341115211412668417\n    _value = 0\n    touched[_owner] = 255\n    _to = 1461501637330902918203684832716283019655932542975\n    allowed[_from][msg.sender] = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test3692.sol:54:5: Warning: Integer Underflow.\n    string public name', u'source_code/test3692.sol:55:5: Warning: Integer Underflow.\n    string public symbol'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '83.7'}, u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'Ownable': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.5'}}}
