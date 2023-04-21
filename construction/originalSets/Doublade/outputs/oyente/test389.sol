{u'source_code/test389.sol': {u'Hold': {'vulnerabilities': {'callstack': [], 'time_dependency': [u'source_code/test389.sol:531:9: Warning: Timestamp Dependency.\n        require(now > dateDeployed + 183 days)'], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '69.9'}, u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'UnityToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test389.sol:372:3: Warning: Integer Overflow.\n  function transfer(address _to, uint _value) public returns (bool success) {\r\n  ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    balances[_to] = 0\n    _value = 0\n    balances[_owner] = 0', u'source_code/test389.sol:361:3: Warning: Integer Overflow.\n  function transfer(address _to, uint _value, bytes _data) public returns (bool success) {\r\n  ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _data = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test389.sol:413:5: Warning: Integer Overflow.\n    TransferContract(msg.sender, _to, _value, _data)\nInteger Overflow occurs if:\n    balances[_to] = 0\n    _value = 0\n    balances[_owner] = 0\n    allowedAddresses[_to] = 255', u'source_code/test389.sol:342:3: Warning: Integer Overflow.\n  function transfer(address _to, uint _value, bytes _data, string _custom_fallback) public returns (bool success) {\r\n  ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _data = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test389.sol:234:17: Warning: Integer Overflow.\n    uint256 c = a + b\nInteger Overflow occurs if:\n    balances[_to] = 85653202831209899131921273706816539903532775246499202405936884825549521553152\n    _value = 44369063854674067291029404066660873444229566625561754964912869797988903417852\n    balances[_owner] = 44369063854674067291029404066660873444229566625561754964912869797988903417852'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test389.sol:400:5: Warning: Integer Underflow.\n    Transfer(msg.sender, _to, _value, _data)\nInteger Underflow occurs if:\n    balances[_to] = 56539106072908298546665520023773392479256895346307668715209354745838321534467\n    _value = 10889035741492971443780633631954145376113\n    balances[_owner] = 10889035741492971443780633631954145376113', u'source_code/test389.sol:412:5: Warning: Integer Underflow.\n    receiver.tokenFallback(msg.sender, _value, _data)\nInteger Underflow occurs if:\n    balances[_to] = 57708316987545430284972962432722433461275631024507511499337749237535229387519\n    _value = 57896044622028126258963017302720060878078426875394666815987483437982071718400\n    balances[_owner] = 57896044622028126258963017302720060878078426875394666815987483437982071718400\n    allowedAddresses[_to] = 255'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '67.8'}, u'Ownable': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.5'}, u'ERC223ReceivingContract': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test389.sol:260:3: Warning: Integer Overflow.\n  function tokenFallback(address _from, uint _value, bytes _data) public pure {\r\n  ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _data = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '24.3'}, u'Registry': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test389.sol:122:9: Warning: Integer Overflow.\n        contributorList[_contributor].quoteUSD\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 0', u'source_code/test389.sol:120:9: Warning: Integer Overflow.\n        contributorList[_contributor].contributionUSD\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 0', u'source_code/test389.sol:162:14: Warning: Integer Overflow.\n      return contributorList[_contributor].contributionUSD', u'source_code/test389.sol:180:7: Warning: Integer Overflow.\n      contributorList[_contributor].contributionETH\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:121:9: Warning: Integer Overflow.\n        contributorList[_contributor].tokensIssued\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 0', u'source_code/test389.sol:140:9: Warning: Integer Overflow.\n        contributorList[_contributor].quoteUSD\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:158:14: Warning: Integer Overflow.\n      return contributorList[_contributor].contributionETH', u'source_code/test389.sol:142:177: Warning: Integer Overflow.\n     ContributionEdited(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 0', u'source_code/test389.sol:119:9: Warning: Integer Overflow.\n        contributorList[_contributor].contributionETH\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 0', u'source_code/test389.sol:176:9: Warning: Integer Overflow.\n        contributorList[_contributor].contributionRNTB\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 0', u'source_code/test389.sol:149:5: Warning: Integer Overflow.\n    contributorList[_contributor].tokensIssued', u'source_code/test389.sol:76:3: Warning: Integer Overflow.\n  mapping(address => ContributorData) public contributorList', u'source_code/test389.sol:127:7: Warning: Integer Overflow.\n      contributorList[_contributor].contributionETH += _amount\nInteger Overflow occurs if:\n    contributorList[_contributor].contributionETH = 1\n    _amount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:142:133: Warning: Integer Overflow.\n     ContributionEdited(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 0', u'source_code/test389.sol:153:175: Warning: Integer Overflow.\n    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD', u'source_code/test389.sol:153:37: Warning: Integer Overflow.\n    ContributionAdded(_contributor, contributorList[_contributor].contributionETH', u'source_code/test389.sol:125:9: Warning: Integer Overflow.\n        nextContributorIndex++\nInteger Overflow occurs if:\n    nextContributorIndex = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    contributorList[_contributor].isActive = 0', u'source_code/test389.sol:178:9: Warning: Integer Overflow.\n        nextContributorIndex++\nInteger Overflow occurs if:\n    nextContributorIndex = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    contributorList[_contributor].isActive = 0', u'source_code/test389.sol:166:14: Warning: Integer Overflow.\n      return contributorList[_contributor].contributionRNTB', u'source_code/test389.sol:127:7: Warning: Integer Overflow.\n      contributorList[_contributor].contributionETH\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:152:5: Warning: Integer Overflow.\n    nextContributorIndex++\nInteger Overflow occurs if:\n    nextContributorIndex = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test389.sol:128:7: Warning: Integer Overflow.\n      contributorList[_contributor].contributionUSD += _amusd\nInteger Overflow occurs if:\n    contributorList[_contributor].contributionUSD = 1\n    _amusd = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:142:86: Warning: Integer Overflow.\n     ContributionEdited(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 0', u'source_code/test389.sol:153:131: Warning: Integer Overflow.\n    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued', u'source_code/test389.sol:137:9: Warning: Integer Overflow.\n        contributorList[_contributor].contributionETH\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:129:7: Warning: Integer Overflow.\n      contributorList[_contributor].tokensIssued += _tokens\nInteger Overflow occurs if:\n    contributorList[_contributor].tokensIssued = 1\n    _tokens = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:132:131: Warning: Integer Overflow.\n    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:132:37: Warning: Integer Overflow.\n    ContributionAdded(_contributor, contributorList[_contributor].contributionETH\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:128:7: Warning: Integer Overflow.\n      contributorList[_contributor].contributionUSD\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:147:5: Warning: Integer Overflow.\n    contributorList[_contributor].contributionETH', u'source_code/test389.sol:132:84: Warning: Integer Overflow.\n    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:170:14: Warning: Integer Overflow.\n      return contributorList[_contributor].tokensIssued', u'source_code/test389.sol:139:9: Warning: Integer Overflow.\n        contributorList[_contributor].tokensIssued\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:130:7: Warning: Integer Overflow.\n      contributorList[_contributor].quoteUSD\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:129:7: Warning: Integer Overflow.\n      contributorList[_contributor].tokensIssued\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:180:7: Warning: Integer Overflow.\n      contributorList[_contributor].contributionETH += _amount\nInteger Overflow occurs if:\n    contributorList[_contributor].contributionETH = 1\n    _amount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:153:84: Warning: Integer Overflow.\n    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD', u'source_code/test389.sol:150:5: Warning: Integer Overflow.\n    contributorList[_contributor].quoteUSD', u'source_code/test389.sol:142:39: Warning: Integer Overflow.\n     ContributionEdited(_contributor, contributorList[_contributor].contributionETH\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 0', u'source_code/test389.sol:138:9: Warning: Integer Overflow.\n        contributorList[_contributor].contributionUSD\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255', u'source_code/test389.sol:148:5: Warning: Integer Overflow.\n    contributorList[_contributor].contributionUSD', u'source_code/test389.sol:132:175: Warning: Integer Overflow.\n    ContributionAdded(_contributor, contributorList[_contributor].contributionETH, contributorList[_contributor].contributionUSD, contributorList[_contributor].tokensIssued, contributorList[_contributor].quoteUSD\nInteger Overflow occurs if:\n    contributorList[_contributor].isActive = 255'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '98.3'}, u'PermissionManager': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.8'}}}
