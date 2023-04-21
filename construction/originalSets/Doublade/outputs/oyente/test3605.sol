{u'source_code/test3605.sol': {u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'PowerOfPutin': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3605.sol:181:5: Warning: Integer Overflow.\n    function airdrop(address[] addresses) onlyOwner canDistr public {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    addresses = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test3605.sol:75:17: Warning: Integer Overflow.\n    uint256 c = a + b\nInteger Overflow occurs if:\n    value = 44369063854674067291029404066660873444229566625561754964912869797988903417852\n    totalDistributed = 85653202831209899131921273706816539903532775246499202405936884825549521553152\n    totalRemaining = 44369063854674067291029404066660873444229566625561754964912869797988903417852\n    distributionFinished = 0', u'source_code/test3605.sol:211:5: Warning: Integer Overflow.\n    function distributeAmounts(address[] addresses, uint256[] amounts) onlyOwner canDistr public {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    addresses = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test3605.sol:196:5: Warning: Integer Overflow.\n    function distribution(address[] addresses, uint256 amount) onlyOwner canDistr public {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    addresses = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '72.3'}}}
