reorder_contracts_2_3/test626.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 523
column: 4
content: functionvalidPurchase()internalconstantreturns(bool){boolminContribution=minContribAmount<=msg.value;boolwithinPeriod=now>=startTime&&now<=endTime;boolnonZeroPurchase=msg.value!=0;boolPublicsale=publicAllocation!=0;returnwithinPeriod&&minContribution&&nonZeroPurchase&&Publicsale;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 531
column: 4
content: functiongetNow()publicconstantreturns(uint){return(now);}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 535
column: 4
content: functiongetTimebasedBonusRate()internalconstantreturns(uint256){uint256bonusRate=0;if(stage==Stage.PUBLICSALE){uint256nowTime=getNow();uint256week1=startTime+(7days);uint256week2=startTime+(14days);uint256week3=startTime+(21days);uint256week4=startTime+(14days);if(nowTime<=week1){bonusRate=15;}elseif(nowTime<=week2){bonusRate=15;}elseif(nowTime<=week3){bonusRate=10;}elseif(nowTime<=week4){bonusRate=10;}}returnbonusRate;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 557
column: 4
content: functiongetVolumebasedBonusRate(uint256value)internalconstantreturns(uint256){uint256bonusRate=0;if(stage==Stage.PRESALE){uint256volume=value.div(1ether);if(volume>=70&&volume<=100){bonusRate=15;}elseif(volume>=40&&volume<=69){bonusRate=10;}elseif(volume>=10&&volume<=39){bonusRate=5;}}returnbonusRate;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 584
column: 3
content: functionisMinimumGoalReached()publicconstantreturns(boolreached){returnweiRaised>=softCap;}

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 149
column: 2
content: functionapprove(address_spender,uint256_value)publicreturns(bool){allowed[msg.sender][_spender]=_value;Approval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 433
column: 0
content: contractVendCrowdsaleisCrowdsale,Ownable,CappedCrowdsale{enumStage{PRESALE,PUBLICSALE}Stagepublicstage;uint256privateconstantDECIMALFACTOR=10**uint256(18);uint256publicpublicAllocation=120000000*DECIMALFACTOR;uint256publicadvisorsAllocation=20000000*DECIMALFACTOR;uint256publicmarketAllocation=20000000*DECIMALFACTOR;uint256publicfounderAllocation=40000000*DECIMALFACTOR;uint256publicsoftCap=9000ether;boolpublicisGoalReached=false;mapping(address=>uint256)publicinvestedAmountOf;uint256publicinvestorCount;uint256publicminContribAmount=0.1ether;eventMinimumGoalReached();eventBurn(addressindexedburner,uint256value);functionVendCrowdsale(uint256_startTime,uint256_endTime,uint256_rate,address_wallet,uint256_cap)Crowdsale(_startTime,_endTime,_rate,_wallet)CappedCrowdsale(_cap*DECIMALFACTOR){stage=Stage.PRESALE;}functioncreateTokenContract()internalreturns(MintableToken){returnnewVend();}functionbuyTokens(addressbeneficiary)publicpayable{require(validPurchase());uint256weiAmount=msg.value;uint256tokens=weiAmount.mul(rate);uint256timebasedBonus=tokens.mul(getTimebasedBonusRate()).div(100);uint256volumebasedBonus=tokens.mul(getVolumebasedBonusRate(weiAmount)).div(100);tokens=tokens.add(timebasedBonus);tokens=tokens.add(volumebasedBonus);assert(tokens<=publicAllocation);if(investedAmountOf[beneficiary]==0){investorCount++;}investedAmountOf[beneficiary]=investedAmountOf[beneficiary].add(weiAmount);if(stage==Stage.PRESALE){assert(tokens<=publicAllocation);publicAllocation=publicAllocation.sub(tokens);}else{assert(tokens<=publicAllocation);publicAllocation=publicAllocation.sub(tokens);}forwardFunds();weiRaised=weiRaised.add(weiAmount);token.mint(beneficiary,tokens);TokenPurchase(msg.sender,beneficiary,weiAmount,tokens);if(!isGoalReached&&weiRaised>=softCap){isGoalReached=true;MinimumGoalReached();}}functionvalidPurchase()internalconstantreturns(bool){boolminContribution=minContribAmount<=msg.value;boolwithinPeriod=now>=startTime&&now<=endTime;boolnonZeroPurchase=msg.value!=0;boolPublicsale=publicAllocation!=0;returnwithinPeriod&&minContribution&&nonZeroPurchase&&Publicsale;}functiongetNow()publicconstantreturns(uint){return(now);}functiongetTimebasedBonusRate()internalconstantreturns(uint256){uint256bonusRate=0;if(stage==Stage.PUBLICSALE){uint256nowTime=getNow();uint256week1=startTime+(7days);uint256week2=startTime+(14days);uint256week3=startTime+(21days);uint256week4=startTime+(14days);if(nowTime<=week1){bonusRate=15;}elseif(nowTime<=week2){bonusRate=15;}elseif(nowTime<=week3){bonusRate=10;}elseif(nowTime<=week4){bonusRate=10;}}returnbonusRate;}functiongetVolumebasedBonusRate(uint256value)internalconstantreturns(uint256){uint256bonusRate=0;if(stage==Stage.PRESALE){uint256volume=value.div(1ether);if(volume>=70&&volume<=100){bonusRate=15;}elseif(volume>=40&&volume<=69){bonusRate=10;}elseif(volume>=10&&volume<=39){bonusRate=5;}}returnbonusRate;}functionstartPublicsale(uint256_startTime,uint256_endTime)publiconlyOwner{require(_endTime>=_startTime);stage=Stage.PUBLICSALE;startTime=_startTime;endTime=_endTime;}functionisMinimumGoalReached()publicconstantreturns(boolreached){returnweiRaised>=softCap;}functionchangeEnd(uint256_endTime)publiconlyOwner{require(_endTime!=0);endTime=_endTime;}functionchangeRate(uint256_rate)publiconlyOwner{require(_rate!=0);rate=_rate;}functiontransferAdvisorsToken(address_to,uint256_value)onlyOwner{require(_to!=0x0&&_value>0&&advisorsAllocation>=_value);token.mint(_to,_value);advisorsAllocation=advisorsAllocation.sub(_value);}functiontransferMarketallocationTokens(address_to,uint256_value)onlyOwner{require(_to!=0x0&&_value>0&&marketAllocation>=_value);token.mint(_to,_value);marketAllocation=marketAllocation.sub(_value);}functiontransferFounderTokens(address_to,uint256_value)onlyOwner{require(_to!=0x0&&_value>0&&founderAllocation>=_value);token.mint(_to,_value);founderAllocation=founderAllocation.sub(_value);}functionburnToken(uint256_value)onlyOwner{require(_value>0);publicAllocation=publicAllocation.sub(_value);Burn(msg.sender,_value);}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 441
column: 9
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 65
column: 2
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 291
column: 2
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 389
column: 2
content: usingSafeMathforuint256;

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 472
column: 1
content: functionVendCrowdsale(uint256_startTime,uint256_endTime,uint256_rate,address_wallet,uint256_cap)Crowdsale(_startTime,_endTime,_rate,_wallet)CappedCrowdsale(_cap*DECIMALFACTOR){stage=Stage.PRESALE;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 614
column: 4
content: functiontransferAdvisorsToken(address_to,uint256_value)onlyOwner{require(_to!=0x0&&_value>0&&advisorsAllocation>=_value);token.mint(_to,_value);advisorsAllocation=advisorsAllocation.sub(_value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 629
column: 4
content: functiontransferMarketallocationTokens(address_to,uint256_value)onlyOwner{require(_to!=0x0&&_value>0&&marketAllocation>=_value);token.mint(_to,_value);marketAllocation=marketAllocation.sub(_value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 645
column: 1
content: functiontransferFounderTokens(address_to,uint256_value)onlyOwner{require(_to!=0x0&&_value>0&&founderAllocation>=_value);token.mint(_to,_value);founderAllocation=founderAllocation.sub(_value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 658
column: 1
content: functionburnToken(uint256_value)onlyOwner{require(_value>0);publicAllocation=publicAllocation.sub(_value);Burn(msg.sender,_value);}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 67
column: 2
content: mapping(address=>uint256)balances;

SOLIDITY_VISIBILITY :6
SOLIDITY_SAFEMATH :3
SOLIDITY_DEPRECATED_CONSTRUCTIONS :5
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :1
SOLIDITY_ERC20_APPROVE :1

