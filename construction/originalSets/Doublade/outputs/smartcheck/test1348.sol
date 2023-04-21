reorder_contracts_2_3/test1348.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 86
column: 4
content: functionapprove(address_spender,uint256_value)publicreturns(bool){allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 199
column: 8
content: for(uint256i=0;i<beneficiaries.length;i++){bounties[beneficiaries[i]]=amounts[i];emitBountySet(beneficiaries[i],amounts[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 199
column: 8
content: for(uint256i=0;i<beneficiaries.length;i++){bounties[beneficiaries[i]]=amounts[i];emitBountySet(beneficiaries[i],amounts[i]);}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 197
column: 4
content: functionsetBounties(address[]beneficiaries,uint256[]amounts)externalonlyOwner{require(beneficiaries.length==amounts.length);for(uint256i=0;i<beneficiaries.length;i++){bounties[beneficiaries[i]]=amounts[i];emitBountySet(beneficiaries[i],amounts[i]);}}

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 43
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 901eae
severity: 1
line: 164
column: 23
content: keccak256(block.number,msg.sender,_value,_cert)

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 151
column: 34
content: string_message

SOLIDITY_SAFEMATH :1
SOLIDITY_OVERPOWERED_ROLE :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :1
SOLIDITY_UPGRADE_TO_050 :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :1
SOLIDITY_ERC20_APPROVE :1

