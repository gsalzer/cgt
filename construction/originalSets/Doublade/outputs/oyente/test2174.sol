{u'source_code/test2174.sol': {u'LotteryAdmin': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [u'source_code/test2174.sol:56:9: Warning: Re-Entrancy Vulnerability.\n        EthereumLottery(ethereumLottery).initLottery.value(_jackpot)(\r\n        ^\nSpanning multiple lines.'], 'integer_overflow': [], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [[u'source_code/test2174.sol:83:9: Warning: Transaction-Ordering Dependency.\n        selfdestruct(owner)'], [u'source_code/test2174.sol:61:9: Warning: Transaction-Ordering Dependency.\n        owner.transfer(_value)']], 'assertion_failure': []}, 'evm_code_coverage': '87.3'}}}
