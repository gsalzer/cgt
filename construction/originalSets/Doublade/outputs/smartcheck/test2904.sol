reorder_contracts_2_3/test2904.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 4
column: 4
content: functiongetAmount(uintvalue)constantreturns(uint);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 8
column: 4
content: functiongetBonus()constantreturns(uint);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 21
column: 4
content: functiongetAmount(uintvalue)constantreturns(uint){uintwithoutBonus=delegate.getAmount(value);uintbonusPercent=bonusCalculator.getBonus();uintbonus=withoutBonus*bonusPercent/100;returnwithoutBonus+bonus;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 4
column: 4
content: functiongetAmount(uintvalue)constantreturns(uint);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 8
column: 4
content: functiongetBonus()constantreturns(uint);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 16
column: 4
content: functionBonusAwareCalculator(addressdelegateAddress,addressbonusCalculatorAddress){delegate=Calculator(delegateAddress);bonusCalculator=BonusCalculator(bonusCalculatorAddress);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 21
column: 4
content: functiongetAmount(uintvalue)constantreturns(uint){uintwithoutBonus=delegate.getAmount(value);uintbonusPercent=bonusCalculator.getBonus();uintbonus=withoutBonus*bonusPercent/100;returnwithoutBonus+bonus;}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 12
column: 4
content: Calculatordelegate;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 14
column: 4
content: BonusCalculatorbonusCalculator;

SOLIDITY_VISIBILITY :6
SOLIDITY_DEPRECATED_CONSTRUCTIONS :3
SOLIDITY_PRAGMAS_VERSION :1

