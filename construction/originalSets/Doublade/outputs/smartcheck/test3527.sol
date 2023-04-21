reorder_contracts_2_3/test3527.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 40
column: 19
content: 0xa9059cbb

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 62
column: 19
content: 0x23b872dd

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 996
column: 70
content: (address(0),address(this),depositAmount,"")

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 19
column: 16
content: ^

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 106
column: 16
content: ^

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 387
column: 16
content: ^

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 711
column: 16
content: ^

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 796
column: 16
content: ^

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 829
column: 16
content: ^

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 875
column: 16
content: ^

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 896
column: 16
content: ^

ruleId: SOLIDITY_SEND
patternId: 430636
severity: 1
line: 1014
column: 35
content: send(results.makerFilledAmount)

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 71
column: 4
content: functioncheckReturnValue(boolsuccess)internalpurereturns(bool){if(success){assembly{switchreturndatasize()case0{success:=1}case32{returndatacopy(0,0,32)success:=mload(0)}default{success:=0}}}returnsuccess;}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 133
column: 4
content: functioncontentAddress(bytesmemoryinput)internalpurereturns(uint256memoryAddress){assembly{memoryAddress:=add(input,32)}returnmemoryAddress;}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 148
column: 4
content: functionmemCopy(uint256dest,uint256source,uint256length)internalpure{if(length<32){assembly{letmask:=sub(exp(256,sub(32,length)),1)lets:=and(mload(source),not(mask))letd:=and(mload(dest),mask)mstore(dest,or(s,d))}}else{if(source==dest){return;}if(source>dest){assembly{length:=sub(length,32)letsEnd:=add(source,length)letdEnd:=add(dest,length)letlast:=mload(sEnd)for{}lt(source,sEnd){}{mstore(dest,mload(source))source:=add(source,32)dest:=add(dest,32)}mstore(dEnd,last)}}else{assembly{length:=sub(length,32)letsEnd:=add(source,length)letdEnd:=add(dest,length)letfirst:=mload(source)for{}slt(dest,dEnd){}{mstore(dEnd,mload(sEnd))sEnd:=sub(sEnd,32)dEnd:=sub(dEnd,32)}mstore(dest,first)}}}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 283
column: 4
content: functionreadAddress(bytesmemoryb,uint256index)internalpurereturns(addressresult){require(b.length>=index+20,"GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED");index+=20;assembly{result:=and(mload(add(b,index)),0xffffffffffffffffffffffffffffffffffffffff)}returnresult;}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 315
column: 4
content: functionreadBytes32(bytesmemoryb,uint256index)internalpurereturns(bytes32result){require(b.length>=index+32,"GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED");index+=32;assembly{result:=mload(add(b,index))}returnresult;}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 358
column: 4
content: functionreadBytes4(bytesmemoryb,uint256index)internalpurereturns(bytes4result){require(b.length>=index+4,"GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED");index+=32;assembly{result:=mload(add(b,index))result:=and(result,0xFFFFFFFF00000000000000000000000000000000000000000000000000000000)}returnresult;}

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 811
column: 12
content: (uint256availableToFill,uint256feePercentage)

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 962
column: 12
content: (uint256availableToFill,uint256feePercentage)

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 44
column: 28
content: call(callData)

ruleId: SOLIDITY_UNCHECKED_CALL
patternId: f39eed
severity: 3
line: 67
column: 28
content: call(callData)

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 82
column: 12
content: assembly{switchreturndatasize()case0{success:=1}case32{returndatacopy(0,0,32)success:=mload(0)}default{success:=0}}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 138
column: 8
content: assembly{memoryAddress:=add(input,32)}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 160
column: 12
content: assembly{letmask:=sub(exp(256,sub(32,length)),1)lets:=and(mload(source),not(mask))letd:=and(mload(dest),mask)mstore(dest,or(s,d))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 188
column: 16
content: assembly{length:=sub(length,32)letsEnd:=add(source,length)letdEnd:=add(dest,length)letlast:=mload(sEnd)for{}lt(source,sEnd){}{mstore(dest,mload(source))source:=add(source,32)dest:=add(dest,32)}mstore(dEnd,last)}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 217
column: 16
content: assembly{length:=sub(length,32)letsEnd:=add(source,length)letdEnd:=add(dest,length)letfirst:=mload(source)for{}slt(dest,dEnd){}{mstore(dEnd,mload(sEnd))sEnd:=sub(sEnd,32)dEnd:=sub(dEnd,32)}mstore(dest,first)}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 302
column: 8
content: assembly{result:=and(mload(add(b,index)),0xffffffffffffffffffffffffffffffffffffffff)}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 332
column: 8
content: assembly{result:=mload(add(b,index))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 375
column: 8
content: assembly{result:=mload(add(b,index))result:=and(result,0xFFFFFFFF00000000000000000000000000000000000000000000000000000000)}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 782
column: 4
content: functiontransferFrom(addresstoken,addressfrom,addressto,uint256amount,bytescalldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 787
column: 23
content: data,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 788
column: 8
content: boolfromDeposit,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 789
column: 8
content: booltoDeposit)external;

SOLIDITY_VISIBILITY :4
SOLIDITY_PRAGMAS_VERSION :8
SOLIDITY_SEND :1
SOLIDITY_ADDRESS_HARDCODED :3
SOLIDITY_USING_INLINE_ASSEMBLY :8
SOLIDITY_UNCHECKED_CALL :2
SOLIDITY_SHOULD_RETURN_STRUCT :2
SOLIDITY_SHOULD_NOT_BE_PURE :6

