{u'source_code/test3733.sol': {u'TokenBase': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3733.sol:69:5: Warning: Integer Overflow.\n    function approveAndCall(address _spender, uint _value, bytes _extraData) public returns (bool success) {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _extraData = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test3733.sol:26:5: Warning: Integer Underflow.\n    string public symbol', u'source_code/test3733.sol:25:5: Warning: Integer Underflow.\n    string public name'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '57.8'}, u'Token': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3733.sol:69:5: Warning: Integer Overflow.\n    function approveAndCall(address _spender, uint _value, bytes _extraData) public returns (bool success) {\r\n    ^\nSpanning multiple lines.'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test3733.sol:26:5: Warning: Integer Underflow.\n    string public symbol', u'source_code/test3733.sol:25:5: Warning: Integer Underflow.\n    string public name'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '59.0'}, u'Owned': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.4'}}}
