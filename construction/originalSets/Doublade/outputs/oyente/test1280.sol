{u'source_code/test1280.sol': {u'WalletClub': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test1280.sol:90:13: Warning: Integer Overflow.\n            Members[msg.sender]+=msg.value\nInteger Overflow occurs if:\n    Members[msg.sender] = 65671277709405268910487195956150116595597414210496125914632832503559645662975', u'source_code/test1280.sol:91:13: Warning: Integer Overflow.\n            TotalFunds += msg.value\nInteger Overflow occurs if:\n    TotalFunds = 65671277709405268910487195956150116595597414210496125914632832503559645662975'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [[u'source_code/test1280.sol:109:21: Warning: Transaction-Ordering Dependency.\n                 if(_addr.send(_wei)'], [u'source_code/test1280.sol:66:13: Warning: Transaction-Ordering Dependency.\n            admin.transfer(val)']], 'assertion_failure': []}, 'evm_code_coverage': '99.0'}, u'Owned': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '97.7'}}}
