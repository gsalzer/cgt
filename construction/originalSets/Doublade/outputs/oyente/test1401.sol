{u'source_code/test1401.sol': {u'MultiSendEth': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1401.sol:10:5: Warning: Integer Overflow.\n    function sendEth(address[] dests, uint256[] values) public payable {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    dests = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '37.1'}}}
