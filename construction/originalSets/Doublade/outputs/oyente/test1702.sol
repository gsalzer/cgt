{u'source_code/test1702.sol': {u'MyAdvancedToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1702.sol:119:5: Warning: Integer Overflow.\n    function approveAndCall(address _spender, uint256 _value, bytes _extraData)\r\n    ^\nSpanning multiple lines.', u'source_code/test1702.sol:162:9: Warning: Integer Overflow.\n        balanceOf[target] += mintedAmount\nInteger Overflow occurs if:\n    balanceOf[target] = 1\n    mintedAmount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    owner = 0', u'source_code/test1702.sol:163:9: Warning: Integer Overflow.\n        totalSupply += mintedAmount\nInteger Overflow occurs if:\n    totalSupply = 1\n    mintedAmount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    owner = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test1702.sol:24:5: Warning: Integer Underflow.\n    string public symbol', u'source_code/test1702.sol:23:5: Warning: Integer Underflow.\n    string public name'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '68.3'}, u'owned': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.4'}, u'AngelChain30': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1702.sol:119:5: Warning: Integer Overflow.\n    function approveAndCall(address _spender, uint256 _value, bytes _extraData)\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _extraData = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test1702.sol:24:5: Warning: Integer Underflow.\n    string public symbol', u'source_code/test1702.sol:23:5: Warning: Integer Underflow.\n    string public name'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '51.3'}}}
