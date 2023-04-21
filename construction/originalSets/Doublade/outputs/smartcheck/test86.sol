reorder_contracts_2_3/test86.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 113
column: 33
content: 0xf846f84841b3242Ccdeac8c43C9cF73Bd781baA7

ruleId: SOLIDITY_CALL_WITHOUT_DATA
patternId: lr991l
severity: 1
line: 89
column: 22
content: call.value(address(this).balance).gas(estGas)()

ruleId: SOLIDITY_CALL_WITHOUT_DATA
patternId: lr991l
severity: 1
line: 265
column: 18
content: call.value(calcStubFundPercent).gas(estGas)()

ruleId: SOLIDITY_DIV_MUL
patternId: 09hhh1
severity: 2
line: 239
column: 20
content: userDeposit[msg.sender].mul(standartPercent).div(1000).mul(payoutRatio)

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 106
column: 4
content: usingSafeMathforuint;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 83k1no
severity: 1
line: 89
column: 22
content: call.value(address(this).balance).gas(estGas)()

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 83k1no
severity: 1
line: 265
column: 18
content: call.value(calcStubFundPercent).gas(estGas)()

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 69
column: 4
content: uintestGas=200000;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 120
column: 4
content: uintestGas=150000;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 121
column: 4
content: uintstandartPercent=30;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 122
column: 4
content: uintresponseStubFundLimit=150;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 125
column: 4
content: uintchargingTime=1days;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 147
column: 4
content: mapping(address=>Beneficiaries)beneficiaries;

SOLIDITY_VISIBILITY :6
SOLIDITY_SAFEMATH :1
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_UPGRADE_TO_050 :2
SOLIDITY_DIV_MUL :1
SOLIDITY_CALL_WITHOUT_DATA :2

