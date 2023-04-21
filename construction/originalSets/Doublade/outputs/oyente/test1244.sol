{u'source_code/test1244.sol': {u'Base': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [[u'source_code/test1244.sol:69:13: Warning: Transaction-Ordering Dependency.\n            addr.transfer(val)'], [u'source_code/test1244.sol:49:13: Warning: Transaction-Ordering Dependency.\n            creator.transfer(this.balance)']], 'assertion_failure': []}, 'evm_code_coverage': '96.7'}, u'DepositBank': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1244.sol:177:13: Warning: Integer Overflow.\n            CharterCapital+=msg.value\nInteger Overflow occurs if:\n    CharterCapital = 70036696666780064463973016200043117429077326574545407627672066683247125486415\n    MinPayment = 69722843986276191112704802276904042686523943500539225692285358676886601247599\n    Sponsors[msg.sender] = 0', u'source_code/test1244.sol:106:5: Warning: Integer Overflow.\n    mapping (address => Lender) public Lenders', u'source_code/test1244.sol:175:40: Warning: Integer Overflow.\n            if(Sponsors[msg.sender]==0)SponsorsQty++\nInteger Overflow occurs if:\n    SponsorsQty = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    MinPayment = 0\n    Sponsors[msg.sender] = 0', u'source_code/test1244.sol:135:9: Warning: Integer Overflow.\n        Lenders[msg.sender].Amount\nInteger Overflow occurs if:\n    Lenders[msg.sender].Amount = 0', u'source_code/test1244.sol:147:12: Warning: Integer Overflow.\n        if(Lenders[msg.sender].Amount\nInteger Overflow occurs if:\n    paymentsAllowed = 255', u'source_code/test1244.sol:149:13: Warning: Integer Overflow.\n            Lenders[msg.sender].Reserved\nInteger Overflow occurs if:\n    Lenders[msg.sender].Amount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    paymentsAllowed = 255', u'source_code/test1244.sol:142:18: Warning: Integer Overflow.\n        return ((Lenders[addr].Amount\nInteger Overflow occurs if:\n    Lenders[msg.sender].Amount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    paymentsAllowed = 255'], 'parity_multisig_bug_2': [], 'integer_underflow': [u'source_code/test1244.sol:142:57: Warning: Integer Underflow.\n        return ((Lenders[addr].Amount/100)*PrcntRate)*((now-Lenders[addr].LastLendTime\nInteger Underflow occurs if:\n    Lenders[addr].LastLendTime = 1\n    Lenders[msg.sender].Amount = 115792089237316195423570985008687907853269984665640564039457584007913129639935\n    paymentsAllowed = 255'], 'money_concurrency': [[u'source_code/test1244.sol:69:13: Warning: Transaction-Ordering Dependency.\n            addr.transfer(val)'], [u'source_code/test1244.sol:49:13: Warning: Transaction-Ordering Dependency.\n            creator.transfer(this.balance)']], 'assertion_failure': []}, 'evm_code_coverage': '98.1'}}}
