reorder_contracts_2_3/test2284.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 333
column: 29
content: 0x19

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 358
column: 29
content: 0x19

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 427
column: 29
content: 0x19

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 477
column: 29
content: 0x19

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 531
column: 29
content: 0x19

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 572
column: 29
content: 0x19

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 55
column: 8
content: _owner=address(0)

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 308
column: 8
content: for(uinti;i<providers.length;i++){_providers[i+1]=providers[i];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 494
column: 8
content: for(uinti;i<resolvers.length;i++){require(identityRegistry.isResolverFor(ein,resolvers[i]),"Identity has not set this resolver.");resolverAllowances[ein][resolvers[i]]=withdrawAllowances[i];emitSnowflakeResolverAllowanceChanged(ein,resolvers[i],withdrawAllowances[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 308
column: 8
content: for(uinti;i<providers.length;i++){_providers[i+1]=providers[i];}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 494
column: 8
content: for(uinti;i<resolvers.length;i++){require(identityRegistry.isResolverFor(ein,resolvers[i]),"Identity has not set this resolver.");resolverAllowances[ein][resolvers[i]]=withdrawAllowances[i];emitSnowflakeResolverAllowanceChanged(ein,resolvers[i],withdrawAllowances[i]);}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 286
column: 4
content: functionsetAddresses(address_identityRegistryAddress,address_hydroTokenAddress)publiconlyOwner{identityRegistryAddress=_identityRegistryAddress;identityRegistry=IdentityRegistryInterface(identityRegistryAddress);hydroTokenAddress=_hydroTokenAddress;hydroToken=HydroInterface(hydroTokenAddress);}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 294
column: 4
content: functionsetClientRaindropAddress(address_clientRaindropAddress)publiconlyOwner{clientRaindropAddress=_clientRaindropAddress;clientRaindrop=ClientRaindropInterface(clientRaindropAddress);}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 9
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 255
column: 30
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 257
column: 19
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 259
column: 28
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 246
column: 4
content: usingSafeMathforuint;

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 185
column: 57
content: (addressrecoveryAddress,address[]memoryassociatedAddresses,address[]memoryproviders,address[]memoryresolvers)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 240
column: 16
content: (uintein,address_address,stringmemorycasedHydroID)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 241
column: 56
content: (address_address,stringmemorycasedHydroID)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 242
column: 64
content: (uintein,stringmemorycasedHydroID)

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 166
column: 4
content: functionsnowflakeCall(addressresolver,uinteinFrom,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 170
column: 4
content: functionsnowflakeCall(addressresolver,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 191
column: 4
content: functioncreateIdentity(addressrecoveryAddress,address[]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 193
column: 4
content: functioncreateIdentityDelegated(addressrecoveryAddress,addressassociatedAddress,address[]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 200
column: 4
content: functionaddAssociatedAddressDelegated(addressapprovingAddress,addressaddressToAdd,uint8[2]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 221
column: 4
content: functiontriggerDestruction(uintein,address[]calldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 660
column: 4
content: functionwithdrawSnowflakeBalanceFromVia(uinteinFrom,addressvia,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 167
column: 56
content: to,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 167
column: 60
content: uintamount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 167
column: 73
content: bytescalldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 170
column: 61
content: to,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 170
column: 65
content: uintamount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 170
column: 78
content: bytescalldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 191
column: 72
content: providers,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 191
column: 83
content: address[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 192
column: 25
content: (uintein);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 194
column: 79
content: providers,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 194
column: 90
content: address[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 194
column: 109
content: resolvers,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 195
column: 8
content: uint8v,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 195
column: 17
content: bytes32r,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 195
column: 28
content: bytes32s,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 195
column: 39
content: uinttimestamp)externalreturns

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 196
column: 23
content: (uintein);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 202
column: 26
content: v,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 202
column: 29
content: bytes32[2]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 202
column: 49
content: r,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 202
column: 52
content: bytes32[2]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 202
column: 72
content: s,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 202
column: 75
content: uint[2]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 222
column: 37
content: firstChunk,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 222
column: 49
content: address[]calldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 222
column: 68
content: lastChunk,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 222
column: 79
content: boolresetResolvers)external;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 661
column: 51
content: to,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 661
column: 55
content: uintamount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 661
column: 68
content: bytesmemory_bytes)public{

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 665
column: 8
content: handleAllowance(einFrom,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 665
column: 33
content: amount);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 666
column: 8
content: _withdraw(einFrom,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 666
column: 27
content: via,amount);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 667
column: 8
content: SnowflakeViaInterfaceviaContract=SnowflakeViaInterface(via);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 668
column: 8
content: viaContract.snowflakeCall(msg.

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 668
column: 38
content: sender,einFrom,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 668
column: 55
content: to,amount,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 668
column: 67
content: _bytes);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 669
column: 8
content: emitSnowflakeWithdrawFromVia

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 669
column: 37
content: (msg.sender,to);

SOLIDITY_VISIBILITY :48
SOLIDITY_SAFEMATH :1
SOLIDITY_OVERPOWERED_ROLE :2
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :4
SOLIDITY_EXTRA_GAS_IN_LOOPS :2
SOLIDITY_ADDRESS_HARDCODED :7
SOLIDITY_GAS_LIMIT_IN_LOOPS :2
SOLIDITY_SHOULD_RETURN_STRUCT :4

