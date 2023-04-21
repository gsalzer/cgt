reorder_contracts_2_3/test3422.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 188
column: 2
content: functionapprove(address_spender,uint256_value)publicreturns(bool){allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 245
column: 0
content: contractRareAssetisStandardToken{bytespublicname;bytespublicipfsHash;bytespublicattributes;addresspubliccreator;uintpublicdecimals=0;functionRareAsset(bytesassetname,uintsupply,bytesipfsHash_,bytesattrHash,addresscreator_)publicpayable{name=assetname;totalSupply_=supply;ipfsHash=ipfsHash_;attributes=attrHash;creator=creator_;balances[creator_]=supply;}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 93
column: 2
content: usingSafeMathforuint256;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 253
column: 22
content: bytesassetname

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 253
column: 52
content: bytesipfsHash_

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 253
column: 69
content: bytesattrHash

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 276
column: 23
content: bytesassetname

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 276
column: 53
content: bytesipfsHash

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 276
column: 69
content: bytesattrHash

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 95
column: 2
content: mapping(address=>uint256)balances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 97
column: 2
content: uint256totalSupply_;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 267
column: 2
content: addressowner;

SOLIDITY_VISIBILITY :3
SOLIDITY_SAFEMATH :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_UPGRADE_TO_050 :6
SOLIDITY_ERC20_APPROVE :1

