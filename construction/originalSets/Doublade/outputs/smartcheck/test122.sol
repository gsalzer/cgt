reorder_contracts_2_3/test122.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 1468
column: 49
content: 0x543Ff227F64Aa17eA132Bf9886cAb5DB55DCAddf

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 1261
column: 32
content: 0x1

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 1261
column: 40
content: 0x1

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 1968
column: 33
content: 0x100000000000000000000000000000000

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 1969
column: 40
content: 0x100000000000000000000000000000000

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 179
column: 8
content: _owner=address(0)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 1176
column: 19
content: (address(0))

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 1196
column: 19
content: (address(0))

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 1698
column: 12
content: proposal.proposer=address(0)

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 43ba1c
severity: 1
line: 364
column: 59
content: checkpoints.length++

ruleId: SOLIDITY_DIV_MUL
patternId: 09hhh1
severity: 2
line: 1829
column: 31
content: (totalReputation/100)*params.queuedVoteRequiredPercentage

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 511
column: 4
content: functionapprove(addressspender,uint256value)publicreturns(bool){require(spender!=address(0));_allowed[msg.sender][spender]=value;emitApproval(msg.sender,spender,value);returntrue;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 346
column: 15
content: max>min

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 800
column: 0
content: contractAvatarisOwnable{usingSafeERC20foraddress;stringpublicorgName;DAOTokenpublicnativeToken;ReputationpublicnativeReputation;eventGenericCall(addressindexed_contract,bytes_params,bool_success);eventSendEther(uint256_amountInWei,addressindexed_to);eventExternalTokenTransfer(addressindexed_externalToken,addressindexed_to,uint256_value);eventExternalTokenTransferFrom(addressindexed_externalToken,address_from,address_to,uint256_value);eventExternalTokenApproval(addressindexed_externalToken,address_spender,uint256_value);eventReceiveEther(addressindexed_sender,uint256_value);constructor(stringmemory_orgName,DAOToken_nativeToken,Reputation_nativeReputation)public{orgName=_orgName;nativeToken=_nativeToken;nativeReputation=_nativeReputation;}function()externalpayable{emitReceiveEther(msg.sender,msg.value);}functiongenericCall(address_contract,bytesmemory_data)publiconlyOwnerreturns(boolsuccess,bytesmemoryreturnValue){(success,returnValue)=_contract.call(_data);emitGenericCall(_contract,_data,success);}functionsendEther(uint256_amountInWei,address<missing ')'>payable_to)publiconlyOwnerreturns(bool){_to.transfer(_amountInWei);emitSendEther(_amountInWei,_to);returntrue;}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 2452
column: 0
content: contractContributionRewardisUniversalScheme,VotingMachineCallbacks,ProposalExecuteInterface{usingSafeMathforuint;eventNewContributionProposal(addressindexed_avatar,bytes32indexed_proposalId,addressindexed_intVoteInterface,string_descriptionHash,int256_reputationChange,uint[5]_rewards,IERC20_externalToken,address_beneficiary);eventProposalExecuted(addressindexed_avatar,bytes32indexed_proposalId,int256_param);eventRedeemReputation(addressindexed_avatar,bytes32indexed_proposalId,addressindexed_beneficiary,int256_amount);eventRedeemEther(addressindexed_avatar,bytes32indexed_proposalId,addressindexed_beneficiary,uint256_amount);eventRedeemNativeToken(addressindexed_avatar,bytes32indexed_proposalId,addressindexed_beneficiary,uint256_amount);eventRedeemExternalToken(addressindexed_avatar,bytes32indexed_proposalId,addressindexed_beneficiary,uint256_amount);structContributionProposal{uint256nativeTokenReward;int256reputationChange;uint256ethReward;IERC20externalToken;uint256externalTokenReward;addresspayablebeneficiary;uint256periodLength;uint256numberOfPeriods;uint256executionTime;uint[4]redeemedPeriods;}mapping(address=>mapping(bytes32=>ContributionProposal))publicorganizationsProposals;structParameters{uint256orgNativeTokenFee;bytes32voteApproveParams;IntVoteInterfaceintVote;}mapping(bytes32=>Parameters)publicparameters;functionexecuteProposal(bytes32_proposalId,int256_param)externalonlyVotingMachine(_proposalId)returns(bool){ProposalInfomemoryproposal=proposalsInfo[_proposalId];require(organizationsProposals[address(proposal.avatar)][_proposalId].executionTime==0);require(organizationsProposals[address(proposal.avatar)][_proposalId].beneficiary!=address(0));if(_param==1){organizationsProposals[address(proposal.avatar)][_proposalId].executionTime=now;}emitProposalExecuted(address(proposal.avatar),_proposalId,_param);returntrue;}functionsetParameters(uint256_orgNativeTokenFee,bytes32_voteApproveParams,IntVoteInterface_intVote)publicreturns(bytes32){bytes32paramsHash=getParametersHash(_orgNativeTokenFee,_voteApproveParams,_intVote);parameters[paramsHash].orgNativeTokenFee=_orgNativeTokenFee;parameters[paramsHash].voteApproveParams=_voteApproveParams;parameters[paramsHash].intVote=_intVote;returnparamsHash;}functiongetParametersHash(uint256_orgNativeTokenFee,bytes32_voteApproveParams,IntVoteInterface_intVote)publicpurereturns(bytes32){return(keccak256(abi.encodePacked(_voteApproveParams,_orgNativeTokenFee,_intVote)));}functionproposeContributionReward(Avatar_avatar,stringmemory_descriptionHash,int256_reputationChange,uint[5]memory_rewards,IERC20_externalToken,address<missing ')'>payable_beneficiary)publicreturns<missing ';'>(bytes32){validateProposalParams(_reputationChange,_rewards);ParametersmemorycontrollerParams=parameters[getParametersFromController(_avatar)];if(controllerParams.orgNativeTokenFee>0){_avatar.nativeToken().transferFrom(msg.sender,<missing ';'>address(_avatar),controllerParams.orgNativeTokenFee);}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 737
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 136
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 460
column: 33
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 462
column: 54
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 464
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 744
column: 20
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 745
column: 20
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 746
column: 20
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1237
column: 21
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1242
column: 21
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1247
column: 21
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1468
column: 21
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1469
column: 21
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 458
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 1353
column: 4
content: usingSafeMathforuint;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 2453
column: 4
content: usingSafeMathforuint;

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 1169
column: 4
content: functionrecover(bytes32hash,bytesmemorysignature)internalpurereturns(address){bytes32r;bytes32s;uint8v;if(signature.length!=65){return(address(0));}assembly{r:=mload(add(signature,0x20))s:=mload(add(signature,0x40))v:=byte(0,mload(add(signature,0x60)))}if(v<27){v+=27;}if(v!=27&&v!=28){return(address(0));}else{returnecrecover(hash,v,r,s);}}

ruleId: SOLIDITY_SHOULD_NOT_BE_VIEW
patternId: 189abf
severity: 1
line: 707
column: 4
content: functionisContract(addressaccount)internalviewreturns(bool){uint256size;assembly{size:=extcodesize(account)}returnsize>0;}

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 86
column: 61
content: (uint256min,uint256max)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 841
column: 11
content: (boolsuccess,bytesmemoryreturnValue)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1125
column: 74
content: (uint,uint)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1728
column: 11
content: (uint256redeemedAmount,uint256potentialAmount)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 2245
column: 80
content: (uint,uint)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 2277
column: 70
content: (uint256,uint256,uint256,uint256)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 2302
column: 82
content: (uint256,uint256)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 2347
column: 61
content: (uint256min,uint256max)

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 755
column: 19
content: call(abi.encodeWithSelector(TRANSFER_SELECTOR,_to,_value))

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 769
column: 19
content: call(abi.encodeWithSelector(TRANSFERFROM_SELECTOR,_from,_to,_value))

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 787
column: 19
content: call(abi.encodeWithSelector(APPROVE_SELECTOR,_spender,_value))

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 843
column: 43
content: call(_data)

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 1183
column: 8
content: assembly{r:=mload(add(signature,0x20))s:=mload(add(signature,0x40))v:=byte(0,mload(add(signature,0x60)))}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 853
column: 4
content: functionsendEther(uint256_amountInWei,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 1044
column: 4
content: functiongenericCall(address_contract,bytescalldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 1055
column: 4
content: functionsendEther(uint256_amountInWei,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 2588
column: 4
content: functionproposeContributionReward(Avatar_avatar,stringmemory_descriptionHash,int256_reputationChange,uint[5]memory_rewards,IERC20_externalToken,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 235
column: 4
content: mapping(address=>Checkpoint[])balances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 238
column: 4
content: Checkpoint[]totalSupplyHistory;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 853
column: 90
content: (bool){_to.

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 854
column: 12
content: transfer(_amountInWei);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 855
column: 8
content: emitSendEther

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 855
column: 22
content: (_amountInWei,_to);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1044
column: 59
content: _data,Avatar

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1046
column: 11
content: (bool,<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1046
column: 18
content: bytesmemory);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1055
column: 61
content: _to,Avatar

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1056
column: 20
content: (bool);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2597
column: 11
content: (bytes32){validateProposalParams

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2599
column: 30
content: (_reputationChange,_rewards);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2600
column: 8
content: ParametersmemorycontrollerParams=parameters[getParametersFromController(_avatar)];

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2602
column: 11
content: (controllerParams.orgNativeTokenFee>0){_avatar.

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2603
column: 20
content: nativeToken

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2603
column: 31
content: ().transferFrom

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2603
column: 46
content: (msg.sender,<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2603
column: 59
content: address(_avatar),

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2603
column: 77
content: controllerParams.orgNativeTokenFee);

SOLIDITY_VISIBILITY :24
SOLIDITY_PRAGMAS_VERSION :2
SOLIDITY_ARRAY_LENGTH_MANIPULATION :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :12
SOLIDITY_ADDRESS_HARDCODED :9
SOLIDITY_GAS_LIMIT_IN_LOOPS :1
SOLIDITY_UNCHECKED_CALL :4
SOLIDITY_DIV_MUL :1
SOLIDITY_SHOULD_RETURN_STRUCT :8
SOLIDITY_SHOULD_NOT_BE_PURE :1
SOLIDITY_ERC20_APPROVE :1
SOLIDITY_SAFEMATH :3
SOLIDITY_LOCKED_MONEY :2
SOLIDITY_USING_INLINE_ASSEMBLY :1
SOLIDITY_SHOULD_NOT_BE_VIEW :1

