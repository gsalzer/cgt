{u'source_code/test3616.sol': {u'usingOraclize': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3616.sol:109:5: Warning: Integer Overflow.\n    function __callback(bytes32 myid, string result, bytes proof) {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    result = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test3616.sol:106:5: Warning: Integer Overflow.\n    function __callback(bytes32 myid, string result) {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    result = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '40.6'}, u'DSSafeAddSub': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'strings': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'Etheroll': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3616.sol:1238:17: Warning: Integer Overflow.\n        return (a + b\nInteger Overflow occurs if:\n    contractBalance = 1\n    treasury = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '1.2'}}}
