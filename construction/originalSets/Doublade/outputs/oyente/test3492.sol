{u'source_code/test3492.sol': {u'BancorChanger': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3492.sol:650:29: Warning: Integer Overflow.\n        totalReserveRatio = totalReserveRatio - reserve.ratio + _ratio\nInteger Overflow occurs if:\n    _ratio = 88981\n    reserves[_address].isSet = 9007199263129728\n    totalReserveRatio = 8388509\n    owner = 0', u'source_code/test3492.sol:384:1: Warning: Integer Overflow.\ncontract BancorChanger is ITokenChanger, SmartTokenController, Managed {\r\n^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    owner = 0', u'source_code/test3492.sol:526:5: Warning: Integer Overflow.\n    function setQuickBuyPath(IERC20Token[] _path)\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _path = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test3492.sol:650:49: Warning: Integer Overflow.\n        totalReserveRatio = totalReserveRatio - reserve.ratio\nInteger Overflow occurs if:\n    _ratio = 16384\n    reserves[_address].isSet = 36028797027352608\n    totalReserveRatio = 8961136\n    owner = 0', u'source_code/test3492.sol:669:9: Warning: Integer Overflow.\n        reserves[_reserveToken].isPurchaseEnabled\nInteger Overflow occurs if:\n    reserves[_address].isSet = 71776119061217280\n    owner = 0', u'source_code/test3492.sol:402:5: Warning: Integer Overflow.\n    mapping (address => Reserve) public reserves', u'source_code/test3492.sol:862:5: Warning: Integer Overflow.\n    function quickChange(IERC20Token[] _path, uint256 _amount, uint256 _minReturn)\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _path = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test3492.sol:652:9: Warning: Integer Overflow.\n        reserve.isVirtualBalanceEnabled\nInteger Overflow occurs if:\n    _ratio = 16384\n    reserves[_address].isSet = 36028797027352608\n    totalReserveRatio = 8961136\n    owner = 0', u'source_code/test3492.sol:651:9: Warning: Integer Overflow.\n        reserve.ratio\nInteger Overflow occurs if:\n    _ratio = 16384\n    reserves[_address].isSet = 36028797027352608\n    totalReserveRatio = 8961136\n    owner = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [u"source_code/test3492.sol:397:5: Warning: Integer Underflow.\n    string public changerType = 'bancor'", u'source_code/test3492.sol:650:29: Warning: Integer Underflow.\n        totalReserveRatio = totalReserveRatio - reserve.ratio\nInteger Underflow occurs if:\n    _ratio = 524090\n    reserves[_address].isSet = 281476066704896\n    totalReserveRatio = 1089863934\n    owner = 0', u"source_code/test3492.sol:396:5: Warning: Integer Underflow.\n    string public version = '0.2'"], 'money_concurrency': [[u'source_code/test3492.sol:920:9: Warning: Transaction-Ordering Dependency.\n        etherToken.deposit.value(msg.value)()'], [u'source_code/test3492.sol:920:9: Warning: Transaction-Ordering Dependency.\n        etherToken.deposit.value(msg.value)()']], 'assertion_failure': []}, 'evm_code_coverage': '48.0'}, u'BancorLender': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test3492.sol:1081:26: Warning: Integer Overflow.\n    assert(msg.sender == agreements[_index]\nInteger Overflow occurs if:\n    _index = 19298681539552699258185503286070253854997628854965648752103403391503744456022\n    agreements[_index].tokenAmount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    agreements[_index] = 19298681539552699258185503286070253854997628854965648752103403391503744456023', u'source_code/test3492.sol:1078:12: Warning: Integer Overflow.\n    assert(agreements[_index].tokenAmount\nInteger Overflow occurs if:\n    _index = 0\n    agreements[_index] = 1', u'source_code/test3492.sol:1082:5: Warning: Integer Overflow.\n    agreements[_index].collateralAmount\nInteger Overflow occurs if:\n    _index = 0\n    agreements[_index].borrower = 0\n    agreements[_index].tokenAmount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    agreements[_index] = 1', u'source_code/test3492.sol:1037:3: Warning: Integer Overflow.\n  BorrowAgreement[] public agreements', u'source_code/test3492.sol:1078:12: Warning: Integer Overflow.\n    assert(agreements[_index]\nInteger Overflow occurs if:\n    _index = 19298681539552699258185503286070253854997628854965648752103403391503744456022\n    agreements[_index] = 19298681539552699258185503286070253854997628854965648752103403391503744456023', u'source_code/test3492.sol:1082:5: Warning: Integer Overflow.\n    agreements[_index].collateralAmount += msg.value\nInteger Overflow occurs if:\n    _index = 0\n    agreements[_index].collateralAmount = 1\n    agreements[_index].borrower = 0\n    agreements[_index].tokenAmount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    agreements[_index] = 1', u'source_code/test3492.sol:1081:26: Warning: Integer Overflow.\n    assert(msg.sender == agreements[_index].borrower\nInteger Overflow occurs if:\n    _index = 0\n    agreements[_index].tokenAmount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    agreements[_index] = 1', u'source_code/test3492.sol:1082:5: Warning: Integer Overflow.\n    agreements[_index]\nInteger Overflow occurs if:\n    _index = 19298681539552699258185503286070253854997628854965648752103403391503744456022\n    agreements[_index].borrower = 0\n    agreements[_index].tokenAmount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    agreements[_index] = 19298681539552699258185503286070253854997628854965648752103403391503744456023'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '48.5'}, u'Managed': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.8'}, u'SmartTokenController': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '95.0'}, u'Utils': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'Owned': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.8'}, u'TokenHolder': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '94.4'}}}
