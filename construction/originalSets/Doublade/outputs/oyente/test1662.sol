{u'source_code/test1662.sol': {u'Tokenizator': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1662.sol:300:3: Warning: Integer Overflow.\n  mapping(uint256 => TokenMetadata) public tokenMetadata', u'source_code/test1662.sol:312:3: Warning: Integer Overflow.\n  function createToken(\r\n  ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _description = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test1662.sol:300:3: Warning: Integer Underflow.\n  mapping(uint256 => TokenMetadata) public tokenMetadata'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '43.6'}, u'ERC721Token': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '60.5'}, u'SafeMath': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '100.0'}}}
