{u'source_code/test104.sol': {u'PausableToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test104.sol:294:9: Warning: Integer Overflow.\n    c = a + b\nInteger Overflow occurs if:\n    _value = 37717208912933073374861050775867160511051478474789766132129094234564326678807\n    balances[_to] = 95515132405035013240498949941729301185179799140209929091396633094036584928231\n    allowed[_from][msg.sender] = 37717208912933073374861050775867160511051478474789766132129094234564326678807\n    balances[_from] = 37717208912933073374861050775867160511051478474789766132129094234564326678807\n    _to = 1461501637330902918203684832716283019655932542975\n    paused = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '96.2'}, u'BurnableToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test104.sol:294:9: Warning: Integer Overflow.\n    c = a + b\nInteger Overflow occurs if:\n    balances[_to] = 85653202831209899131921273706816539903532775246499202405936884825549521553152\n    balances[msg.sender] = 44369063854674067291029404066660873444229566625561754964912869797988903417852'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.8'}, u'LinkedList': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '98.3'}, u'RepublicToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test104.sol:294:9: Warning: Integer Overflow.\n    c = a + b\nInteger Overflow occurs if:\n    balances[_to] = 95515132405035013240498949941729301185179799140209929091396633094036584928231\n    allowed[_from][msg.sender] = 37717208912933073374861050775867160511051478474789766132129094234564326678807\n    balances[_from] = 37717208912933073374861050775867160511051478474789766132129094234564326678807\n    paused = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '97.2'}, u'StandardToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test104.sol:294:9: Warning: Integer Overflow.\n    c = a + b\nInteger Overflow occurs if:\n    _value = 37717208912933073374861050775867160511051478474789766132129094234564326678807\n    balances[_to] = 95515132405035013240498949941729301185179799140209929091396633094036584928231\n    allowed[_from][msg.sender] = 37717208912933073374861050775867160511051478474789766132129094234564326678807\n    balances[_from] = 37717208912933073374861050775867160511051478474789766132129094234564326678807\n    _to = 1461501637330902918203684832716283019655932542975'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.9'}, u'DarknodeRegistryStore': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test104.sol:228:16: Warning: Integer Overflow.\n        return self.list[node].next\nInteger Overflow occurs if:\n    owner = 0', u'source_code/test104.sol:757:9: Warning: Integer Overflow.\n        darknodeRegistry[darknodeID].deregisteredAt\nInteger Overflow occurs if:\n    owner = 0', u'source_code/test104.sol:767:16: Warning: Integer Overflow.\n        return darknodeRegistry[darknodeID].bond\nInteger Overflow occurs if:\n    owner = 0', u'source_code/test104.sol:772:16: Warning: Integer Overflow.\n        return darknodeRegistry[darknodeID].registeredAt\nInteger Overflow occurs if:\n    owner = 0', u'source_code/test104.sol:777:16: Warning: Integer Overflow.\n        return darknodeRegistry[darknodeID].deregisteredAt\nInteger Overflow occurs if:\n    owner = 0', u'source_code/test104.sol:714:36: Warning: Integer Overflow.\n        Darknode memory darknode = Darknode({\r\n        ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    owner = 0', u'source_code/test104.sol:782:16: Warning: Integer Overflow.\n        return darknodeRegistry[darknodeID].publicKey\nInteger Overflow occurs if:\n    owner = 0', u'source_code/test104.sol:211:16: Warning: Integer Overflow.\n        return self.list[NULL].next\nInteger Overflow occurs if:\n    owner = 0', u'source_code/test104.sol:739:24: Warning: Integer Overflow.\n        uint256 bond = darknodeRegistry[darknodeID].bond\nInteger Overflow occurs if:\n    owner = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test104.sol:646:5: Warning: Integer Underflow.\n    string public VERSION', u'source_code/test104.sol:782:9: Warning: Integer Underflow.\n        return darknodeRegistry[darknodeID].publicKey\nInteger Underflow occurs if:\n    return darknodeRegistry[darknodeID].publicKey = 1\n    owner = 0'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '53.8'}, u'Pausable': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.8'}, u'Ownable': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.7'}, u'BasicToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test104.sol:294:9: Warning: Integer Overflow.\n    c = a + b\nInteger Overflow occurs if:\n    balances[_to] = 85653202831209899131921273706816539903532775246499202405936884825549521553152\n    _value = 44369063854674067291029404066660873444229566625561754964912869797988903417852\n    balances[msg.sender] = 44369063854674067291029404066660873444229566625561754964912869797988903417852\n    _to = 1461501637330902918203684832716283019655932542975'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.6'}, u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}}}
