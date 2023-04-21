reorder_contracts_2_3/test555.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 73
column: 19
content: 0x41

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 73
column: 34
content: 0x5A

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 155
column: 8
content: _owner=address(0)

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 56
column: 8
content: for(uinti=0;i<_baseBytes.length;i++){_baseBytes[i]=_lower(_baseBytes[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 56
column: 8
content: for(uinti=0;i<_baseBytes.length;i++){_baseBytes[i]=_lower(_baseBytes[i]);}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 288
column: 4
content: functionsetSnowflakeAddress(address_snowflakeAddress)publiconlyOwner{snowflakeAddress=_snowflakeAddress;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 109
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 392
column: 19
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 393
column: 30
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 394
column: 31
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 410
column: 30
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 412
column: 30
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 414
column: 33
content: private

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 15
column: 4
content: functiontoSlice(stringmemoryself)internalpurereturns(slicememory){uintptr;assembly{ptr:=add(self,0x20)}returnslice(bytes(self).length,ptr);}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 35
column: 4
content: functiontoString(slicememoryself)internalpurereturns(stringmemory){stringmemoryret=newstring(self._len);uintretptr;assembly{retptr:=add(ret,0x20)}memcpy(retptr,self._ptr,self._len);returnret;}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 79
column: 4
content: functionmemcpy(uintdest,uintsrc,uintlen)privatepure{for(;len>=32;len-=32){assembly{mstore(dest,mload(src))}dest+=32;src+=32;}uintmask=256**(32-len)-1;assembly{letsrcpart:=and(mload(src),not(mask))letdestpart:=and(mload(dest),mask)mstore(dest,or(destpart,srcpart))}}

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 100
column: 75
content: (stringmemory,address)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 345
column: 57
content: (addressrecoveryAddress,address[]memoryassociatedAddresses,address[]memoryproviders,address[]memoryresolvers)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 562
column: 16
content: (uintein,address_address,stringmemorycasedHydroID)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 569
column: 54
content: (address_address,stringmemorycasedHydroID)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 575
column: 62
content: (uintein,stringmemorycasedHydroID)

ruleId: SOLIDITY_TX_ORIGIN
patternId: 12e802
severity: 2
line: 470
column: 48
content: tx.origin

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 470
column: 15
content: senderIsSnowflake()

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 511
column: 54
content: senderIsSnowflake()

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 17
column: 8
content: assembly{ptr:=add(self,0x20)}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 38
column: 8
content: assembly{retptr:=add(ret,0x20)}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 82
column: 12
content: assembly{mstore(dest,mload(src))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 90
column: 8
content: assembly{letsrcpart:=and(mload(src),not(mask))letdestpart:=and(mload(dest),mask)mstore(dest,or(destpart,srcpart))}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 203
column: 4
content: functioncreateIdentityDelegated(addressrecoveryAddress,addressassociatedAddress,address[]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 207
column: 4
content: functionaddProvidersFor(addressapprovingAddress,address[]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 210
column: 4
content: functionremoveProvidersFor(addressapprovingAddress,address[]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 213
column: 4
content: functionupgradeProvidersFor(addressapprovingAddress,address[]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 221
column: 4
content: functionaddResolverFor(addressapprovingAddress,addressresolver,boolisSnowflake,uintwithdrawAllowance,bytescalldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 226
column: 4
content: functionchangeResolverAllowancesDelegated(addressapprovingAddress,address[]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 231
column: 4
content: functionremoveResolverFor(addressapprovingAddress,addressresolver,boolisSnowflake,bytescalldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 351
column: 4
content: functioncreateIdentity(addressrecoveryAddress,address[]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 353
column: 4
content: functioncreateIdentityDelegated(addressrecoveryAddress,addressassociatedAddress,address[]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 360
column: 4
content: functionaddAssociatedAddressDelegated(addressapprovingAddress,addressaddressToAdd,uint8[2]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 381
column: 4
content: functiontriggerDestruction(uintein,address[]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 204
column: 79
content: providers,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 204
column: 90
content: stringcalldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 204
column: 106
content: casedHydroId,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 205
column: 8
content: uint8v,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 205
column: 17
content: bytes32r,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 205
column: 28
content: bytes32s,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 205
column: 39
content: uinttimestamp)externalreturns

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 206
column: 23
content: (uintein);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 208
column: 53
content: providers,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 208
column: 64
content: uint8v,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 208
column: 73
content: bytes32r,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 208
column: 84
content: bytes32s,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 208
column: 95
content: uinttimestamp)external;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 211
column: 53
content: providers,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 211
column: 64
content: uint8v,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 211
column: 73
content: bytes32r,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 211
column: 84
content: bytes32s,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 211
column: 95
content: uinttimestamp)external;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 214
column: 53
content: newProviders,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 214
column: 67
content: address[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 214
column: 86
content: oldProviders,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 215
column: 8
content: uint8[2]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 215
column: 26
content: v,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 215
column: 29
content: bytes32[2]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 215
column: 49
content: r,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 215
column: 52
content: bytes32[2]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 215
column: 72
content: s,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 215
column: 75
content: uint[2]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 222
column: 109
content: extraData,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 223
column: 8
content: uint8v,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 223
column: 17
content: bytes32r,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 223
column: 28
content: bytes32s,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 223
column: 39
content: uinttimestamp)external;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 227
column: 53
content: resolvers,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 227
column: 64
content: uint[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 227
column: 80
content: withdrawAllowances,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 228
column: 8
content: uint8v,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 228
column: 17
content: bytes32r,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 228
column: 28
content: bytes32s)external;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 232
column: 85
content: extraData,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 233
column: 8
content: uint8v,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 233
column: 17
content: bytes32r,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 233
column: 28
content: bytes32s,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 233
column: 39
content: uinttimestamp)external;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 351
column: 72
content: providers,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 351
column: 83
content: address[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 352
column: 25
content: (uintein);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 354
column: 79
content: providers,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 354
column: 90
content: address[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 354
column: 109
content: resolvers,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 355
column: 8
content: uint8v,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 355
column: 17
content: bytes32r,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 355
column: 28
content: bytes32s,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 355
column: 39
content: uinttimestamp)externalreturns

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 356
column: 23
content: (uintein);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 362
column: 26
content: v,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 362
column: 29
content: bytes32[2]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 362
column: 49
content: r,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 362
column: 52
content: bytes32[2]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 362
column: 72
content: s,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 362
column: 75
content: uint[2]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 382
column: 37
content: firstChunk,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 382
column: 49
content: address[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 382
column: 68
content: lastChunk,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 382
column: 79
content: boolresetResolvers)external;

SOLIDITY_VISIBILITY :76
SOLIDITY_OVERPOWERED_ROLE :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :7
SOLIDITY_EXTRA_GAS_IN_LOOPS :1
SOLIDITY_ADDRESS_HARDCODED :3
SOLIDITY_GAS_LIMIT_IN_LOOPS :1
SOLIDITY_USING_INLINE_ASSEMBLY :4
SOLIDITY_UNCHECKED_CALL :2
SOLIDITY_SHOULD_RETURN_STRUCT :5
SOLIDITY_TX_ORIGIN :1
SOLIDITY_SHOULD_NOT_BE_PURE :3

