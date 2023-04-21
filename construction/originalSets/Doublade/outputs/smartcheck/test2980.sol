reorder_contracts_2_3/test2980.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 285
column: 39
content: 0x20c13b0b

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 2183
column: 61
content: 0x01

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 54
column: 8
content: _owner=address(0)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 1759
column: 18
content: m_accounts[address(0)]

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 1766
column: 9
content: (address(0),kitty,_taskid)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 1784
column: 8
content: (address(0),poolstake,_taskid)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 1785
column: 8
content: (address(0),poolstake)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 2308
column: 24
content: 0x0

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1123
column: 2
content: for(uinti=0;i<_amounts.length;++i){depositFor(_amounts[i],_targets[i]);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 2239
column: 3
content: for(uint256i=0;i<task.contributors.length;++i){addressw=task.contributors[i];if(m_contributions[_taskid][w].resultHash==_consensus&&m_contributions[_taskid][w].status==IexecODBLibCore.ContributionStatusEnum.CONTRIBUTED){winnerCounter=winnerCounter.add(1);}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 2295
column: 2
content: for(uint256i=0;i<task.contributors.length;++i){addressworker=task.contributors[i];if(m_contributions[_taskid][worker].resultHash==task.consensusValue){m_contributions[_taskid][worker].status=IexecODBLibCore.ContributionStatusEnum.REJECTED;}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 2378
column: 2
content: for(i=0;i<task.contributors.length;++i){worker=task.contributors[i];if(m_contributions[_taskid][worker].status==IexecODBLibCore.ContributionStatusEnum.PROVED){totalLogWeight=totalLogWeight.add(m_logweight[_taskid][worker]);}else{totalReward=totalReward.add(deal.workerStake);}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 2395
column: 2
content: for(i=0;i<task.contributors.length;++i){worker=task.contributors[i];if(m_contributions[_taskid][worker].status==IexecODBLibCore.ContributionStatusEnum.PROVED){uint256workerReward=workersReward.mulByFraction(m_logweight[_taskid][worker],totalLogWeight);totalReward=totalReward.sub(workerReward);iexecclerk.unlockAndRewardForContribution(task.dealid,worker,workerReward,_taskid);if(task.contributors.length>1){m_workerScores[worker]=m_workerScores[worker].add(1);emitAccurateContribution(worker,_taskid);}}else{iexecclerk.seizeContribution(task.dealid,worker,_taskid);{m_workerScores[worker]=m_workerScores[worker].mulByFraction(2,3);emitFaultyContribution(worker,_taskid);}}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 2454
column: 2
content: for(uint256i=0;i<task.contributors.length;++i){addressworker=task.contributors[i];iexecclerk.unlockContribution(task.dealid,worker);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 2472
column: 2
content: for(uinti=0;i<_dealid.length;++i){initialize(_dealid[i],_idx[i]);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 2483
column: 2
content: for(uinti=0;i<_taskid.length;++i){claim(_taskid[i]);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 2496
column: 2
content: for(uinti=0;i<_dealid.length;++i){claim(initialize(_dealid[i],_idx[i]));}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 177
column: 1
content: functionlog(uintx)internalpurereturns(uinty){assembly{letarg:=xx:=sub(x,1)x:=or(x,div(x,0x02))x:=or(x,div(x,0x04))x:=or(x,div(x,0x10))x:=or(x,div(x,0x100))x:=or(x,div(x,0x10000))x:=or(x,div(x,0x100000000))x:=or(x,div(x,0x10000000000000000))x:=or(x,div(x,0x100000000000000000000000000000000))x:=add(x,1)letm:=mload(0x40)mstore(m,0xf8f9cbfae6cc78fbefe7cdc3a1793dfcf4f0e8bbd8cec470b6a28a7a5a3e1efd)mstore(add(m,0x20),0xf5ecf1b3e9debc68e1d9cfabc5997135bfb7a7a3938b7b606b5b4b3f2f1f0ffe)mstore(add(m,0x40),0xf6e4ed9ff2d6b458eadcdf97bd91692de2d4da8fd2d0ac50c6ae9a8272523616)mstore(add(m,0x60),0xc8c0b887b0a8a4489c948c7f847c6125746c645c544c444038302820181008ff)mstore(add(m,0x80),0xf7cae577eec2a03cf3bad76fb589591debb2dd67e0aa9834bea6925f6a4a2e0e)mstore(add(m,0xa0),0xe39ed557db96902cd38ed14fad815115c786af479b7e83247363534337271707)mstore(add(m,0xc0),0xc976c13bb96e881cb166a933a55e490d9d56952b8d4e801485467d2362422606)mstore(add(m,0xe0),0x753a6d1b65325d0c552a4d1345224105391a310b29122104190a110309020100)mstore(0x40,add(m,0x100))letmagic:=0x818283848586878898a8b8c8d8e8f929395969799a9b9d9e9faaeb6bedeeffletshift:=0x100000000000000000000000000000000000000000000000000000000000000leta:=div(mul(x,magic),shift)y:=div(mload(add(m,sub(255,a))),shift)y:=add(y,mul(256,gt(arg,0x8000000000000000000000000000000000000000000000000000000000000000)))}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 505
column: 1
content: functionhash(EIP712Domainmemory_domain)publicpurereturns(bytes32domainhash){bytes32typeHash=EIP712DOMAIN_TYPEHASH;bytes32nameHash=keccak256(bytes(_domain.name));bytes32versionHash=keccak256(bytes(_domain.version));assembly{lettemp1:=mload(sub(_domain,0x20))lettemp2:=mload(add(_domain,0x00))lettemp3:=mload(add(_domain,0x20))mstore(sub(_domain,0x20),typeHash)mstore(add(_domain,0x00),nameHash)mstore(add(_domain,0x20),versionHash)domainhash:=keccak256(sub(_domain,0x20),0xA0)mstore(sub(_domain,0x20),temp1)mstore(add(_domain,0x00),temp2)mstore(add(_domain,0x20),temp3)}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 540
column: 1
content: functionhash(AppOrdermemory_apporder)publicpurereturns(bytes32apphash){bytes32typeHash=APPORDER_TYPEHASH;assembly{lettemp1:=mload(sub(_apporder,0x20))mstore(sub(_apporder,0x20),typeHash)apphash:=keccak256(sub(_apporder,0x20),0x120)mstore(sub(_apporder,0x20),temp1)}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 571
column: 1
content: functionhash(DatasetOrdermemory_datasetorder)publicpurereturns(bytes32datasethash){bytes32typeHash=DATASETORDER_TYPEHASH;assembly{lettemp1:=mload(sub(_datasetorder,0x20))mstore(sub(_datasetorder,0x20),typeHash)datasethash:=keccak256(sub(_datasetorder,0x20),0x120)mstore(sub(_datasetorder,0x20),temp1)}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 602
column: 1
content: functionhash(WorkerpoolOrdermemory_workerpoolorder)publicpurereturns(bytes32workerpoolhash){bytes32typeHash=WORKERPOOLORDER_TYPEHASH;assembly{lettemp1:=mload(sub(_workerpoolorder,0x20))mstore(sub(_workerpoolorder,0x20),typeHash)workerpoolhash:=keccak256(sub(_workerpoolorder,0x20),0x160)mstore(sub(_workerpoolorder,0x20),temp1)}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 635
column: 1
content: functionhash(RequestOrdermemory_requestorder)publicpurereturns(bytes32requesthash){bytes32typeHash=REQUESTORDER_TYPEHASH;bytes32paramsHash=keccak256(bytes(_requestorder.params));assembly{lettemp1:=mload(sub(_requestorder,0x020))lettemp2:=mload(add(_requestorder,0x1A0))mstore(sub(_requestorder,0x020),typeHash)mstore(add(_requestorder,0x1A0),paramsHash)requesthash:=keccak256(sub(_requestorder,0x20),0x200)mstore(sub(_requestorder,0x020),temp1)mstore(add(_requestorder,0x1A0),temp2)}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1123
column: 2
content: for(uinti=0;i<_amounts.length;++i){depositFor(_amounts[i],_targets[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 2239
column: 3
content: for(uint256i=0;i<task.contributors.length;++i){addressw=task.contributors[i];if(m_contributions[_taskid][w].resultHash==_consensus&&m_contributions[_taskid][w].status==IexecODBLibCore.ContributionStatusEnum.CONTRIBUTED){winnerCounter=winnerCounter.add(1);}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 2295
column: 2
content: for(uint256i=0;i<task.contributors.length;++i){addressworker=task.contributors[i];if(m_contributions[_taskid][worker].resultHash==task.consensusValue){m_contributions[_taskid][worker].status=IexecODBLibCore.ContributionStatusEnum.REJECTED;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 2378
column: 2
content: for(i=0;i<task.contributors.length;++i){worker=task.contributors[i];if(m_contributions[_taskid][worker].status==IexecODBLibCore.ContributionStatusEnum.PROVED){totalLogWeight=totalLogWeight.add(m_logweight[_taskid][worker]);}else{totalReward=totalReward.add(deal.workerStake);}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 2395
column: 2
content: for(i=0;i<task.contributors.length;++i){worker=task.contributors[i];if(m_contributions[_taskid][worker].status==IexecODBLibCore.ContributionStatusEnum.PROVED){uint256workerReward=workersReward.mulByFraction(m_logweight[_taskid][worker],totalLogWeight);totalReward=totalReward.sub(workerReward);iexecclerk.unlockAndRewardForContribution(task.dealid,worker,workerReward,_taskid);if(task.contributors.length>1){m_workerScores[worker]=m_workerScores[worker].add(1);emitAccurateContribution(worker,_taskid);}}else{iexecclerk.seizeContribution(task.dealid,worker,_taskid);{m_workerScores[worker]=m_workerScores[worker].mulByFraction(2,3);emitFaultyContribution(worker,_taskid);}}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 2454
column: 2
content: for(uint256i=0;i<task.contributors.length;++i){addressworker=task.contributors[i];iexecclerk.unlockContribution(task.dealid,worker);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 2472
column: 2
content: for(uinti=0;i<_dealid.length;++i){initialize(_dealid[i],_idx[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 2483
column: 2
content: for(uinti=0;i<_taskid.length;++i){claim(_taskid[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 2496
column: 2
content: for(uinti=0;i<_dealid.length;++i){claim(initialize(_dealid[i],_idx[i]));}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 10
column: 12
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 691
column: 1
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 1055
column: 1
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 1357
column: 1
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 2007
column: 1
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 177
column: 1
content: functionlog(uintx)internalpurereturns(uinty){assembly{letarg:=xx:=sub(x,1)x:=or(x,div(x,0x02))x:=or(x,div(x,0x04))x:=or(x,div(x,0x10))x:=or(x,div(x,0x100))x:=or(x,div(x,0x10000))x:=or(x,div(x,0x100000000))x:=or(x,div(x,0x10000000000000000))x:=or(x,div(x,0x100000000000000000000000000000000))x:=add(x,1)letm:=mload(0x40)mstore(m,0xf8f9cbfae6cc78fbefe7cdc3a1793dfcf4f0e8bbd8cec470b6a28a7a5a3e1efd)mstore(add(m,0x20),0xf5ecf1b3e9debc68e1d9cfabc5997135bfb7a7a3938b7b606b5b4b3f2f1f0ffe)mstore(add(m,0x40),0xf6e4ed9ff2d6b458eadcdf97bd91692de2d4da8fd2d0ac50c6ae9a8272523616)mstore(add(m,0x60),0xc8c0b887b0a8a4489c948c7f847c6125746c645c544c444038302820181008ff)mstore(add(m,0x80),0xf7cae577eec2a03cf3bad76fb589591debb2dd67e0aa9834bea6925f6a4a2e0e)mstore(add(m,0xa0),0xe39ed557db96902cd38ed14fad815115c786af479b7e83247363534337271707)mstore(add(m,0xc0),0xc976c13bb96e881cb166a933a55e490d9d56952b8d4e801485467d2362422606)mstore(add(m,0xe0),0x753a6d1b65325d0c552a4d1345224105391a310b29122104190a110309020100)mstore(0x40,add(m,0x100))letmagic:=0x818283848586878898a8b8c8d8e8f929395969799a9b9d9e9faaeb6bedeeffletshift:=0x100000000000000000000000000000000000000000000000000000000000000leta:=div(mul(x,magic),shift)y:=div(mload(add(m,sub(255,a))),shift)y:=add(y,mul(256,gt(arg,0x8000000000000000000000000000000000000000000000000000000000000000)))}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 505
column: 1
content: functionhash(EIP712Domainmemory_domain)publicpurereturns(bytes32domainhash){bytes32typeHash=EIP712DOMAIN_TYPEHASH;bytes32nameHash=keccak256(bytes(_domain.name));bytes32versionHash=keccak256(bytes(_domain.version));assembly{lettemp1:=mload(sub(_domain,0x20))lettemp2:=mload(add(_domain,0x00))lettemp3:=mload(add(_domain,0x20))mstore(sub(_domain,0x20),typeHash)mstore(add(_domain,0x00),nameHash)mstore(add(_domain,0x20),versionHash)domainhash:=keccak256(sub(_domain,0x20),0xA0)mstore(sub(_domain,0x20),temp1)mstore(add(_domain,0x00),temp2)mstore(add(_domain,0x20),temp3)}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 540
column: 1
content: functionhash(AppOrdermemory_apporder)publicpurereturns(bytes32apphash){bytes32typeHash=APPORDER_TYPEHASH;assembly{lettemp1:=mload(sub(_apporder,0x20))mstore(sub(_apporder,0x20),typeHash)apphash:=keccak256(sub(_apporder,0x20),0x120)mstore(sub(_apporder,0x20),temp1)}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 571
column: 1
content: functionhash(DatasetOrdermemory_datasetorder)publicpurereturns(bytes32datasethash){bytes32typeHash=DATASETORDER_TYPEHASH;assembly{lettemp1:=mload(sub(_datasetorder,0x20))mstore(sub(_datasetorder,0x20),typeHash)datasethash:=keccak256(sub(_datasetorder,0x20),0x120)mstore(sub(_datasetorder,0x20),temp1)}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 602
column: 1
content: functionhash(WorkerpoolOrdermemory_workerpoolorder)publicpurereturns(bytes32workerpoolhash){bytes32typeHash=WORKERPOOLORDER_TYPEHASH;assembly{lettemp1:=mload(sub(_workerpoolorder,0x20))mstore(sub(_workerpoolorder,0x20),typeHash)workerpoolhash:=keccak256(sub(_workerpoolorder,0x20),0x160)mstore(sub(_workerpoolorder,0x20),temp1)}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 635
column: 1
content: functionhash(RequestOrdermemory_requestorder)publicpurereturns(bytes32requesthash){bytes32typeHash=REQUESTORDER_TYPEHASH;bytes32paramsHash=keccak256(bytes(_requestorder.params));assembly{lettemp1:=mload(sub(_requestorder,0x020))lettemp2:=mload(add(_requestorder,0x1A0))mstore(sub(_requestorder,0x020),typeHash)mstore(add(_requestorder,0x1A0),paramsHash)requesthash:=keccak256(sub(_requestorder,0x20),0x200)mstore(sub(_requestorder,0x020),temp1)mstore(add(_requestorder,0x1A0),temp2)}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 1212
column: 1
content: functionrecoverCheck(addresscandidate,bytes32hash,bytesmemorysign)internalpurereturns(bool){bytes32r;bytes32s;uint8v;if(sign.length!=65)returnfalse;assembly{r:=mload(add(sign,0x20))s:=mload(add(sign,0x40))v:=byte(0,mload(add(sign,0x60)))}if(v<27)v+=27;if(v!=27&&v!=28)returnfalse;returncandidate==ecrecover(hash,v,r,s);}

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 273
column: 100
content: (uint256[]memorypurposes,uint256keyType,bytes32key)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1314
column: 1
content: (address,address,uint256,address,address,uint256,address,address,uint256)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1327
column: 1
content: (uint256,bytes32,address,address,address,stringmemory)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1337
column: 1
content: (uint256,uint256,uint256,uint256,uint256,uint256)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1346
column: 23
content: (uint256,uint256)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1811
column: 1
content: (address,address,uint256,address,address,uint256,address,address,uint256)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1838
column: 1
content: (uint256,bytes32,address,address,address,stringmemory)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1859
column: 1
content: (uint256,uint256,uint256,uint256,uint256,uint256)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1879
column: 23
content: (uint256,uint256)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1973
column: 1
content: (IexecODBLibCore.TaskStatusEnum,bytes32,uint256,uint256,uint256,uint256,uint256,bytes32,uint256,uint256,address[]memory,bytesmemory)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1989
column: 1
content: (IexecODBLibCore.ContributionStatusEnum,bytes32,bytes32,address)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1996
column: 23
content: (stringmemory,stringmemory,uint256)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 2509
column: 1
content: (IexecODBLibCore.TaskStatusEnum,bytes32,uint256,uint256,uint256,uint256,uint256,bytes32,uint256,uint256,address[]memory,bytesmemory)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 2542
column: 1
content: (IexecODBLibCore.ContributionStatusEnum,bytes32,bytes32,address)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 2558
column: 23
content: (stringmemory,stringmemory,uint256)

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 179
column: 2
content: assembly{letarg:=xx:=sub(x,1)x:=or(x,div(x,0x02))x:=or(x,div(x,0x04))x:=or(x,div(x,0x10))x:=or(x,div(x,0x100))x:=or(x,div(x,0x10000))x:=or(x,div(x,0x100000000))x:=or(x,div(x,0x10000000000000000))x:=or(x,div(x,0x100000000000000000000000000000000))x:=add(x,1)letm:=mload(0x40)mstore(m,0xf8f9cbfae6cc78fbefe7cdc3a1793dfcf4f0e8bbd8cec470b6a28a7a5a3e1efd)mstore(add(m,0x20),0xf5ecf1b3e9debc68e1d9cfabc5997135bfb7a7a3938b7b606b5b4b3f2f1f0ffe)mstore(add(m,0x40),0xf6e4ed9ff2d6b458eadcdf97bd91692de2d4da8fd2d0ac50c6ae9a8272523616)mstore(add(m,0x60),0xc8c0b887b0a8a4489c948c7f847c6125746c645c544c444038302820181008ff)mstore(add(m,0x80),0xf7cae577eec2a03cf3bad76fb589591debb2dd67e0aa9834bea6925f6a4a2e0e)mstore(add(m,0xa0),0xe39ed557db96902cd38ed14fad815115c786af479b7e83247363534337271707)mstore(add(m,0xc0),0xc976c13bb96e881cb166a933a55e490d9d56952b8d4e801485467d2362422606)mstore(add(m,0xe0),0x753a6d1b65325d0c552a4d1345224105391a310b29122104190a110309020100)mstore(0x40,add(m,0x100))letmagic:=0x818283848586878898a8b8c8d8e8f929395969799a9b9d9e9faaeb6bedeeffletshift:=0x100000000000000000000000000000000000000000000000000000000000000leta:=div(mul(x,magic),shift)y:=div(mload(add(m,sub(255,a))),shift)y:=add(y,mul(256,gt(arg,0x8000000000000000000000000000000000000000000000000000000000000000)))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 523
column: 2
content: assembly{lettemp1:=mload(sub(_domain,0x20))lettemp2:=mload(add(_domain,0x00))lettemp3:=mload(add(_domain,0x20))mstore(sub(_domain,0x20),typeHash)mstore(add(_domain,0x00),nameHash)mstore(add(_domain,0x20),versionHash)domainhash:=keccak256(sub(_domain,0x20),0xA0)mstore(sub(_domain,0x20),temp1)mstore(add(_domain,0x00),temp2)mstore(add(_domain,0x20),temp3)}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 560
column: 2
content: assembly{lettemp1:=mload(sub(_apporder,0x20))mstore(sub(_apporder,0x20),typeHash)apphash:=keccak256(sub(_apporder,0x20),0x120)mstore(sub(_apporder,0x20),temp1)}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 591
column: 2
content: assembly{lettemp1:=mload(sub(_datasetorder,0x20))mstore(sub(_datasetorder,0x20),typeHash)datasethash:=keccak256(sub(_datasetorder,0x20),0x120)mstore(sub(_datasetorder,0x20),temp1)}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 624
column: 2
content: assembly{lettemp1:=mload(sub(_workerpoolorder,0x20))mstore(sub(_workerpoolorder,0x20),typeHash)workerpoolhash:=keccak256(sub(_workerpoolorder,0x20),0x160)mstore(sub(_workerpoolorder,0x20),temp1)}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 665
column: 2
content: assembly{lettemp1:=mload(sub(_requestorder,0x020))lettemp2:=mload(add(_requestorder,0x1A0))mstore(sub(_requestorder,0x020),typeHash)mstore(add(_requestorder,0x1A0),paramsHash)requesthash:=keccak256(sub(_requestorder,0x20),0x200)mstore(sub(_requestorder,0x020),temp1)mstore(add(_requestorder,0x1A0),temp2)}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 1219
column: 2
content: assembly{r:=mload(add(sign,0x20))s:=mload(add(sign,0x40))v:=byte(0,mload(add(sign,0x60)))}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 797
column: 1
content: functioncreateApp(address_appOwner,stringcalldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 867
column: 1
content: functioncreateDataset(address_datasetOwner,stringcalldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 1012
column: 1
content: functioncreateCategory(stringcalldataname,stringcalldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 696
column: 1
content: mapping(address=>bool)m_registered;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 697
column: 1
content: mapping(address=>mapping(uint256=>address))m_byOwnerByIndex;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 698
column: 1
content: mapping(address=>uint256)m_countByOwner;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 799
column: 19
content: _appName,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 800
column: 2
content: stringcalldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 800
column: 19
content: _appType,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 801
column: 2
content: bytescalldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 801
column: 19
content: _appMultiaddr,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 802
column: 2
content: bytes32_appChecksum,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 803
column: 2
content: bytescalldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 804
column: 53
content: (App){AppnewApp=newApp(_appOwner,_appName,_appType,_appMultiaddr,_appChecksum,_appMREnclave);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 814
column: 2
content: require(insert

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 814
column: 16
content: (address<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 814
column: 24
content: (newApp),_appOwner));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 815
column: 2
content: emitCreateApp

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 815
column: 16
content: (_appOwner,<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 815
column: 28
content: address(newApp));return

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 816
column: 9
content: newApp;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 869
column: 19
content: _datasetName,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 870
column: 2
content: bytescalldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 870
column: 19
content: _datasetMultiaddr,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 871
column: 2
content: bytes32_datasetChecksum)externalreturns

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 872
column: 53
content: (Dataset){DatasetnewDataset=newDataset(_datasetOwner,_datasetName,_datasetMultiaddr,_datasetChecksum);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 880
column: 2
content: require(insert

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 880
column: 16
content: (address<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 880
column: 24
content: (newDataset),_datasetOwner));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 881
column: 2
content: emitCreateDataset

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 881
column: 20
content: (_datasetOwner,<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 881
column: 36
content: address(newDataset));return

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 882
column: 9
content: newDataset;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 975
column: 1
content: IexecODBLibCore.Category[]m_categories;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1014
column: 19
content: description,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1015
column: 2
content: uint256workClockTimeRef)external

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1016
column: 10
content: onlyOwnerreturns

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1016
column: 28
content: (uint256){

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1018
column: 2
content: uint256catid=m_categories.push(IexecODBLibCore.Category(name,description,workClockTimeRef))-1;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1024
column: 2
content: emitCreateCategory

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1024
column: 21
content: (catid,name,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1027
column: 3
content: description,workClockTimeRef);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1030
column: 9
content: catid;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1065
column: 1
content: mapping(address=>IexecODBLibCore.Account)m_accounts;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1383
column: 1
content: mapping(bytes32=>bytes32[])m_requestdeals;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1384
column: 1
content: mapping(bytes32=>IexecODBLibCore.Deal)m_deals;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1385
column: 1
content: mapping(bytes32=>uint256)m_consumed;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1386
column: 1
content: mapping(bytes32=>bool)m_presigned;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2027
column: 1
content: mapping(bytes32=>IexecODBLibCore.Task)m_tasks;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2028
column: 1
content: mapping(bytes32=>mapping(address=>IexecODBLibCore.Contribution))m_contributions;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2029
column: 1
content: mapping(address=>uint256)m_workerScores;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2031
column: 1
content: mapping(bytes32=>mapping(address=>uint256))m_logweight;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2032
column: 1
content: mapping(bytes32=>mapping(bytes32=>uint256))m_groupweight;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 2033
column: 1
content: mapping(bytes32=>uint256)m_totalweight;

SOLIDITY_VISIBILITY :54
SOLIDITY_SAFEMATH :4
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN :6
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :9
SOLIDITY_ADDRESS_HARDCODED :8
SOLIDITY_GAS_LIMIT_IN_LOOPS :9
SOLIDITY_USING_INLINE_ASSEMBLY :7
SOLIDITY_SHOULD_RETURN_STRUCT :15
SOLIDITY_SHOULD_NOT_BE_PURE :7

