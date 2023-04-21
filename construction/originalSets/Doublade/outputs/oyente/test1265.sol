{u'source_code/test1265.sol': {u'ERC20CoreBase': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.3'}, u'ERC20Core': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '86.5'}, u'VendiCoins': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1265.sol:265:9: Warning: Integer Overflow.\n        _allowed[msg.sender][spender] += value\nInteger Overflow occurs if:\n    _allowed[msg.sender][spender] = 196159429230833773869868419475239575503198607639501081600\n    _balanceOf[msg.sender] = 0', u'source_code/test1265.sol:155:9: Warning: Integer Overflow.\n        _balanceOf[account] += value\nInteger Overflow occurs if:\n    value = 95320360308092064085158862026869462789128858612754216248428463844421952977271\n    _balanceOf[account] = 89660649888868366171417216235708288031085258661234677303951427843448891257349\n    account = 1461501637330902918203684832716283019655932542975\n    _owner = 0', u'source_code/test1265.sol:139:9: Warning: Integer Overflow.\n        _balanceOf[to] += value\nInteger Overflow occurs if:\n    value = 57896044618658097711785492504343953926634992332820282019710345259882855102646\n    _balanceOf[to] = 115792089237316195423570985008687907852844631706989390960128365748614829458910\n    to = 1461501637330902918203684832716283019655932542975\n    frozen = 0', u'source_code/test1265.sol:154:9: Warning: Integer Overflow.\n        _totalSupply += value\nInteger Overflow occurs if:\n    value = 95320360308092064085158862026869462789128858612754216248428463844421952977271\n    _totalSupply = 89660649888868366171417216235708288031085258661234677303951427843448891257349\n    account = 1461501637330902918203684832716283019655932542975\n    _owner = 0'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test1265.sol:348:2: Warning: Integer Underflow.\n\tstring public symbol', u'source_code/test1265.sol:347:2: Warning: Integer Underflow.\n\tstring public name', u'source_code/test1265.sol:169:9: Warning: Integer Underflow.\n        _totalSupply -= value\nInteger Underflow occurs if:\n    value = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    _totalSupply = 115792089237316195423570985008687907853269984665640564039457584007913129639934\n    _balanceOf[account] = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '87.4'}, u'ERC20WithApproveBase': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.6'}, u'ERC20WithApprove': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1265.sol:265:9: Warning: Integer Overflow.\n        _allowed[msg.sender][spender] += value\nInteger Overflow occurs if:\n    value = 115792089237316195423374825579457074079400116246165324463954385400273628558336\n    _allowed[msg.sender][spender] = 196159429230833773869868419475239575503198607639501081600\n    _balanceOf[msg.sender] = 0\n    spender = 1461501637330902918203684832716283019655932542975', u'source_code/test1265.sol:139:9: Warning: Integer Overflow.\n        _balanceOf[to] += value\nInteger Overflow occurs if:\n    value = 57896044618658097711785492504343953926634992332820282019710345259882855102646\n    _balanceOf[to] = 115792089237316195423570985008687907852844631706989390960128365748614829458910\n    to = 1461501637330902918203684832716283019655932542975'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '99.9'}}}
