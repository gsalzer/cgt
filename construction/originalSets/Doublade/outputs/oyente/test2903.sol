{u'source_code/test2903.sol': {u'HFTCrowdsale': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test2903.sol:103:38: Warning: Integer Overflow.\n        uint256 amount = msg.value * prices[price]\nInteger Overflow occurs if:\n    price = 41135703988684765558271381699651122876304694590833147437484663120924299898525\n    period = 0\n    prices.length = 41135703988684765558271381699651122876304694590833147437484663120924299898526\n    periods.length = 1\n    endDate = 28269553036454149273332760011886696253239742350009903329945699220681916417\n    startDate = 28269553036454149273332760011886696253239742350009903329945699220681916415'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '79.2'}}}
