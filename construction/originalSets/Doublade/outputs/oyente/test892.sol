{u'source_code/test892.sol': {u'usingOraclize': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test892.sol:122:5: Warning: Integer Overflow.\n    function __callback(bytes32 myid, string result) {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    result = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test892.sol:125:5: Warning: Integer Overflow.\n    function __callback(bytes32 myid, string result, bytes proof) {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    result = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '40.6'}, u'DSSafeAddSub': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'strings': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'LuckyETH': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test892.sol:1930:5: Warning: Integer Overflow.\n    function __callback(bytes32 myid, string result, bytes proof) public   \r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    result = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test892.sol:122:5: Warning: Integer Overflow.\n    function __callback(bytes32 myid, string result) {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    result = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test892.sol:1874:5: Warning: Integer Overflow.\n    function encrypt(string _v) public view returns (string) {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _v = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test892.sol:1891:30: Warning: Integer Underflow.\n        string memory pre1 = strConcat(queryUrl, encrypt(toAsciiString(msg.sender)), "_", encrypt(uint2str(msg.value)), "&max=")\nInteger Underflow occurs if:\n    rollTimes = 4\n    minBet = 0\n    gamePaused = 0', u'source_code/test892.sol:1866:9: Warning: Integer Underflow.\n        bytes memory cfrom = bytes(cryptoFrom)\nInteger Underflow occurs if:\n    owner = 0', u'source_code/test892.sol:1914:30: Warning: Integer Underflow.\n        string memory pre1 = strConcat(queryUrl, encrypt(toAsciiString(msg.sender)), "_", encrypt(uint2str(msg.value)), "&max=")\nInteger Underflow occurs if:\n    rollTimes = 4\n    minBet = 0\n    gamePaused = 0', u'source_code/test892.sol:1764:1: Warning: Integer Underflow.\ncontract LuckyETH is usingOraclize, DSSafeAddSub {\r\n^\nSpanning multiple lines.\nInteger Underflow occurs if:\n    OAR = 0\n    owner = 0'], 'money_concurrency': [[u'source_code/test892.sol:2052:13: Warning: Transaction-Ordering Dependency.\n        if(!sendTo.send(amount)'], [u'source_code/test892.sol:2013:13: Warning: Transaction-Ordering Dependency.\n        if (msg.sender.call.value(withdrawAmount)()']], 'assertion_failure': []}, 'evm_code_coverage': '29.2'}}}
