{u'source_code/test941.sol': {u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'System': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.4'}, u'Haltable': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '98.9'}, u'Tokens': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test941.sol:64:7: Warning: Integer Overflow.\n\t\tc = a + b\nInteger Overflow occurs if:\n    allowed[msg.sender][_spender] = 1\n    _addedValue = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test941.sol:361:2: Warning: Integer Underflow.\n\tstring public name', u'source_code/test941.sol:420:16: Warning: Integer Underflow.\n        return _totalSupply  - balances[address(0)]\nInteger Underflow occurs if:\n    _totalSupply = 0\n    balances[address(0)] = 1', u"source_code/test941.sol:364:2: Warning: Integer Underflow.\n\tstring public standard = 'H0.1'", u'source_code/test941.sol:362:2: Warning: Integer Underflow.\n\tstring public symbol'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '73.7'}, u'ComplianceService': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.1'}, u'Escrow': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test941.sol:64:7: Warning: Integer Overflow.\n\t\tc = a + b\nInteger Overflow occurs if:\n    deposited[this] = 1\n    _amount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    addressSCICO = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '86.6'}, u'HardcodedWallets': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.8'}}}
