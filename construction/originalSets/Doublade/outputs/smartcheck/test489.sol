reorder_contracts_2_3/test489.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 222
column: 4
content: for(uinti=0;i<targets.length;i++){require(targets[i]!=0x0);frozenAccount[targets[i]]=isFrozen;FrozenFunds(targets[i],isFrozen);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 233
column: 4
content: for(uinti=0;i<targets.length;i++){require(unlockUnixTime[targets[i]]<unixTimes[i]);unlockUnixTime[targets[i]]=unixTimes[i];LockedFunds(targets[i],unixTimes[i]);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 280
column: 4
content: for(uinti=0;i<addresses.length;i++){require(addresses[i]!=0x0&&frozenAccount[addresses[i]]==false&&now>unlockUnixTime[addresses[i]]);balances[addresses[i]]=SafeMath.add(balances[addresses[i]],amount);Transfer(msg.sender,addresses[i],amount);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 298
column: 4
content: for(uinti=0;i<addresses.length;i++){require(amounts[i]>0&&addresses[i]!=0x0&&frozenAccount[addresses[i]]==false&&now>unlockUnixTime[addresses[i]]);amounts[i]=SafeMath.mul(amounts[i],1e8);require(balances[addresses[i]]>=amounts[i]);balances[addresses[i]]=SafeMath.sub(balances[addresses[i]],amounts[i]);totalAmount=SafeMath.add(totalAmount,amounts[i]);Transfer(addresses[i],msg.sender,amounts[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 222
column: 4
content: for(uinti=0;i<targets.length;i++){require(targets[i]!=0x0);frozenAccount[targets[i]]=isFrozen;FrozenFunds(targets[i],isFrozen);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 233
column: 4
content: for(uinti=0;i<targets.length;i++){require(unlockUnixTime[targets[i]]<unixTimes[i]);unlockUnixTime[targets[i]]=unixTimes[i];LockedFunds(targets[i],unixTimes[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 280
column: 4
content: for(uinti=0;i<addresses.length;i++){require(addresses[i]!=0x0&&frozenAccount[addresses[i]]==false&&now>unlockUnixTime[addresses[i]]);balances[addresses[i]]=SafeMath.add(balances[addresses[i]],amount);Transfer(msg.sender,addresses[i],amount);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 298
column: 4
content: for(uinti=0;i<addresses.length;i++){require(amounts[i]>0&&addresses[i]!=0x0&&frozenAccount[addresses[i]]==false&&now>unlockUnixTime[addresses[i]]);amounts[i]=SafeMath.mul(amounts[i],1e8);require(balances[addresses[i]]>=amounts[i]);balances[addresses[i]]=SafeMath.sub(balances[addresses[i]],amounts[i]);totalAmount=SafeMath.add(totalAmount,amounts[i]);Transfer(addresses[i],msg.sender,amounts[i]);}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 314
column: 2
content: functionsetDistributeAmount(uint256_unitAmount)onlyOwnerpublic{distributeAmount=_unitAmount;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 146
column: 8
content: if(balanceOf(msg.sender)<_value)revert();

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 200
column: 4
content: if(balanceOf(msg.sender)<_value)revert();

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 209
column: 4
content: if(balanceOf(msg.sender)<_value)revert();

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 88
column: 2
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SHOULD_NOT_BE_VIEW
patternId: 189abf
severity: 1
line: 191
column: 2
content: functionisContract(address_addr)privateviewreturns(boolis_contract){uintlength;assembly{length:=extcodesize(_addr)}return(length>0);}

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 83k1no
severity: 1
line: 149
column: 19
content: call.value(0)(bytes4(keccak256(_custom_fallback)),msg.sender,_value,_data)

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 330
column: 21
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 11
column: 53
content: bytes_data

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 74
column: 39
content: string_name

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 75
column: 41
content: string_symbol

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 81
column: 44
content: bytesdata

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 82
column: 44
content: bytesdata

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 82
column: 56
content: stringcustom_fallback

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 113
column: 39
content: string_name

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 117
column: 41
content: string_symbol

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 138
column: 46
content: bytes_data

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 138
column: 59
content: string_custom_fallback

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 160
column: 46
content: bytes_data

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 199
column: 55
content: bytes_data

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 208
column: 56
content: bytes_data

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 219
column: 26
content: address[]targets

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 229
column: 26
content: address[]targets

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 229
column: 45
content: uint[]unixTimes

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 270
column: 28
content: address[]addresses

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 292
column: 25
content: address[]addresses

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 292
column: 46
content: uint[]amounts

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 98
column: 2
content: mapping(address=>uint)balances;

SOLIDITY_VISIBILITY :1
SOLIDITY_SAFEMATH :1
SOLIDITY_OVERPOWERED_ROLE :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_REVERT_REQUIRE :3
SOLIDITY_EXTRA_GAS_IN_LOOPS :4
SOLIDITY_UPGRADE_TO_050 :21
SOLIDITY_GAS_LIMIT_IN_LOOPS :4
SOLIDITY_SHOULD_NOT_BE_VIEW :1

