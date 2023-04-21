reorder_contracts_2_3/test34.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 2
column: 25
content: bytesdata

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 6
column: 8
content: assembly{calldatacopy(mload(0x40),68,s)theNewContract:=create(callvalue,mload(0x40),s)}

SOLIDITY_UPGRADE_TO_050 :1
SOLIDITY_USING_INLINE_ASSEMBLY :1

