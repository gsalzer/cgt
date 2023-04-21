reorder_contracts_2_3/test1731.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 45
column: 4
content: owner=address(0)

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 294
column: 2
content: functionapprove(address_spender,uint256_value)publicreturns(bool){allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1077
column: 8
content: for(uinti=0;i<channelsGuids.length;i++){registeredChannelsGuids[i]=channelsGuids[i];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1094
column: 8
content: for(uinti=0;i<channelsGuids.length;i++){OfferMultiSig(guidToChannel[channelsGuids[i]].msig).pause();}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1109
column: 8
content: for(uinti=0;i<channelsGuids.length;i++){OfferMultiSig(guidToChannel[channelsGuids[i]].msig).unpause();}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1191
column: 8
content: for(uinti=0;i<_ba.length;i++){babcde[k++]=_ba[i];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1195
column: 8
content: for(i=0;i<_bb.length;i++){babcde[k++]=_bb[i];}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 47acc2
severity: 1
line: 923
column: 4
content: functionupdate(bytes_state)internalreturns(bool){NectarToken_t=NectarToken(getTokenAddress(_state));if(_t.allowance(getPartyA(_state),this)>0){require(_t.transferFrom(getPartyA(_state),this,_t.allowance(getPartyA(_state),this)),"failed transfering deposit from party A to contract");}require(getTotal(_state)==_t.balanceOf(this),"token total deposited does not match state balance");}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 47acc2
severity: 1
line: 946
column: 4
content: functionfinalize(bytes_state)internalreturns(bool){address_a=getPartyA(_state);address_b=getPartyB(_state);NectarToken_t=NectarToken(getTokenAddress(_state));require(getTotal(_state)==_t.balanceOf(this),"tried finalizing token state that does not match bonded value");require(_t.transfer(_a,getBalanceA(_state)),"failed transfering balance to party A");require(_t.transfer(_b,getBalanceB(_state)),"failed transfering balance to party B");}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 808
column: 4
content: functiongetSequence(bytes_state)publicpurereturns(uint_seq){assembly{_seq:=mload(add(_state,64))}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 847
column: 4
content: functiongetCloseFlag(bytes_state)publicpurereturns(uint8_flag){assembly{_flag:=mload(add(_state,32))}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 854
column: 4
content: functiongetPartyA(bytes_state)publicpurereturns(address_ambassador){assembly{_ambassador:=mload(add(_state,96))}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 861
column: 4
content: functiongetPartyB(bytes_state)publicpurereturns(address_expert){assembly{_expert:=mload(add(_state,128))}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 868
column: 4
content: functiongetBalanceA(bytes_state)publicpurereturns(uint256_balanceA){assembly{_balanceA:=mload(add(_state,192))}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 875
column: 4
content: functiongetBalanceB(bytes_state)publicpurereturns(uint256_balanceB){assembly{_balanceB:=mload(add(_state,224))}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 882
column: 4
content: functiongetTokenAddress(bytes_state)publicpurereturns(address_token){assembly{_token:=mload(add(_state,256))}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 1122
column: 4
content: functiongetOfferState(bytes_state)publicpurereturns(bytes32_guid,uint256_nonce,uint256_amount,address_msigAddress,uint256_balanceA,uint256_balanceB,address_ambassador,address_expert,uint256_isClosed,address_token,uint256_mask,uint256_assertion){assembly{_guid:=mload(add(_state,288))_nonce:=mload(add(_state,64))_amount:=mload(add(_state,320))_msigAddress:=mload(add(_state,160))_balanceA:=mload(add(_state,192))_balanceB:=mload(add(_state,224))_ambassador:=mload(add(_state,96))_expert:=mload(add(_state,128))_isClosed:=mload(add(_state,32))_token:=mload(add(_state,256))_mask:=mload(add(_state,480))_assertion:=mload(add(_state,512))}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1077
column: 8
content: for(uinti=0;i<channelsGuids.length;i++){registeredChannelsGuids[i]=channelsGuids[i];}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1094
column: 8
content: for(uinti=0;i<channelsGuids.length;i++){OfferMultiSig(guidToChannel[channelsGuids[i]].msig).pause();}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1109
column: 8
content: for(uinti=0;i<channelsGuids.length;i++){OfferMultiSig(guidToChannel[channelsGuids[i]].msig).unpause();}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1191
column: 8
content: for(uinti=0;i<_ba.length;i++){babcde[k++]=_ba[i];}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1195
column: 8
content: for(i=0;i<_bb.length;i++){babcde[k++]=_bb[i];}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 981
column: 0
content: contractOfferRegistryisPausable{structOfferChannel{addressmsig;addressambassador;addressexpert;}eventInitializedChannel(addressmsig,addressambassador,addressexpert,uint128guid);uint128[]publicchannelsGuids;mapping(bytes32=>address)publicparticipantsToChannel;mapping(uint128=>OfferChannel)publicguidToChannel;addresspublicnectarAddress;constructor(address_nectarAddress)public{require(_nectarAddress!=address(0),"Invalid token address");nectarAddress=_nectarAddress;}functioninitializeOfferChannel(uint128guid,address_ambassador,address_expert,uint_settlementPeriodLength)externalwhenNotPaused{require(address(0)!=_expert,"Invalid expert address");require(address(0)!=_ambassador,"Invalid ambassador address");require(msg.sender==_ambassador,"Initializer isn't ambassador");require(guidToChannel[guid].msig==address(0),"GUID already in use");bytes32key=getParticipantsHash(_ambassador,_expert);if(participantsToChannel[key]!=address(0)){require(OfferMultiSig(participantsToChannel[key]).isChannelOpen()==false,"Channel already exists between parties");}addressmsig=newOfferMultiSig(nectarAddress,_ambassador,_expert,_settlementPeriodLength);participantsToChannel[key]=msig;guidToChannel[guid].msig=msig;guidToChannel[guid].ambassador=_ambassador;guidToChannel[guid].expert=_expert;channelsGuids.push(guid);emitInitializedChannel(msig,_ambassador,_expert,guid);}functiongetNumberOfOffers()externalviewreturns(uint){returnchannelsGuids.length;}functiongetParticipantsChannel(address_ambassador,address_expert)externalviewreturns(address){bytes32key=getParticipantsHash(_ambassador,_expert);require(participantsToChannel[key]!=address(0),"Channel does not exist between parties");returnparticipantsToChannel[key];}functiongetChannelsGuids()externalviewreturns(address[]){require(channelsGuids.length!=0,"No channels initialized");address[]memoryregisteredChannelsGuids=newaddress[](channelsGuids.length);for(uinti=0;i<channelsGuids.length;i++){registeredChannelsGuids[i]=channelsGuids[i];}returnregisteredChannelsGuids;}functionpauseChannels()externalonlyOwnerwhenNotPaused{require(channelsGuids.length!=0,"No channels initialized");pause();for(uinti=0;i<channelsGuids.length;i++){OfferMultiSig(guidToChannel[channelsGuids[i]].msig).pause();}}functionunpauseChannels()externalonlyOwnerwhenPaused{require(channelsGuids.length!=0,"No channels initialized");for(uinti=0;i<channelsGuids.length;i++){OfferMultiSig(guidToChannel[channelsGuids[i]].msig).unpause();}}functiongetOfferState(bytes_state)publicpurereturns(bytes32_guid,uint256_nonce,uint256_amount,address_msigAddress,uint256_balanceA,uint256_balanceB,address_ambassador,address_expert,uint256_isClosed,address_token,uint256_mask,uint256_assertion){assembly{_guid:=mload(add(_state,288))_nonce:=mload(add(_state,64))_amount:=mload(add(_state,320))_msigAddress:=mload(add(_state,160))_balanceA:=mload(add(_state,192))_balanceB:=mload(add(_state,224))_ambassador:=mload(add(_state,96))_expert:=mload(add(_state,128))_isClosed:=mload(add(_state,32))_token:=mload(add(_state,256))_mask:=mload(add(_state,480))_assertion:=mload(add(_state,512))}}functiongetParticipantsHash(address_ambassador,address_expert)internalpurereturns(bytes32){stringmemorystr_ambassador=toString(_ambassador);stringmemorystr_expert=toString(_expert);returnkeccak256(abi.encodePacked(strConcat(str_ambassador,str_expert)));}functiontoString(addressx)internalpurereturns(string){bytesmemoryb=newbytes(20);for(uinti=0;i<20;i++){b[i]=byte(uint8(uint(x)/(2**(8*(19-i)))));}returnstring(b);}functionstrConcat(string_a,string_b)internalpurereturns(string){bytesmemory_ba=bytes(_a);bytesmemory_bb=bytes(_b);stringmemoryabcde=newstring(_ba.length+_bb.length);bytesmemorybabcde=bytes(abcde);uintk=0;for(uinti=0;i<_ba.length;i++){babcde[k++]=_ba[i];}for(i=0;i<_bb.length;i++){babcde[k++]=_bb[i];}returnstring(babcde);}function()publicpayable{revert("Do not allow sending Eth to this contract");}}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 795
column: 4
content: functionsetCommunicationUri(bytes32_websocketUri)externalwhenNotPaused{require(msg.sender==ambassador,"msg.sender is not the ambassador");websocketUri=_websocketUri;emitCommunicationsSet(websocketUri);}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_REDUNDANT_FALLBACK_REJECT
patternId: b85a32
severity: 1
line: 1204
column: 30
content: {revert("Do not allow sending Eth to this contract");}

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 186
column: 2
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 480
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 808
column: 4
content: functiongetSequence(bytes_state)publicpurereturns(uint_seq){assembly{_seq:=mload(add(_state,64))}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 847
column: 4
content: functiongetCloseFlag(bytes_state)publicpurereturns(uint8_flag){assembly{_flag:=mload(add(_state,32))}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 854
column: 4
content: functiongetPartyA(bytes_state)publicpurereturns(address_ambassador){assembly{_ambassador:=mload(add(_state,96))}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 861
column: 4
content: functiongetPartyB(bytes_state)publicpurereturns(address_expert){assembly{_expert:=mload(add(_state,128))}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 868
column: 4
content: functiongetBalanceA(bytes_state)publicpurereturns(uint256_balanceA){assembly{_balanceA:=mload(add(_state,192))}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 875
column: 4
content: functiongetBalanceB(bytes_state)publicpurereturns(uint256_balanceB){assembly{_balanceB:=mload(add(_state,224))}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 882
column: 4
content: functiongetTokenAddress(bytes_state)publicpurereturns(address_token){assembly{_token:=mload(add(_state,256))}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 1122
column: 4
content: functiongetOfferState(bytes_state)publicpurereturns(bytes32_guid,uint256_nonce,uint256_amount,address_msigAddress,uint256_balanceA,uint256_balanceB,address_ambassador,address_expert,uint256_isClosed,address_token,uint256_mask,uint256_assertion){assembly{_guid:=mload(add(_state,288))_nonce:=mload(add(_state,64))_amount:=mload(add(_state,320))_msigAddress:=mload(add(_state,160))_balanceA:=mload(add(_state,192))_balanceB:=mload(add(_state,224))_ambassador:=mload(add(_state,96))_expert:=mload(add(_state,128))_isClosed:=mload(add(_state,32))_token:=mload(add(_state,256))_mask:=mload(add(_state,480))_assertion:=mload(add(_state,512))}}

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 83k1no
severity: 1
line: 471
column: 25
content: call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))),msg.sender,_value,this,_extraData)

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 1204
column: 15
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 459
column: 62
content: bytes_extraData

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 572
column: 27
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 617
column: 27
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 648
column: 26
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 673
column: 39
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 703
column: 28
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 735
column: 25
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 764
column: 29
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 808
column: 25
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 841
column: 23
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 847
column: 26
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 854
column: 23
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 861
column: 23
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 868
column: 25
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 875
column: 25
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 882
column: 29
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 889
column: 22
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 896
column: 18
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 910
column: 18
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 923
column: 20
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 946
column: 22
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 966
column: 20
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 1123
column: 8
content: bytes_state

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 1176
column: 56
content: string

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 1184
column: 23
content: string_a

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 1184
column: 34
content: string_b

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 1184
column: 68
content: string

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 810
column: 8
content: assembly{_seq:=mload(add(_state,64))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 849
column: 8
content: assembly{_flag:=mload(add(_state,32))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 856
column: 8
content: assembly{_ambassador:=mload(add(_state,96))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 863
column: 8
content: assembly{_expert:=mload(add(_state,128))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 870
column: 8
content: assembly{_balanceA:=mload(add(_state,192))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 877
column: 8
content: assembly{_balanceB:=mload(add(_state,224))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 884
column: 8
content: assembly{_token:=mload(add(_state,256))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 1143
column: 8
content: assembly{_guid:=mload(add(_state,288))_nonce:=mload(add(_state,64))_amount:=mload(add(_state,320))_msigAddress:=mload(add(_state,160))_balanceA:=mload(add(_state,192))_balanceB:=mload(add(_state,224))_ambassador:=mload(add(_state,96))_expert:=mload(add(_state,128))_isClosed:=mload(add(_state,32))_token:=mload(add(_state,256))_mask:=mload(add(_state,480))_assertion:=mload(add(_state,512))}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 188
column: 2
content: mapping(address=>uint256)balances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 190
column: 2
content: uint256totalSupply_;

SOLIDITY_VISIBILITY :2
SOLIDITY_OVERPOWERED_ROLE :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN :10
SOLIDITY_EXTRA_GAS_IN_LOOPS :5
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_UPGRADE_TO_050 :29
SOLIDITY_GAS_LIMIT_IN_LOOPS :5
SOLIDITY_REDUNDANT_FALLBACK_REJECT :1
SOLIDITY_SHOULD_NOT_BE_PURE :8
SOLIDITY_ERC20_APPROVE :1
SOLIDITY_SAFEMATH :2
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_USING_INLINE_ASSEMBLY :8

