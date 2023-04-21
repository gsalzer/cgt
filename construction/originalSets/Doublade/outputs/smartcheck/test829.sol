reorder_contracts_2_3/test829.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 236
column: 19
content: 0x100000000000000000000000000000000

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 43ba1c
severity: 1
line: 147
column: 22
content: pendingsIndex.length++

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 187b5a
severity: 1
line: 86
column: 77
content: sha3

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 187b5a
severity: 1
line: 203
column: 45
content: sha3

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 187b5a
severity: 1
line: 209
column: 53
content: sha3

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 187b5a
severity: 1
line: 431
column: 73
content: sha3

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 78
column: 34
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 91
column: 34
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 112
column: 2
content: functiongetOwner(uintownerIndex)externalconstantreturns(address){returnaddress(owners[ownerIndex+1]);}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 116
column: 2
content: functionisOwner(address_addr)constantreturns(bool){returnownerIndex[_addr]>0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 120
column: 2
content: functionhasConfirmed(bytes32_operation,address_owner)constantreturns(bool){varpending=pendings[_operation];uintindex=ownerIndex[_owner];if(index==0)returnfalse;uintownerIndexBit=2**index;return!(pending.ownersDone&ownerIndexBit==0);}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 308
column: 4
content: functiongetMintable()constantreturns(uint256){returnsafeSubtract(safeAdd(initial_disbursement,safeMultiply(weekly_disbursement,safeSubtract(block.timestamp,deploy_time))/1weeks),total_minted);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 74
column: 4
content: for(uinti=0;i<_owners.length;++i){owners[2+i]=_owners[i];ownerIndex[_owners[i]]=2+i;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 87
column: 4
content: for(uinti=0;i<_owners.length;++i){owners[1+i]=_owners[i];ownerIndex[_owners[i]]=1+i;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 74
column: 4
content: for(uinti=0;i<_owners.length;++i){owners[2+i]=_owners[i];ownerIndex[_owners[i]]=2+i;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 87
column: 4
content: for(uinti=0;i<_owners.length;++i){owners[1+i]=_owners[i];ownerIndex[_owners[i]]=1+i;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 173
column: 4
content: for(uinti=0;i<length;++i)if(pendingsIndex[i]!=0)deletependings[pendingsIndex[i]];

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 214
column: 0
content: contractSafe{functionsafeAdd(uinta,uintb)internalreturns(uint){uintc=a+b;assert(c>=a&&c>=b);returnc;}functionsafeSubtract(uinta,uintb)internalreturns(uint){uintc=a-b;assert(b<=a&&c<=a);returnc;}functionsafeMultiply(uinta,uintb)internalreturns(uint){uintc=a*b;assert(a==0||(c/a)==b);returnc;}functionshrink128(uinta)internalreturns(uint128){assert(a<0x100000000000000000000000000000000);returnuint128(a);}modifieronlyPayloadSize(uintnumWords){assert(msg.data.length==numWords*32+4);_;}function()payable{}}

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 78
column: 4
content: if(required>owners.length)throw;

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 91
column: 4
content: if(required>owners.length)throw;

ruleId: SOLIDITY_VAR
patternId: d28aa7
severity: 2
line: 398
column: 8
content: varmax_deposit_address=1000000

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 71
column: 2
content: functionShareable(address[]_owners,uint_required){owners[1]=msg.sender;ownerIndex[msg.sender]=1;for(uinti=0;i<_owners.length;++i){owners[2+i]=_owners[i];ownerIndex[_owners[i]]=2+i;}if(required>owners.length)throw;required=_required;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 86
column: 2
content: functionchangeShareable(address[]_owners,uint_required)onlyManyOwners(sha3(msg.data)){for(uinti=0;i<_owners.length;++i){owners[1+i]=_owners[i];ownerIndex[_owners[i]]=1+i;}if(required>owners.length)throw;required=_required;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 116
column: 2
content: functionisOwner(address_addr)constantreturns(bool){returnownerIndex[_addr]>0;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 120
column: 2
content: functionhasConfirmed(bytes32_operation,address_owner)constantreturns(bool){varpending=pendings[_operation];uintindex=ownerIndex[_owner];if(index==0)returnfalse;uintownerIndexBit=2**index;return!(pending.ownersDone&ownerIndexBit==0);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 193
column: 2
content: functionStoppableShareable(address[]_owners,uint_required)Shareable(_owners,_required){}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 247
column: 4
content: function()payable{}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 308
column: 4
content: functiongetMintable()constantreturns(uint256){returnsafeSubtract(safeAdd(initial_disbursement,safeMultiply(weekly_disbursement,safeSubtract(block.timestamp,deploy_time))/1weeks),total_minted);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 322
column: 4
content: functionNumeraireDelegate(address[]_owners,uint256_num_required)StoppableShareable(_owners,_num_required){}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 326
column: 4
content: functionmint(uint256_value)onlyOwnerreturns(boolok){require(safeAdd(total_minted,_value)<=supply_cap);require(_value<=getMintable());balanceOf[numerai]=safeAdd(balanceOf[numerai],_value);totalSupply=safeAdd(totalSupply,_value);total_minted=safeAdd(total_minted,_value);Mint(_value);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 344
column: 4
content: functionreleaseStake(address_staker,bytes32_tag,uint256_etherValue,uint256_tournamentID,uint256_roundID,bool_successful)onlyOwnerstopInEmergencyreturns(boolok){varround=tournaments[_tournamentID].rounds[_roundID];varstake=round.stakes[_staker][_tag];varoriginalStakeAmount=stake.amount;require(stake.amount>0);require(!stake.resolved);require(round.resolutionTime<=block.timestamp);stake.amount=0;balanceOf[_staker]=safeAdd(balanceOf[_staker],originalStakeAmount);stake.resolved=true;stake.successful=_successful;if(_etherValue>0){if(!_staker.send(_etherValue)){stake.amount=originalStakeAmount;balanceOf[_staker]-=originalStakeAmount;stake.resolved=false;stake.successful=false;returnfalse;}}StakeReleased(_tournamentID,_roundID,_staker,_tag,_etherValue);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 373
column: 4
content: functiondestroyStake(address_staker,bytes32_tag,uint256_tournamentID,uint256_roundID)onlyOwnerstopInEmergencyreturns(boolok){varround=tournaments[_tournamentID].rounds[_roundID];varstake=round.stakes[_staker][_tag];varoriginalStakeAmount=stake.amount;require(stake.amount>0);require(!stake.resolved);require(round.resolutionTime<=block.timestamp);stake.amount=0;totalSupply=safeSubtract(totalSupply,originalStakeAmount);stake.resolved=true;stake.successful=false;StakeDestroyed(_tournamentID,_roundID,_staker,_tag);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 392
column: 4
content: functionstake(uint256_value,bytes32_tag,uint256_tournamentID,uint256_roundID,uint256_confidence)stopInEmergencyreturns(boolok){return_stake(msg.sender,_value,_tag,_tournamentID,_roundID,_confidence);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 397
column: 4
content: functionstakeOnBehalf(address_staker,uint256_value,bytes32_tag,uint256_tournamentID,uint256_roundID,uint256_confidence)onlyOwnerstopInEmergencyreturns(boolok){varmax_deposit_address=1000000;require(_staker<=max_deposit_address);return_stake(_staker,_value,_tag,_tournamentID,_roundID,_confidence);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 431
column: 4
content: functionnumeraiTransfer(address_to,uint256_value)onlyManyOwners(sha3(msg.data))returns(boolok){if(_value==0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF){if(address(owners[ownerIndex[_to]])!=_to){ownerIndex[_to]=0;}returntrue;}require(balanceOf[numerai]>=_value);balanceOf[numerai]=safeSubtract(balanceOf[numerai],_value);balanceOf[_to]=safeAdd(balanceOf[_to],_value);Transfer(numerai,_to,_value);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 455
column: 4
content: functionwithdraw(address_from,address_to,uint256_value)onlyOwnerreturns(boolok){addressmax_deposit_address=1000000;require(_from<=max_deposit_address);require(balanceOf[_from]>=_value);balanceOf[_from]=safeSubtract(balanceOf[_from],_value);balanceOf[_to]=safeAdd(balanceOf[_to],_value);Transfer(_from,_to,_value);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 470
column: 4
content: functioncreateTournament(uint256_tournamentID)onlyOwnerreturns(boolok){vartournament=tournaments[_tournamentID];require(tournament.creationTime==0);tournament.creationTime=block.timestamp;TournamentCreated(_tournamentID);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 478
column: 4
content: functioncreateRound(uint256_tournamentID,uint256_roundID,uint256_endTime,uint256_resolutionTime)onlyOwnerreturns(boolok){vartournament=tournaments[_tournamentID];varround=tournament.rounds[_roundID];require(_endTime<=_resolutionTime);require(tournament.creationTime>0);require(round.creationTime==0);tournament.roundIDs.push(_roundID);round.creationTime=block.timestamp;round.endTime=_endTime;round.resolutionTime=_resolutionTime;RoundCreated(_tournamentID,_roundID,round.endTime,round.resolutionTime);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 31
column: 2
content: address[256]owners;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 32
column: 2
content: uintconstantc_maxOwners=250;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 34
column: 2
content: mapping(address=>uint)ownerIndex;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 36
column: 2
content: mapping(bytes32=>PendingState)pendings;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 37
column: 2
content: bytes32[]pendingsIndex;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 50
column: 2
content: addressthisContract=this;

SOLIDITY_VISIBILITY :23
SOLIDITY_DEPRECATED_CONSTRUCTIONS :10
SOLIDITY_ARRAY_LENGTH_MANIPULATION :1
SOLIDITY_REVERT_REQUIRE :2
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_VAR :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :2
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_GAS_LIMIT_IN_LOOPS :3

