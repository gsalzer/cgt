{u'source_code/test3488.sol': {u'MayanProtocolContract': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3488.sol:139:5: Warning: Integer Overflow.\n    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {            \r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _extraData = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test3488.sol:113:16: Warning: Integer Underflow.\n        return totalSupply - totalRemainSupply\nInteger Underflow occurs if:\n    totalSupply = 0\n    totalRemainSupply = 1'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '87.9'}, u'Owned': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.4'}}}
