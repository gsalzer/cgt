{u'source_code/test1647.sol': {u'StandardToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1647.sol:102:21: Warning: Integer Overflow.\n        uint256 c = a + b\nInteger Overflow occurs if:\n    balances[_to] = 1'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.9'}, u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'MintableToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1647.sol:102:21: Warning: Integer Overflow.\n        uint256 c = a + b\nInteger Overflow occurs if:\n    balances[_to] = 1'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '95.0'}, u'Pausable': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.8'}, u'Ownable': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.4'}, u'StrikeTokenCrowdsale': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1647.sol:608:5: Warning: Integer Overflow.\n    function bulkGrantTokenCommonPool(address [] beneficiaries,uint256 [] granttokencounts) public onlyOwner{\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    beneficiaries = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '37.7'}, u'BasicToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1647.sol:102:21: Warning: Integer Overflow.\n        uint256 c = a + b\nInteger Overflow occurs if:\n    balances[_to] = 85653202831209899131921273706816539903532775246499202405936884825549521553152\n    _value = 44369063854674067291029404066660873444229566625561754964912869797988903417852\n    balances[msg.sender] = 44369063854674067291029404066660873444229566625561754964912869797988903417852'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.8'}, u'BlockableToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.8'}, u'StrikeToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1647.sol:317:13: Warning: Integer Overflow.\n            theList[whom] = XRec(false,0x0,0x0,0)\nInteger Overflow occurs if:\n    balances[_to] = 0\n    first = 0\n    theList[whom].inList = 255\n    allowed[_from][msg.sender] = 0\n    blockedAddresses[msg.sender] = 0\n    paused = 0\n    balances[_from] = 0', u'source_code/test1647.sol:321:24: Warning: Integer Overflow.\n        address prev = theList[whom].prev\nInteger Overflow occurs if:\n    balances[_to] = 0\n    first = 1461501637330902918203684832716283019655932542975\n    theList[whom].inList = 255\n    allowed[_from][msg.sender] = 0\n    blockedAddresses[msg.sender] = 0\n    paused = 0\n    balances[_from] = 0', u'source_code/test1647.sol:328:9: Warning: Integer Overflow.\n        theList[whom] =XRec(false,0x0,0x0,0)\nInteger Overflow occurs if:\n    theList[whom].inList = 128\n    balances[_to] = 9671406556917033397649408\n    theList[whom].prev = 0\n    first = 1461501637330902918203684832716283019655932542975\n    allowed[_from][msg.sender] = 0\n    blockedAddresses[msg.sender] = 0\n    paused = 0\n    balances[_from] = 0', u'source_code/test1647.sol:337:17: Warning: Integer Overflow.\n                theList[whom].val\nInteger Overflow occurs if:\n    balances[msg.sender] = 57896044726708508963725166057394559594760579255906496967348798980412752789502\n    _value = 108374884552924200347260254178471671578802303901264735013281797767165\n    balances[_to] = 395605782569434035026604698797701227182884369773461629671369915357483499522\n    theList[whom].inList = 255\n    blockedAddresses[msg.sender] = 0\n    paused = 0', u'source_code/test1647.sol:298:5: Warning: Integer Overflow.\n    mapping (address => XRec) public theList', u'source_code/test1647.sol:326:13: Warning: Integer Overflow.\n            theList[next].prev\nInteger Overflow occurs if:\n    theList[whom].inList = 2658455991569831745807614120560689184\n    balances[_to] = 34359874868745240057406386496947536377297079342540161878590875761347544692928\n    theList[whom].prev = 0\n    first = 1461501637330902918203684832716283019655932542975\n    allowed[_from][msg.sender] = 59252983164407896876905464984914515346790499965620757379566185584142307277546\n    blockedAddresses[msg.sender] = 0\n    paused = 0\n    balances[_from] = 59252983164407896876905464984914515346790499965620757379566185584142307277546', u'source_code/test1647.sol:102:21: Warning: Integer Overflow.\n        uint256 c = a + b\nInteger Overflow occurs if:\n    balances[_to] = 1\n    blockedAddresses[msg.sender] = 0\n    paused = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test1647.sol:277:5: Warning: Integer Underflow.\n    string public name = "Dimensions Strike Token"', u'source_code/test1647.sol:278:5: Warning: Integer Underflow.\n    string public symbol = "DST"'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '74.4'}}}
