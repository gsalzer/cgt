{u'source_code/test2761.sol': {u'BdpBase': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '94.5'}, u'BdpDataStorage': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test2761.sol:187:25: Warning: Integer Overflow.\n\t\treturn (data[_id].x1, data[_id].y1', u'source_code/test2761.sol:187:39: Warning: Integer Overflow.\n\t\treturn (data[_id].x1, data[_id].y1, data[_id].x2', u'source_code/test2761.sol:242:3: Warning: Integer Overflow.\n\t\tdata[_id].updatedAt\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2761.sol:226:3: Warning: Integer Overflow.\n\t\tdata[_id].currentPixelPrice\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2761.sol:218:3: Warning: Integer Overflow.\n\t\tdata[_id].url\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2761.sol:238:10: Warning: Integer Overflow.\n\t\treturn data[_id].updatedAt', u'source_code/test2761.sol:250:3: Warning: Integer Overflow.\n\t\tdata[_id].purchasedAt\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2761.sol:246:10: Warning: Integer Overflow.\n\t\treturn data[_id].purchasedAt', u'source_code/test2761.sol:170:2: Warning: Integer Overflow.\n\tmapping (uint256 => Region) public data', u'source_code/test2761.sol:202:3: Warning: Integer Overflow.\n\t\tdata[_id].currentImageId\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2761.sol:192:3: Warning: Integer Overflow.\n\t\tdata[_id].y1\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2761.sol:193:3: Warning: Integer Overflow.\n\t\tdata[_id].x2\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2761.sol:198:10: Warning: Integer Overflow.\n\t\treturn data[_id].currentImageId', u'source_code/test2761.sol:194:3: Warning: Integer Overflow.\n\t\tdata[_id].y2\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2761.sol:206:10: Warning: Integer Overflow.\n\t\treturn data[_id].nextImageId', u'source_code/test2761.sol:230:10: Warning: Integer Overflow.\n\t\treturn data[_id].blockUpdatedAt', u'source_code/test2761.sol:258:10: Warning: Integer Overflow.\n\t\treturn data[_id].purchasedPixelPrice', u'source_code/test2761.sol:262:3: Warning: Integer Overflow.\n\t\tdata[_id].purchasedPixelPrice\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2761.sol:254:32: Warning: Integer Overflow.\n\t\treturn (data[_id].updatedAt, data[_id].purchasedAt', u'source_code/test2761.sol:234:3: Warning: Integer Overflow.\n\t\tdata[_id].blockUpdatedAt\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2761.sol:210:3: Warning: Integer Overflow.\n\t\tdata[_id].nextImageId\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2761.sol:254:11: Warning: Integer Overflow.\n\t\treturn (data[_id].updatedAt', u'source_code/test2761.sol:222:10: Warning: Integer Overflow.\n\t\treturn data[_id].currentPixelPrice', u'source_code/test2761.sol:187:53: Warning: Integer Overflow.\n\t\treturn (data[_id].x1, data[_id].y1, data[_id].x2, data[_id].y2', u'source_code/test2761.sol:214:10: Warning: Integer Overflow.\n\t\treturn data[_id].url'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '89.0'}, u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'BdpBaseData': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.7'}, u'BdpContracts': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}}}
