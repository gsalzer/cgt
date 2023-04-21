reorder_contracts_2_3/test1685.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 268
column: 4
content: functionsetInvestorWhitelist(addressaddr,boolstatus)public{require(msg.sender==whitelister);investorWhitelist[addr]=status;Whitelisted(addr,status);}

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 139
column: 4
content: usingSafeMathforuint256;

SOLIDITY_SAFEMATH :1
SOLIDITY_OVERPOWERED_ROLE :1

