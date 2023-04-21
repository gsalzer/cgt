reorder_contracts_2_3/test425.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 44
column: 4
content: functionauthentication(bytes8token)publicconstantreturns(bool);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 45
column: 4
content: functiongetDepositor()publicconstantreturns(uint256[3]);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 54
column: 4
content: functionauthentication(bytes8token)publicconstantreturns(bool){return_depositor[msg.sender]._token==token;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 58
column: 4
content: functiongetDepositor()publicconstantreturns(uint256[3]){return(_depositor[msg.sender]._data);}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 43
column: 0
content: contractSafetherAbstract{functionauthentication(bytes8token)publicconstantreturns(bool);functiongetDepositor()publicconstantreturns(uint256[3]);functionregister(bytes7password)public;functiondeposit(uint256period)publicpayable;functionwithdraw(addressdepositor,bytes8token)publicpayable;functioncancel()publicpayable;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 901eae
severity: 1
line: 63
column: 47
content: keccak256(block.number,msg.sender,password)

SOLIDITY_DEPRECATED_CONSTRUCTIONS :4
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_UPGRADE_TO_050 :1

