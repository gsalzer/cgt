{u'source_code/test2989.sol': {u'Bounty': {'vulnerabilities': {'callstack': [], 'time_dependency': [], 'reentrancy': [], 'integer_overflow': [u'source_code/test2989.sol:97:9: Warning: Integer Overflow.\n        balances[msg.sender] += msg.value\nInteger Overflow occurs if:\n    balances[msg.sender] = 115792089237316195423570985008687907852844631706989390960128365748614829458910\n    has_donated[msg.sender] = 255\n    count_donors = 50\n    bounty_paid = 0', u'source_code/test2989.sol:55:5: Warning: Integer Overflow.\n    function vote_beneficiary(string _vote) onlyDonor {\r\n    ^\nSpanning multiple lines.\nInteger Overflow occurs if:\n    _vote = 115792089237316195423570985008687907853269984665640564039457584007913129639935'], 'parity_multisig_bug_2': [], 'integer_underflow': [], 'money_concurrency': [], 'assertion_failure': []}, 'evm_code_coverage': '66.5'}}}
