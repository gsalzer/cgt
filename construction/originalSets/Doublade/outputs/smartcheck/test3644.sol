reorder_contracts_2_3/test3644.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 23
column: 14
content: 0x448a5065aeBB8E423F0896E6c5D525C040f59af3

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 13
column: 0
content: contractExit{eventLogTransferETH(addressdest,uintamount);eventLogTransferERC20(addresstoken,addressdest,uintamount);eventLogTransferCDP(uintnum,addressdest);functiongetSaiTubAddress()publicpurereturns(addresssai){sai=0x448a5065aeBB8E423F0896E6c5D525C040f59af3;}functiontransferETH(addresspayabledest)publicpayable{dest.transfer(address<missing ';'>(this).balance);emitLogTransferETH(dest,<missing ';'>address(this).balance);}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 29
column: 4
content: functiontransferETH(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 30
column: 13
content: transfer

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 30
column: 21
content: (address<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 30
column: 29
content: (this).balance);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 31
column: 8
content: emitLogTransferETH

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 31
column: 27
content: (dest,<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 31
column: 34
content: address(this).

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 31
column: 48
content: balance);

SOLIDITY_VISIBILITY :8
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_ADDRESS_HARDCODED :1

