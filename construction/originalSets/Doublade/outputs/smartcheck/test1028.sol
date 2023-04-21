reorder_contracts_2_3/test1028.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 120
column: 8
content: _owner=address(0)

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 382
column: 0
content: contractCrowdsaleisReentrancyGuard{usingSafeMathforuint256;usingSafeERC20forIERC20;IERC20private_token;addresspayableprivate_wallet;uint256private_rate;uint256private_weiRaised;eventTokensPurchased(addressindexedpurchaser,addressindexedbeneficiary,uint256value,uint256amount);constructor(uint256rate,address<missing ')'>payablewallet,IERC20token)public{require(rate>0);require(wallet!=<missing ';'>address(0));require(address<missing ';'>(token)!=address(0));_rate=rate;_wallet=wallet;_token=token;}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 764
column: 0
content: contractMocoCrowdsaleisTimedCrowdsale,AllowanceCrowdsale,Whitelisted,Referral{uint256publicbonusPeriod;uint256publicbonusAmount;uint256private_weiRaised;uint256private_weiRefRaised;uint256private_totalManagerRewards;uint256private_minAmount;uint256private_unlock1;uint256private_unlock2;uint8private_lockedZone;uint256private_totalTokensDistributed;uint256private_totalTokensLocked;eventTokensPurchased(addressindexedpurchaser,addressindexedbeneficiary,addressindexedreferral,uint256value,uint256amount,uint256valueReward,uint256tokenReward);mapping(address=>uint256)private_balances;constructor(uint256_openingTime,uint256_closingTime,uint256_unlockPeriod1,uint256_unlockPeriod2,uint256_bonusPeriodEnd,uint256_bonusAmount,uint256rate,uint256minAmount,address<missing ')'>payable_wallet,IERC20_token,address_tokenWallet)publicTimedCrowdsale(_openingTime,_closingTime)Crowdsale(rate,_wallet,_token)AllowanceCrowdsale(_tokenWallet){_unlock1=_unlockPeriod1;_unlock2=_unlockPeriod2;bonusPeriod=_bonusPeriodEnd;bonusAmount=_bonusAmount;_minAmount=minAmount;}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 154
column: 4
content: functionsetManagerReward(uint8tokenReward,uint8ethReward,uint8customerReward)publiconlyOwnerreturns(bool){managerTokenReward=tokenReward;managerEthReward=ethReward;managerCustomerReward=customerReward;returntrue;}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 160
column: 4
content: functionsetReferralReward(uint8tokenReward,uint8customerReward)publiconlyOwnerreturns(bool){referralTokenReward=tokenReward;referralCustomerReward=customerReward;returntrue;}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 238
column: 6
content: functionsetProvider(address_provider)publiconlyOwner{provider[_provider]=true;}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 247
column: 6
content: functionsetSalesManager(address_manager)publiconlyOwner{salesManager[_manager]=true;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 77
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 148
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 149
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 150
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 151
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 152
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 345
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 387
column: 11
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 390
column: 20
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 396
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 399
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 573
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 574
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 652
column: 32
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 726
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 771
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 772
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 773
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 775
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 777
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 780
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 784
column: 8
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 787
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 791
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 804
column: 31
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 146
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 306
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 383
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 571
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 650
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 723
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 418
column: 4
content: constructor(uint256rate,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 806
column: 2
content: constructor(uint256_openingTime,uint256_closingTime,uint256_unlockPeriod1,uint256_unlockPeriod2,uint256_bonusPeriodEnd,uint256_bonusAmount,uint256rate,uint256minAmount,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 418
column: 47
content: wallet,IERC20

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 419
column: 15
content: (rate>0);require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 420
column: 15
content: (wallet!=<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 420
column: 26
content: address

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 420
column: 33
content: (0));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 421
column: 8
content: require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 421
column: 15
content: (address<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 421
column: 23
content: (token)!=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 421
column: 34
content: address

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 421
column: 41
content: (0));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 423
column: 8
content: _rate=rate;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 424
column: 8
content: _wallet=wallet;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 425
column: 8
content: _token=token;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 815
column: 20
content: _wallet,IERC20

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 816
column: 11
content: _token,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 817
column: 4
content: address_tokenWallet)public

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 819
column: 2
content: TimedCrowdsale(_openingTime,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 819
column: 31
content: _closingTime)Crowdsale

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 820
column: 11
content: (rate,_wallet,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 820
column: 27
content: _token)AllowanceCrowdsale

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 821
column: 20
content: (_tokenWallet){_unlock1=_unlockPeriod1;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 823
column: 7
content: _unlock2=_unlockPeriod2;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 824
column: 7
content: bonusPeriod=_bonusPeriodEnd;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 825
column: 6
content: bonusAmount=_bonusAmount;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 826
column: 6
content: _minAmount=minAmount;

SOLIDITY_VISIBILITY :27
SOLIDITY_SAFEMATH :6
SOLIDITY_OVERPOWERED_ROLE :4
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :2
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :25
SOLIDITY_ADDRESS_HARDCODED :1

