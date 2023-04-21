reorder_contracts_2_3/test2642.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 13
column: 19
content: 0xd3cda913deb6f67967b99d67acdfa1712c293601

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 27cb59
severity: 1
line: 36
column: 4
content: suicide

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 18
column: 32
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 23
column: 35
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 28
column: 35
content: throw

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 18
column: 0
content: if(msg.sender!=piperMerriam)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 23
column: 0
content: if(block.timestamp>timeToPayout)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 28
column: 0
content: if(block.timestamp<timeToPayout)throw;

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 12
column: 0
content: functionAlarmClockTipFaucet(){piperMerriam=0xd3cda913deb6f67967b99d67acdfa1712c293601;timeToPayout=now+10days;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 32
column: 0
content: function()isOpen{}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 35
column: 0
content: functionwithdraw()isPipercanWithdraw{suicide(piperMerriam);}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 8
column: 0
content: addresspiperMerriam;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 9
column: 0
content: uinttimeToPayout;

SOLIDITY_VISIBILITY :5
SOLIDITY_DEPRECATED_CONSTRUCTIONS :4
SOLIDITY_REVERT_REQUIRE :3
SOLIDITY_ADDRESS_HARDCODED :1

