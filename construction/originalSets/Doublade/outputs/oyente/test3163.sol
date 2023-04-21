{u'source_code/test3163.sol': {u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'Array256Lib': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test3163.sol:371:21: Warning: Integer Underflow.\n        let high := sub(sload(self_slot),1)\nInteger Underflow occurs if:\n    isSorted = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test3163.sol:426:19: Warning: Integer Underflow.\n    uint256 end = self.length - 1\nInteger Underflow occurs if:\n    self.length = 0', u'source_code/test3163.sol:411:17: Warning: Integer Underflow.\n    uint256 i = index - 1\nInteger Underflow occurs if:\n    self.length = 1'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '45.9'}, u'BytesToTypes': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'StandardERC20': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3163.sol:1067:13: Warning: Integer Overflow.\n        c = a + b\nInteger Overflow occurs if:\n    _value = 37717208912933073374861050775867160511051478474789766132129094234564326678807\n    balances[_to] = 95515132405035013240498949941729301185179799140209929091396633094036584928231\n    allowed[_from][msg.sender] = 37717208912933073374861050775867160511051478474789766132129094234564326678807\n    balances[_from] = 37717208912933073374861050775867160511051478474789766132129094234564326678807\n    _to = 1461501637330902918203684832716283019655932542975'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.9'}, u'Token': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3163.sol:263:14: Warning: Integer Overflow.\n        emit Transfer(msg.sender, _to, _value)\nInteger Overflow occurs if:\n    balances[_owner] = 0\n    balances[_owner] = 0', u'source_code/test3163.sol:199:5: Warning: Integer Overflow.\n    function transfer(address _to, uint _value, bytes _data, string _custom_fallback) public returns (bool success) {\r\n    ^\nSpanning multiple lines.', u'source_code/test3163.sol:218:5: Warning: Integer Overflow.\n    function transfer(address _to, uint _value, bytes _data) public returns (bool success) {\r\n    ^\nSpanning multiple lines.', u'source_code/test3163.sol:274:14: Warning: Integer Overflow.\n        emit Transfer(msg.sender, _to, _value, _data)\nInteger Overflow occurs if:\n    balances[_owner] = 0\n    balances[_owner] = 0', u'source_code/test3163.sol:1067:13: Warning: Integer Overflow.\n        c = a + b\nInteger Overflow occurs if:\n    balances[_owner] = 85653202831209899131921273706816539903532775246499202405936884825549521553152\n    balances[_owner] = 44369063854674067291029404066660873444229566625561754964912869797988903417852'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test3163.sol:273:9: Warning: Integer Underflow.\n        receiver.tokenFallback(msg.sender, _value, _data)\nInteger Underflow occurs if:\n    balances[_owner] = 57708316987545430284972962432722433461275631024507511499337749237535229387519\n    balances[_owner] = 57896044622028126258963017302720060878078426875394666815987483437982071718400', u'source_code/test3163.sol:185:9: Warning: Integer Underflow.\n        return symbol\nInteger Underflow occurs if:\n    return symbol = 1', u'source_code/test3163.sol:180:9: Warning: Integer Underflow.\n        return name\nInteger Underflow occurs if:\n    return name = 1', u'source_code/test3163.sol:261:14: Warning: Integer Underflow.\n        emit Transfer(msg.sender, _to, _value, _data)\nInteger Underflow occurs if:\n    balances[_owner] = 56539106072908298546665520023773392479256895346307668715209354745838321534467\n    balances[_owner] = 10889035741492971443780633631954145376113'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '63.4'}, u'Seriality': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'SizeOf': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'TimedEscrow': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3163.sol:1350:9: Warning: Integer Overflow.\n        transactions[transaction_id].time\nInteger Overflow occurs if:\n    transactions[transaction_id].executed = 255\n    newtime = 0\n    transaction_id = 0\n    transactions[transaction_id].time = 1\n    transactions[transaction_id] = 1\n    owner = 0', u'source_code/test3163.sol:1336:5: Warning: Integer Overflow.\n    function tokenFallback(address _from, uint _value, bytes _data) public {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _data = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test3163.sol:1265:32: Warning: Integer Overflow.\n        Transaction memory t = transactions[transaction_id]\nInteger Overflow occurs if:\n    transaction_id = 7237005577332262213973186563042994240829374041602535252466099000494570602496\n    transactions[transaction_id] = 7237005577332262213973186563042994240829374041602535252466099000494570602497', u'source_code/test3163.sol:1350:9: Warning: Integer Overflow.\n        transactions[transaction_id]\nInteger Overflow occurs if:\n    transactions[transaction_id].executed = 128\n    transaction_id = 7237005577332262213973186563042994240829374041602535252466099000494570602496\n    newtime = 0\n    transactions[transaction_id].time = 1\n    transactions[transaction_id] = 7237005577332262213973186563042994240829374041602535252466099000494570602497\n    owner = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '52.4'}}}
