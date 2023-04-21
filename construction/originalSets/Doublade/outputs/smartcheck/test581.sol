reorder_contracts_2_3/test581.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 676
column: 4
content: functionapprove(addressspender,uinttokens)publicwhenNotPausedreturns(boolsuccess){require(balanceOf(msg.sender)>=tokens);uintSender_UserId=Mapping__UserAddress_UserId[msg.sender];uintApprove_to_UserId=Mapping__UserAddress_UserId[spender];Mapping__OwnerUserId_ERC20Amount[Sender_UserId]=Mapping__OwnerUserId_ERC20Amount[Sender_UserId]-tokens;Mapping__OwnerUserIdAlloweUserId_ERC20Amount[Sender_UserId][Approve_to_UserId]=Mapping__OwnerUserIdAlloweUserId_ERC20Amount[Sender_UserId][Approve_to_UserId]+tokens;emitApproval({tokenOwner:msg.sender,spender:spender,tokens:tokens});returntrue;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 256
column: 8
content: for(uintIm_PlayUnitCounter=0;Im_PlayUnitCounter<=Im_GameUnit_Instance.Player_UserIds.length;Im_PlayUnitCounter++){require(Im_GameRoundUnit_Instance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand[Im_GameRoundUnit_Instance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand.length-1]==1111);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 857
column: 8
content: for(uintIm_UserIdCounter=0;Im_UserIdCounter<_Player_UserIds.length;Im_UserIdCounter++){Mapping__GameRoundId_GameRoundStruct[_ImGameRoundId].Mapping__Index_PlayUnitStruct[Im_UserIdCounter]=Initialize_PlayUnit({_GameRoundId:_ImGameRoundId,_UserId:_Player_UserIds[Im_UserIdCounter],_Betting:Mapping__GameRoundIdUserId_Bettings[_ImGameRoundId][_Player_UserIds[Im_UserIdCounter]]});}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 940
column: 8
content: for(uint_Im_CheckCounter=0;_Im_CheckCounter<=CheckNumberSet.length;_Im_CheckCounter++){while(Im_UnCheck_Number==CheckNumberSet[_Im_CheckCounter]){Im_UnCheck_Number=GetRandom_In52(Im_UnCheck_Number);Im_UnCheck_Number=Im_Cute_RecusiveFunction(Im_UnCheck_Number,CheckNumberSet);}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 996
column: 8
content: for(uintIm_CardCounter=0;Im_CardCounter<_Card_InHand.length;Im_CardCounter++){_Im_Card_Number=_Card_InHand[Im_CardCounter];Im_AccumulatedPoints=Im_AccumulatedPoints+Counting_CardPoint(_Im_Card_Number);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1004
column: 8
content: for(uintIm_CardCounter=0;Im_CardCounter<_Card_InHand.length;Im_CardCounter++){_Im_Card_Number=_Card_InHand[Im_CardCounter];if((_Im_Card_Number%13)==0&&Im_AccumulatedPoints<=11){Im_AccumulatedPoints=Im_AccumulatedPoints+10;}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1035
column: 8
content: for(uintIm_PlayUnitCounter=0;Im_PlayUnitCounter<=Im_GameUnit_Instance.Player_UserIds.length;Im_PlayUnitCounter++){Im_GameRoundUnit_Instance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand.pop;uintIm_PlayerUserId=Im_GameRoundUnit_Instance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Player_UserId;Im_PlayerTotalPoint=Counting_HandCardPoint(Im_GameRoundUnit_Instance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand);if(Im_PlayerTotalPoint>21&&Im_DealerTotalPoint>21){Im_DrawIdSet[Im_DrawIdSet.length]=Im_PlayerUserId;}elseif(Im_PlayerTotalPoint>21){Im_LoserIdSet[Im_LoserIdSet.length]=Im_PlayerUserId;}elseif(Im_DealerTotalPoint>21){Im_WinnerUserIdSet[Im_WinnerUserIdSet.length]=Im_PlayerUserId;}elseif(Im_DealerTotalPoint>Im_PlayerTotalPoint){Im_LoserIdSet[Im_LoserIdSet.length]=Im_PlayerUserId;}elseif(Im_PlayerTotalPoint>Im_DealerTotalPoint){Im_WinnerUserIdSet[Im_WinnerUserIdSet.length]=Im_PlayerUserId;}elseif(Im_PlayerTotalPoint==Im_DealerTotalPoint){Im_DrawIdSet[Im_DrawIdSet.length]=Im_PlayerUserId;}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1226
column: 12
content: for(uintIm_PlayerCounter=0;Im_PlayerCounter<=Im_PlayerUserIdSet.length;Im_PlayerCounter++){uintIm_PlayerUserId=Im_PlayerUserIdSet[Im_PlayerCounter];uintIm_UserBettingAmount=Mapping__GameRoundIdUserId_Bettings[Im_GameRoundId][Im_PlayerUserId];require(Im_UserBettingAmount>=Im_MIN_BettingLimit&&Im_UserBettingAmount<=Im_MAX_BettingLimit);emitCheckBetting_Anouncement({GameRoundId:Im_GameRoundId,UserId:Im_PlayerUserId,UserBettingAmount:Im_UserBettingAmount,MinBettingLimit:Im_MIN_BettingLimit,MaxBettingLimit:Im_MAX_BettingLimit});}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1263
column: 8
content: for(uintIm_PlayUnitCounter=0;Im_PlayUnitCounter<=Im_GameUnit_Instance.Player_UserIds.length;Im_PlayUnitCounter++){if(Mapping__UserAddress_UserId[msg.sender]==Im_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Player_UserId){if(Hit_or_Stand){Im_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand=GetCard({_Im_GameRoundId:Im_RoundId,_Im_Original_CardInHand:Im_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand});returnIm_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand;}elseif(Hit_or_Stand==false){Im_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand.push(1111);returnIm_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand;}}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1315
column: 12
content: for(uintIm_WinnerCounter=0;Im_WinnerCounter<=WeR_WinnerId.length;Im_WinnerCounter++){uintIm_WinnerUserId=WeR_WinnerId[Im_WinnerCounter];uintIm_WinnerBettingAmount=Mapping__GameRoundIdUserId_Bettings[Im_RoundId][Im_WinnerUserId];Mapping__OwnerUserId_ERC20Amount[Im_DealerUserId]-Im_WinnerBettingAmount;Mapping__OwnerUserId_ERC20Amount[Im_WinnerUserId]+Im_WinnerBettingAmount;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1325
column: 12
content: for(uintIm_LoserCounter=0;Im_LoserCounter<=WeR_LoserId.length;Im_LoserCounter++){uintIm_LoserUserId=WeR_WinnerId[Im_LoserCounter];uintIm_LoserBettingAmount=Mapping__GameRoundIdUserId_Bettings[Im_RoundId][Im_LoserUserId];Mapping__OwnerUserId_ERC20Amount[Im_DealerUserId]+Im_LoserBettingAmount;Mapping__OwnerUserId_ERC20Amount[Im_LoserUserId]-Im_LoserBettingAmount;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 256
column: 8
content: for(uintIm_PlayUnitCounter=0;Im_PlayUnitCounter<=Im_GameUnit_Instance.Player_UserIds.length;Im_PlayUnitCounter++){require(Im_GameRoundUnit_Instance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand[Im_GameRoundUnit_Instance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand.length-1]==1111);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 857
column: 8
content: for(uintIm_UserIdCounter=0;Im_UserIdCounter<_Player_UserIds.length;Im_UserIdCounter++){Mapping__GameRoundId_GameRoundStruct[_ImGameRoundId].Mapping__Index_PlayUnitStruct[Im_UserIdCounter]=Initialize_PlayUnit({_GameRoundId:_ImGameRoundId,_UserId:_Player_UserIds[Im_UserIdCounter],_Betting:Mapping__GameRoundIdUserId_Bettings[_ImGameRoundId][_Player_UserIds[Im_UserIdCounter]]});}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 940
column: 8
content: for(uint_Im_CheckCounter=0;_Im_CheckCounter<=CheckNumberSet.length;_Im_CheckCounter++){while(Im_UnCheck_Number==CheckNumberSet[_Im_CheckCounter]){Im_UnCheck_Number=GetRandom_In52(Im_UnCheck_Number);Im_UnCheck_Number=Im_Cute_RecusiveFunction(Im_UnCheck_Number,CheckNumberSet);}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 996
column: 8
content: for(uintIm_CardCounter=0;Im_CardCounter<_Card_InHand.length;Im_CardCounter++){_Im_Card_Number=_Card_InHand[Im_CardCounter];Im_AccumulatedPoints=Im_AccumulatedPoints+Counting_CardPoint(_Im_Card_Number);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1004
column: 8
content: for(uintIm_CardCounter=0;Im_CardCounter<_Card_InHand.length;Im_CardCounter++){_Im_Card_Number=_Card_InHand[Im_CardCounter];if((_Im_Card_Number%13)==0&&Im_AccumulatedPoints<=11){Im_AccumulatedPoints=Im_AccumulatedPoints+10;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1035
column: 8
content: for(uintIm_PlayUnitCounter=0;Im_PlayUnitCounter<=Im_GameUnit_Instance.Player_UserIds.length;Im_PlayUnitCounter++){Im_GameRoundUnit_Instance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand.pop;uintIm_PlayerUserId=Im_GameRoundUnit_Instance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Player_UserId;Im_PlayerTotalPoint=Counting_HandCardPoint(Im_GameRoundUnit_Instance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand);if(Im_PlayerTotalPoint>21&&Im_DealerTotalPoint>21){Im_DrawIdSet[Im_DrawIdSet.length]=Im_PlayerUserId;}elseif(Im_PlayerTotalPoint>21){Im_LoserIdSet[Im_LoserIdSet.length]=Im_PlayerUserId;}elseif(Im_DealerTotalPoint>21){Im_WinnerUserIdSet[Im_WinnerUserIdSet.length]=Im_PlayerUserId;}elseif(Im_DealerTotalPoint>Im_PlayerTotalPoint){Im_LoserIdSet[Im_LoserIdSet.length]=Im_PlayerUserId;}elseif(Im_PlayerTotalPoint>Im_DealerTotalPoint){Im_WinnerUserIdSet[Im_WinnerUserIdSet.length]=Im_PlayerUserId;}elseif(Im_PlayerTotalPoint==Im_DealerTotalPoint){Im_DrawIdSet[Im_DrawIdSet.length]=Im_PlayerUserId;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1226
column: 12
content: for(uintIm_PlayerCounter=0;Im_PlayerCounter<=Im_PlayerUserIdSet.length;Im_PlayerCounter++){uintIm_PlayerUserId=Im_PlayerUserIdSet[Im_PlayerCounter];uintIm_UserBettingAmount=Mapping__GameRoundIdUserId_Bettings[Im_GameRoundId][Im_PlayerUserId];require(Im_UserBettingAmount>=Im_MIN_BettingLimit&&Im_UserBettingAmount<=Im_MAX_BettingLimit);emitCheckBetting_Anouncement({GameRoundId:Im_GameRoundId,UserId:Im_PlayerUserId,UserBettingAmount:Im_UserBettingAmount,MinBettingLimit:Im_MIN_BettingLimit,MaxBettingLimit:Im_MAX_BettingLimit});}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1263
column: 8
content: for(uintIm_PlayUnitCounter=0;Im_PlayUnitCounter<=Im_GameUnit_Instance.Player_UserIds.length;Im_PlayUnitCounter++){if(Mapping__UserAddress_UserId[msg.sender]==Im_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Player_UserId){if(Hit_or_Stand){Im_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand=GetCard({_Im_GameRoundId:Im_RoundId,_Im_Original_CardInHand:Im_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand});returnIm_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand;}elseif(Hit_or_Stand==false){Im_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand.push(1111);returnIm_GameRoundUnit_StorageInstance.Mapping__Index_PlayUnitStruct[Im_PlayUnitCounter].Cards_InHand;}}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1315
column: 12
content: for(uintIm_WinnerCounter=0;Im_WinnerCounter<=WeR_WinnerId.length;Im_WinnerCounter++){uintIm_WinnerUserId=WeR_WinnerId[Im_WinnerCounter];uintIm_WinnerBettingAmount=Mapping__GameRoundIdUserId_Bettings[Im_RoundId][Im_WinnerUserId];Mapping__OwnerUserId_ERC20Amount[Im_DealerUserId]-Im_WinnerBettingAmount;Mapping__OwnerUserId_ERC20Amount[Im_WinnerUserId]+Im_WinnerBettingAmount;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1325
column: 12
content: for(uintIm_LoserCounter=0;Im_LoserCounter<=WeR_LoserId.length;Im_LoserCounter++){uintIm_LoserUserId=WeR_WinnerId[Im_LoserCounter];uintIm_LoserBettingAmount=Mapping__GameRoundIdUserId_Bettings[Im_RoundId][Im_LoserUserId];Mapping__OwnerUserId_ERC20Amount[Im_DealerUserId]+Im_LoserBettingAmount;Mapping__OwnerUserId_ERC20Amount[Im_LoserUserId]-Im_LoserBettingAmount;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 943
column: 19
content: Im_UnCheck_Number==CheckNumberSet[_Im_CheckCounter]

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 462
column: 12
content: (uintUserId,uintGetLuTokenAmount,uintAccountRemainLuToken)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 750
column: 12
content: (uintUserId,addressUserAddress,stringmemoryUserName,stringmemoryUserDescription)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 819
column: 12
content: (uintGameId,uintGameRoundId,uintBettingAmount)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1023
column: 12
content: (uint[]memory_WinnerUserId,uint[]memory_LoserUserId)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1106
column: 12
content: (uint_UserId,address_UserAddress,stringmemory_UserName,stringmemory_UserDescription)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 1189
column: 12
content: (uint_GameId,uintGameRoundId,uintBettingAmount)

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 501
column: 38
content: send(LuTokenAmount*(98e12))

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 485
column: 4
content: functionExchange_LuToken2ETH(addresspayable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 59
column: 4
content: mapping(address=>uint)Mapping__UserAddress_UserId;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 70
column: 4
content: mapping(uint=>string)Mapping__SuitNumber_String;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 71
column: 4
content: mapping(uint=>string)Mapping__FigureNumber_String;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 407
column: 4
content: uint256Code;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 408
column: 4
content: uint256Value;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 485
column: 50
content: _GetPayAddress,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 485
column: 66
content: uintLuTokenAmount)public

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 486
column: 11
content: whenNotPausedreturns

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 488
column: 4
content: (bool<missing ')'>SuccessMessage,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 490
column: 8
content: uintPayerUserId,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 491
column: 8
content: addressGetPayAddress,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 492
column: 8
content: uintPayETH_Amount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 493
column: 8
content: uintAccountRemainLuToken){

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 496
column: 8
content: uintIm_PayerUserId=Mapping__UserAddress_UserId[msg.sender];

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 498
column: 8
content: require(Mapping__OwnerUserId_ERC20Amount[

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 498
column: 49
content: Im_PayerUserId]>=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 498
column: 68
content: LuTokenAmount&&LuTokenAmount>=1);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 499
column: 8
content: Mapping__OwnerUserId_ERC20Amount[Im_PayerUserId]=Mapping__OwnerUserId_ERC20Amount[

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 499
column: 92
content: Im_PayerUserId]-

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 499
column: 110
content: LuTokenAmount;TotalERC20Amount_LuToken=TotalERC20Amount_LuToken-LuTokenAmount;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 501
column: 8
content: boolSuccess=_GetPayAddress.send(LuTokenAmount*(98e12));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 503
column: 8
content: emitExchangeLuTokenEvent

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 504
column: 8
content: ({_ETH_AddressEvent:_GetPayAddress,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 506
column: 12
content: _ETH_ExchangeAmountEvent:LuTokenAmount*

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 506
column: 54
content: (98e12),_LuToken_UserIdEvnet:

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 507
column: 34
content: Im_PayerUserId,_LuToken_ExchangeAmountEvnet:

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 508
column: 42
content: LuTokenAmount,_LuToken_RemainAmountEvent:

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 509
column: 40
content: Mapping__OwnerUserId_ERC20Amount[Im_PayerUserId]

SOLIDITY_VISIBILITY :29
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :10
SOLIDITY_GAS_LIMIT_IN_LOOPS :11
SOLIDITY_UNCHECKED_CALL :1
SOLIDITY_SHOULD_RETURN_STRUCT :6
SOLIDITY_ERC20_APPROVE :1

