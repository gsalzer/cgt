reorder_contracts_2_3/test156.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1237
column: 8
content: for(uint256i=0;i<_necessaryVoices;i++){if(_disputesById[id].choices[i].choice==Choice.INVESTOR_WINS){votesForInvestor++;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1288
column: 8
content: for(uint256i=0;i<disputesLength;i++){disputesIDs[i]=_disputesByMilestone[hash][i];}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 159
column: 0
content: contractOperatorRole{addresspayableprivate_operator;eventOwnershipTransferred(addressindexedpreviousOperator,addressindexednewOperator);modifieronlyOperator(){require(isOperator(),"onlyOperator: only the operator can call this method.");_;}constructor(addresspayableoperator)internal{_operator=operator;emitOwnershipTransferred(address<missing ';'>(0),operator);}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 228
column: 0
content: contractCrowdsaleisReentrancyGuard,ClusterRole,OperatorRole{usingSafeMathforuint256;IERC20internal_token;uint256private_fee;uint256private_rate;uint256private_minInvestmentAmount;uint256internal_weiRaised;uint256internal_tokensSold;addressprivate_newContract;boolprivate_emergencyExitCalled;address[]private_investors;structInvestor{uint256eth;uint256tokens;uint256withdrawnEth;uint256withdrawnTokens;boolrefunded;}mapping(address=>Investor)internal_balances;structBonus{uint256amount;uint256finishTimestamp;}Bonus[]private_bonuses;eventDeposited(addressindexedbeneficiary,uint256indexedweiAmount,uint256indexedtokensAmount,uint256fee);eventEthTransfered(addressindexedbeneficiary,uint256weiAmount);eventTokensTransfered(addressindexedbeneficiary,uint256tokensAmount);eventRefunded(addressindexedbeneficiary,uint256indexedweiAmount);eventEmergencyExitCalled(addressindexednewContract,uint256indexedtokensAmount,uint256indexedweiAmount);constructor(uint256rate,addresstoken,address<missing ')'>payableoperator,uint256[]memorybonusFinishTimestamp,uint256[]memorybonuses,uint256minInvestmentAmount,uint256fee)internalOperatorRole(operator){if(bonuses.length>0){for<missing ';'>(uint256<missing ')'>i=0;i<bonuses.length;i++){if(i!=0){require(bonusFinishTimestamp[i]>bonusFinishTimestamp[i-1],"Crowdsale: invalid bonus finish timestamp.");}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 527
column: 0
content: contractTimedCrowdsaleisCrowdsale{uint256private_openingTime;uint256private_closingTime;modifieronlyWhileOpen(){require(isOpen(),"onlyWhileOpen: investor can call this method only when crowdsale is open.");_;}constructor(uint256rate,addresstoken,uint256openingTime,uint256closingTime,address<missing ')'>payableoperator,uint256[]memorybonusFinishTimestamp,uint256[]memorybonuses,uint256minInvestmentAmount,uint256fee)internalCrowdsale(rate,token,operator,bonusFinishTimestamp,bonuses,minInvestmentAmount,fee){if(bonusFinishTimestamp.length>0){require(bonusFinishTimestamp[0]>=openingTime,"TimedCrowdsale: the opening time is smaller then the first bonus timestamp.");require(bonusFinishTimestamp[bonusFinishTimestamp.length-1]<=closingTime,"TimedCrowdsale: the closing time is smaller then the last bonus timestamp.");}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 645
column: 0
content: contractResponsibleCrowdsaleisTimedCrowdsale{uint256private_cycleId;uint256private_milestoneId;uint256privateconstant_timeForDisputs=10minutes;uint256private_allCyclesTokensPercent;uint256private_allCyclesEthPercent;boolprivate_operatorTransferedTokens;enumMilestoneStatus{PENDING,DISPUTS_PERIOD,APPROVED}enumInvestorDisputeState{NO_DISPUTES,SUBMITTED,CLOSED,WINNED}structCycle{uint256tokenPercent;uint256ethPercent;bytes32[]milestones;}structDispute{uint256activeDisputes;address[]winnedAddressList;mapping(address=>InvestorDisputeState)investorDispute;}structMilestone{bytes32name;uint256startTimestamp;uint256disputesOpeningTimestamp;uint256cycleId;uint256tokenPercent;uint256ethPercent;Disputedisputes;booloperatorWasWithdrawn;boolvalidHash;mapping(address=>bool)userWasWithdrawn;}mapping(uint256=>Cycle)private_cycles;mapping(uint256=>bytes32)private_milestones;mapping(bytes32=>Milestone)private_milestoneDetails;eventMilestoneInvestmentsWithdrawn(bytes32indexedmilestoneHash,uint256weiAmount,uint256tokensAmount);eventMilestoneResultWithdrawn(bytes32indexedmilestoneHash,addressindexedinvestor,uint256weiAmount,uint256tokensAmount);constructor(uint256rate,addresstoken,uint256openingTime,uint256closingTime,address<missing ')'>payableoperator,uint256[]memorybonusFinishTimestamp,uint256[]memorybonuses,uint256minInvestmentAmount,uint256fee)publicTimedCrowdsale(rate,token,openingTime,closingTime,operator,bonusFinishTimestamp,bonuses,minInvestmentAmount,fee){}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 1358
column: 0
content: contractOwnable{addresspayableprivate_owner;eventOwnershipTransferred(addressindexedpreviousOwner,addressindexednewOwner);constructor()internal{_owner=msg.sender;emitOwnershipTransferred(address(0),_owner);}functionowner()publicviewreturns(addresspayable){return_owner;}modifieronlyOwner(){require(isOwner(),"onlyOwner: only the owner can call this method.");_;}functionisOwner()publicviewreturns(bool){returnmsg.sender==_owner;}functiontransferOwnership(addresspayablenewOwner)publiconlyOwner{_transferOwnership(newOwner);}

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 98
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 124
column: 20
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 160
column: 20
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 234
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 235
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 236
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 243
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 244
column: 9
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 246
column: 14
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 265
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 528
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 529
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 646
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 647
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 648
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 650
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 651
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 653
column: 9
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 684
column: 30
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 687
column: 32
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 690
column: 34
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1087
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1092
column: 15
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1149
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1150
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1155
column: 13
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1173
column: 34
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1174
column: 32
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1359
column: 20
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1421
column: 15
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1454
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1456
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1457
column: 14
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1459
column: 34
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1461
column: 18
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 229
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1272
column: 65
content: (bytes32,address,address,stringmemory,uint256,DisputeStatusstatus)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1295
column: 62
content: (address[]memoryarbiters,Choice[]memorychoices)

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 176
column: 4
content: constructor(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 279
column: 4
content: constructor(uint256rate,addresstoken,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 544
column: 4
content: constructor(uint256rate,addresstoken,uint256openingTime,uint256closingTime,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 695
column: 4
content: constructor(uint256rate,addresstoken,uint256openingTime,uint256closingTime,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 1026
column: 4
content: functionaddCrowdsale(uint256rate,addresstoken,uint256openingTime,uint256closingTime,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 1343
column: 4
content: functionemergencyExit(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 1398
column: 4
content: functiontransferOwnership(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 1510
column: 4
content: functionaddCrowdsale(uint256rate,addresstoken,uint256openingTime,uint256closingTime,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 178
column: 8
content: emitOwnershipTransferred

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 178
column: 33
content: (address<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 178
column: 41
content: (0),operator);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 282
column: 24
content: operator,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 283
column: 8
content: uint256[]memorybonusFinishTimestamp,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 284
column: 8
content: uint256[]memorybonuses,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 285
column: 8
content: uint256minInvestmentAmount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 286
column: 8
content: uint256fee)internal

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 287
column: 19
content: OperatorRole(operator){if

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 288
column: 11
content: (bonuses.length>0){for<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 289
column: 16
content: (uint256<missing ')'>i=0;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 289
column: 32
content: i<bonuses.

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 289
column: 44
content: length;i++){if

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 290
column: 19
content: (i!=0){require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 291
column: 27
content: (bonusFinishTimestamp[i]>bonusFinishTimestamp[

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 291
column: 75
content: i-1],"Crowdsale: invalid bonus finish timestamp.");

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 549
column: 24
content: operator,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 550
column: 8
content: uint256[]memorybonusFinishTimestamp,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 551
column: 8
content: uint256[]memorybonuses,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 552
column: 8
content: uint256minInvestmentAmount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 553
column: 8
content: uint256fee)internal

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 554
column: 19
content: Crowdsale(rate,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 554
column: 35
content: token,operator,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 554
column: 52
content: bonusFinishTimestamp,bonuses,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 554
column: 83
content: minInvestmentAmount,fee){if

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 555
column: 11
content: (bonusFinishTimestamp.length>0){require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 556
column: 19
content: (bonusFinishTimestamp[0]>=openingTime,"TimedCrowdsale: the opening time is smaller then the first bonus timestamp.");

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 557
column: 12
content: require(bonusFinishTimestamp[

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 557
column: 41
content: bonusFinishTimestamp.length-1]<=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 557
column: 77
content: closingTime,"TimedCrowdsale: the closing time is smaller then the last bonus timestamp.");

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 700
column: 24
content: operator,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 701
column: 8
content: uint256[]memorybonusFinishTimestamp,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 702
column: 8
content: uint256[]memorybonuses,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 703
column: 8
content: uint256minInvestmentAmount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 704
column: 8
content: uint256fee)public

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 705
column: 17
content: TimedCrowdsale(rate,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 705
column: 38
content: token,openingTime,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 705
column: 58
content: closingTime,operator,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 705
column: 81
content: bonusFinishTimestamp,bonuses,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 705
column: 112
content: minInvestmentAmount,fee){

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1031
column: 24
content: operator,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1032
column: 8
content: uint256[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1032
column: 27
content: bonusFinishTimestamp,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1033
column: 8
content: uint256[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1033
column: 27
content: bonuses,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1034
column: 8
content: uint256minInvestmentAmount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1035
column: 8
content: uint256fee)externalreturns

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1036
column: 27
content: (address){return

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1037
column: 16
content: address

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1037
column: 23
content: (newResponsibleCrowdsale<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1037
column: 48
content: (rate,token,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1037
column: 62
content: openingTime,closingTime,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1037
column: 88
content: operator,bonusFinishTimestamp,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1037
column: 120
content: bonuses,minInvestmentAmount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1037
column: 150
content: fee));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1399
column: 8
content: _transferOwnership(newOwner);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1515
column: 24
content: operator,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1516
column: 8
content: uint256[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1516
column: 27
content: bonusFinishTimestamp,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1517
column: 8
content: uint256[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1517
column: 27
content: bonuses,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1518
column: 8
content: uint256minInvestmentAmount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1519
column: 8
content: uint256fee)external

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1520
column: 19
content: onlyBackEndreturns

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1520
column: 39
content: (address){require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1521
column: 15
content: (rate!=0,"addCrowdsale: the rate should be bigger then 0.");require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1522
column: 15
content: (token!=<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1522
column: 25
content: address

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1522
column: 32
content: (0),"addCrowdsale: invalid token address.");

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1523
column: 8
content: require(openingTime>=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1523
column: 31
content: block.timestamp,"addCrowdsale: invalid opening time.");

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1524
column: 8
content: require(closingTime>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1524
column: 30
content: openingTime,"addCrowdsale: invalid closing time.");

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1525
column: 8
content: require(operator!=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1525
column: 28
content: address

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1525
column: 35
content: (0),"addCrowdsale: the address of operator is not valid.");

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1526
column: 8
content: require(bonusFinishTimestamp.

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1526
column: 37
content: length==bonuses.

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1526
column: 55
content: length,"addCrowdsale: the length of bonusFinishTimestamp and bonuses is not equal.");

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1528
column: 8
content: addresscrowdsale=CrowdsaleDeployer.addCrowdsale(rate,token,openingTime,closingTime,operator,bonusFinishTimestamp,bonuses,minInvestmentAmount,fee);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1541
column: 8
content: _crowdsales.push(crowdsale);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1542
column: 8
content: _operatorsContracts[operator].push

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1542
column: 42
content: (crowdsale);emit

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1544
column: 13
content: CrowdsaleCreated(crowdsale,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1546
column: 12
content: rate,token,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1548
column: 12
content: openingTime,closingTime,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1550
column: 12
content: operator,bonusFinishTimestamp,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1552
column: 12
content: bonuses,minInvestmentAmount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1554
column: 12
content: fee);return

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 1556
column: 15
content: crowdsale;

SOLIDITY_VISIBILITY :98
SOLIDITY_SAFEMATH :1
SOLIDITY_LOCKED_MONEY :5
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :35
SOLIDITY_EXTRA_GAS_IN_LOOPS :1
SOLIDITY_GAS_LIMIT_IN_LOOPS :1
SOLIDITY_SHOULD_RETURN_STRUCT :2

