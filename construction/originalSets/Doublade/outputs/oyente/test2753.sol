{u'source_code/test2753.sol': {u'BdpOwnership': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '0/0'}, u'BdpCalculator': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test2753.sol:655:27: Warning: Integer Overflow.\n\t\tvar pricePointsLength = BdpPriceStorage(BdpContracts.getBdpPriceStorage(_contracts)).getPricePointsLength()', u'source_code/test2753.sol:678:2: Warning: Integer Overflow.\n\tfunction calculateRegionSalePixelPrice(address[16] _contracts, uint256 _regionId) view public returns (uint256) {\r\n\t^\nSpanning multiple lines.'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test2753.sol:656:40: Warning: Integer Underflow.\n\t\tuint mod = _pixelsSold % (1000000 / (pricePointsLength - 1'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '59.8'}, u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'BdpBaseData': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.7'}, u'BdpContracts': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'BdpCrud': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '0/0'}, u'BdpBase': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '94.5'}, u'BdpDataStorage': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test2753.sol:223:3: Warning: Integer Overflow.\n\t\tdata[_id].url\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:211:10: Warning: Integer Overflow.\n\t\treturn data[_id].nextImageId', u'source_code/test2753.sol:227:10: Warning: Integer Overflow.\n\t\treturn data[_id].currentPixelPrice', u'source_code/test2753.sol:175:2: Warning: Integer Overflow.\n\tmapping (uint256 => Region) public data', u'source_code/test2753.sol:267:3: Warning: Integer Overflow.\n\t\tdata[_id].purchasedPixelPrice\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:192:53: Warning: Integer Overflow.\n\t\treturn (data[_id].x1, data[_id].y1, data[_id].x2, data[_id].y2', u'source_code/test2753.sol:199:3: Warning: Integer Overflow.\n\t\tdata[_id].y2\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:259:32: Warning: Integer Overflow.\n\t\treturn (data[_id].updatedAt, data[_id].purchasedAt', u'source_code/test2753.sol:198:3: Warning: Integer Overflow.\n\t\tdata[_id].x2\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:215:3: Warning: Integer Overflow.\n\t\tdata[_id].nextImageId\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:255:3: Warning: Integer Overflow.\n\t\tdata[_id].purchasedAt\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:197:3: Warning: Integer Overflow.\n\t\tdata[_id].y1\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:207:3: Warning: Integer Overflow.\n\t\tdata[_id].currentImageId\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:243:10: Warning: Integer Overflow.\n\t\treturn data[_id].updatedAt', u'source_code/test2753.sol:203:10: Warning: Integer Overflow.\n\t\treturn data[_id].currentImageId', u'source_code/test2753.sol:259:11: Warning: Integer Overflow.\n\t\treturn (data[_id].updatedAt', u'source_code/test2753.sol:251:10: Warning: Integer Overflow.\n\t\treturn data[_id].purchasedAt', u'source_code/test2753.sol:192:25: Warning: Integer Overflow.\n\t\treturn (data[_id].x1, data[_id].y1', u'source_code/test2753.sol:239:3: Warning: Integer Overflow.\n\t\tdata[_id].blockUpdatedAt\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:247:3: Warning: Integer Overflow.\n\t\tdata[_id].updatedAt\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:219:10: Warning: Integer Overflow.\n\t\treturn data[_id].url', u'source_code/test2753.sol:192:39: Warning: Integer Overflow.\n\t\treturn (data[_id].x1, data[_id].y1, data[_id].x2', u'source_code/test2753.sol:231:3: Warning: Integer Overflow.\n\t\tdata[_id].currentPixelPrice\nInteger Overflow occurs if:\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:235:10: Warning: Integer Overflow.\n\t\treturn data[_id].blockUpdatedAt', u'source_code/test2753.sol:263:10: Warning: Integer Overflow.\n\t\treturn data[_id].purchasedPixelPrice'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '89.0'}, u'BdpImage': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '0/0'}, u'BdpOwnershipStorage': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test2753.sol:449:1: Warning: Integer Overflow.\ncontract BdpOwnershipStorage is BdpBase {\r\n^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    tokenIds.length = 115792089237316195423570985008687907853269984665640564039457584007878769901566\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:148:17: Warning: Integer Overflow.\n    uint256 c = a + b\nInteger Overflow occurs if:\n    ownedArea[_owner] = 1\n    _area = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    ownerAddress = 0\n    setupComplete = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test2753.sol:527:3: Warning: Integer Underflow.\n\t\townedTokens[_owner].length--\nInteger Underflow occurs if:\n    ownedTokens[_owner].length = 0\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:556:3: Warning: Integer Underflow.\n\t\ttokenIds.length--\nInteger Underflow occurs if:\n    tokenIds.length = 0\n    ownerAddress = 0\n    setupComplete = 0'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '90.6'}, u'BdpImageStorage': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test2753.sol:424:10: Warning: Integer Overflow.\n\t\treturn images[_imageId].blurredAt', u'source_code/test2753.sol:390:3: Warning: Integer Overflow.\n\t\timages[_imageId].partsCount\nInteger Overflow occurs if:\n    images[_imageId].owner = 1461501637330902918203684832716283019655932542975\n    _imageId = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    ownerAddress = 0\n    setupComplete = 0', u'source_code/test2753.sol:420:3: Warning: Integer Overflow.\n\t\timages[_imageId].imageDescriptor\nInteger Overflow occurs if:\n    images[_imageId].owner = 1461501637330902918203684832716283019655932542975\n    _imageId = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    ownerAddress = 0\n    setupComplete = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '17.7'}, u'BdpPriceStorage': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test2753.sol:594:2: Warning: Integer Overflow.\n\tfunction setPricePoints(uint64[] _pricePoints) public storageAccessControl {\r\n\t^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _pricePoints = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test2753.sol:599:2: Warning: Integer Overflow.\n\tfunction appendPricePoints(uint64[] _pricePoints) public storageAccessControl {\r\n\t^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _pricePoints = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '75.7'}}}
