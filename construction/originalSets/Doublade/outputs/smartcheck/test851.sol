reorder_contracts_2_3/test851.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DIV_MUL
patternId: 09hhh1
severity: 2
line: 343
column: 25
content: weiAmount.div(getCurrentRate()).mul(10**uint256(18))

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 58
column: 4
content: functionapprove(address_spender,uint256_value)publicreturns(bool){allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 171
column: 8
content: for(uint256i=0;i<beneficiaries.length;i++){bounties[beneficiaries[i]]=amounts[i];emitBountySet(beneficiaries[i],amounts[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 171
column: 8
content: for(uint256i=0;i<beneficiaries.length;i++){bounties[beneficiaries[i]]=amounts[i];emitBountySet(beneficiaries[i],amounts[i]);}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 169
column: 4
content: functionsetBounties(address[]beneficiaries,uint256[]amounts)externalonlyOwner{require(beneficiaries.length==amounts.length);for(uint256i=0;i<beneficiaries.length;i++){bounties[beneficiaries[i]]=amounts[i];emitBountySet(beneficiaries[i],amounts[i]);}}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 306
column: 4
content: functionsetICOSpec(uint256_timestampStage1,uint256_timestampStage2,uint256_timestampStage3,uint256_timestampEndTime,uint256_weiCostOfTokenStage1,uint256_weiCostOfTokenStage2,uint256_weiCostOfTokenStage3,uint256_founderTokenUnlockPhase1,uint256_founderTokenUnlockPhase2,uint256_founderTokenUnlockPhase3,uint256_founderTokenUnlockPhase4)externalonlyBeforeSpecConfirmed()onlyOwner{require(_timestampStage1>0);require(_timestampStage2>=_timestampStage1);require(_timestampStage3>=_timestampStage2);require(_timestampEndTime>=_timestampStage3);require(_weiCostOfTokenStage1>0);require(_weiCostOfTokenStage2>=_weiCostOfTokenStage1);require(_weiCostOfTokenStage3>=_weiCostOfTokenStage2);require(_founderTokenUnlockPhase1>0);require(_founderTokenUnlockPhase2>=_founderTokenUnlockPhase1);require(_founderTokenUnlockPhase3>=_founderTokenUnlockPhase2);require(_founderTokenUnlockPhase4>=_founderTokenUnlockPhase3);startTimeStage1=_timestampStage1;startTimeStage2=_timestampStage2;startTimeStage3=_timestampStage3;endTime=_timestampEndTime;rateStage1=_weiCostOfTokenStage1;rateStage2=_weiCostOfTokenStage2;rateStage3=_weiCostOfTokenStage3;founderTokenUnlockPhase1=_founderTokenUnlockPhase1;founderTokenUnlockPhase2=_founderTokenUnlockPhase2;founderTokenUnlockPhase3=_founderTokenUnlockPhase3;founderTokenUnlockPhase4=_founderTokenUnlockPhase4;}

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 14
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 227
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 901eae
severity: 1
line: 136
column: 23
content: keccak256(block.number,msg.sender,_value,_cert)

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 123
column: 34
content: string_message

SOLIDITY_SAFEMATH :2
SOLIDITY_OVERPOWERED_ROLE :2
SOLIDITY_EXTRA_GAS_IN_LOOPS :1
SOLIDITY_UPGRADE_TO_050 :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :1
SOLIDITY_DIV_MUL :1
SOLIDITY_ERC20_APPROVE :1

