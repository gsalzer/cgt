{u'source_code/test2544.sol': {u'Pgp': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test2544.sol:6:3: Warning: Integer Overflow.\n  function addPublicKey(string publicKey) external {\r\n  ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    publicKey = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test2544.sol:4:3: Warning: Integer Underflow.\n  mapping(address => string) public addressToPublicKey', u'source_code/test2544.sol:3:1: Warning: Integer Underflow.\ncontract Pgp {\r\n^\nSpanning multiple lines.'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '38.4'}}}
