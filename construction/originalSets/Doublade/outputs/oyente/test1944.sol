{u'source_code/test1944.sol': {u'GNR': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1944.sol:820:20: Warning: Integer Overflow.\n      date = max64(grants[holder][i].vesting\nInteger Overflow occurs if:\n    grants[_holder].length = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test1944.sol:338:5: Warning: Integer Overflow.\n    function approveAndCall(address _spender, uint256 _amount, bytes _extraData\r\n    ^\nSpanning multiple lines.', u'source_code/test1944.sol:748:13: Warning: Integer Overflow.\n    value = grant.value\nInteger Overflow occurs if:\n    grants[_holder][_grantId] = 1', u'source_code/test1944.sol:751:15: Warning: Integer Overflow.\n    vesting = grant.vesting\nInteger Overflow occurs if:\n    grants[_holder][_grantId] = 1', u'source_code/test1944.sol:437:5: Warning: Integer Overflow.\n    function createCloneToken(\r\n    ^\nSpanning multiple lines.', u'source_code/test1944.sol:653:3: Warning: Integer Overflow.\n  mapping (address => TokenGrant[]) public grants', u'source_code/test1944.sol:745:32: Warning: Integer Overflow.\n    TokenGrant storage grant = grants[_holder][_grantId]\nInteger Overflow occurs if:\n    grants[_holder][_grantId] = 115792089237316195423570985008687907853269984665640564039457575000713874898944', u'source_code/test1944.sol:749:13: Warning: Integer Overflow.\n    start = grant.start\nInteger Overflow occurs if:\n    grants[_holder][_grantId] = 1', u'source_code/test1944.sol:820:20: Warning: Integer Overflow.\n      date = max64(grants[holder][i]\nInteger Overflow occurs if:\n    grants[_holder].length = 115791205813783806231406193359937536394012070923692126229978523204812483330047\n    grants[holder][i].vesting = 0', u'source_code/test1944.sol:750:13: Warning: Integer Overflow.\n    cliff = grant.cliff\nInteger Overflow occurs if:\n    grants[_holder][_grantId] = 1'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test1944.sol:119:5: Warning: Integer Underflow.\n    string public symbol', u"source_code/test1944.sol:120:5: Warning: Integer Underflow.\n    string public version = 'MMT_0.1'", u'source_code/test1944.sol:117:5: Warning: Integer Underflow.\n    string public name'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '50.7'}, u'MiniMeToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1944.sol:338:5: Warning: Integer Overflow.\n    function approveAndCall(address _spender, uint256 _amount, bytes _extraData\r\n    ^\nSpanning multiple lines.', u'source_code/test1944.sol:437:5: Warning: Integer Overflow.\n    function createCloneToken(\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _cloneTokenName = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test1944.sol:119:5: Warning: Integer Underflow.\n    string public symbol', u"source_code/test1944.sol:120:5: Warning: Integer Underflow.\n    string public version = 'MMT_0.1'", u'source_code/test1944.sol:117:5: Warning: Integer Underflow.\n    string public name'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '56.4'}, u'MiniMeTokenFactory': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1944.sol:609:5: Warning: Integer Overflow.\n    function createCloneToken(\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _tokenName = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '1.4'}, u'Controlled': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.4'}, u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}, u'MiniMeIrrevocableVestedToken': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1944.sol:820:20: Warning: Integer Overflow.\n      date = max64(grants[holder][i].vesting\nInteger Overflow occurs if:\n    grants[_holder].length = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test1944.sol:748:13: Warning: Integer Overflow.\n    value = grant.value\nInteger Overflow occurs if:\n    _grantId = 0\n    grants[_holder][_grantId] = 1', u'source_code/test1944.sol:751:15: Warning: Integer Overflow.\n    vesting = grant.vesting\nInteger Overflow occurs if:\n    _grantId = 0\n    grants[_holder][_grantId] = 1', u'source_code/test1944.sol:437:5: Warning: Integer Overflow.\n    function createCloneToken(\r\n    ^\nSpanning multiple lines.', u'source_code/test1944.sol:653:3: Warning: Integer Overflow.\n  mapping (address => TokenGrant[]) public grants', u'source_code/test1944.sol:745:32: Warning: Integer Overflow.\n    TokenGrant storage grant = grants[_holder][_grantId]\nInteger Overflow occurs if:\n    _grantId = 115792089237316195423570985008687907853269984665640564039457584007913129639934\n    grants[_holder][_grantId] = 115792089237316195423570985008687907853269984665640564039457584007913129639935', u'source_code/test1944.sol:749:13: Warning: Integer Overflow.\n    start = grant.start\nInteger Overflow occurs if:\n    _grantId = 0\n    grants[_holder][_grantId] = 1', u'source_code/test1944.sol:820:20: Warning: Integer Overflow.\n      date = max64(grants[holder][i]\nInteger Overflow occurs if:\n    grants[_holder].length = 115791205813783806231406193359937536394012070923692126229978523204812483330047\n    grants[holder][i].vesting = 0', u'source_code/test1944.sol:750:13: Warning: Integer Overflow.\n    cliff = grant.cliff\nInteger Overflow occurs if:\n    _grantId = 0\n    grants[_holder][_grantId] = 1'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test1944.sol:119:5: Warning: Integer Underflow.\n    string public symbol', u"source_code/test1944.sol:120:5: Warning: Integer Underflow.\n    string public version = 'MMT_0.1'", u'source_code/test1944.sol:117:5: Warning: Integer Underflow.\n    string public name'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '46.7'}}}
