reorder_contracts_2_3/test1245.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 29
column: 36
content: 0x19

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 13
column: 4
content: addresslastAdd=address(0)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 31
column: 4
content: addresslastAdd=address(0)

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 14
column: 4
content: for(uinti=0;i<owners_.length;i++){require(owners_[i]>lastAdd);isOwner[owners_[i]]=true;lastAdd=owners_[i];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 32
column: 4
content: for(uinti=0;i<threshold;i++){addressrecovered=ecrecover(txHash,sigV[i],sigR[i],sigS[i]);require(recovered>lastAdd&&isOwner[recovered]);lastAdd=recovered;}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 45
column: 2
content: functionexecuteCall(addressto,uint256value,bytesdata)internalreturns(boolsuccess){assembly{success:=call(gas,to,value,add(data,0x20),mload(data),0,0)}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 14
column: 4
content: for(uinti=0;i<owners_.length;i++){require(owners_[i]>lastAdd);isOwner[owners_[i]]=true;lastAdd=owners_[i];}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 3
column: 0
content: contractSimpleMultiSig{uintpublicnonce;uintpublicthreshold;mapping(address=>bool)isOwner;address[]publicownersArr;functionSimpleMultiSig(uintthreshold_,address[]owners_)public{require(owners_.length<=10&&threshold_<=owners_.length&&threshold_!=0);addresslastAdd=address(0);for(uinti=0;i<owners_.length;i++){require(owners_[i]>lastAdd);isOwner[owners_[i]]=true;lastAdd=owners_[i];}ownersArr=owners_;threshold=threshold_;}functionexecute(uint8[]sigV,bytes32[]sigR,bytes32[]sigS,addressdestination,uintvalue,bytesdata)public{require(sigR.length==threshold);require(sigR.length==sigS.length&&sigR.length==sigV.length);bytes32txHash=keccak256(byte(0x19),byte(0),this,destination,value,data,nonce);addresslastAdd=address(0);for(uinti=0;i<threshold;i++){addressrecovered=ecrecover(txHash,sigV[i],sigR[i],sigS[i]);require(recovered>lastAdd&&isOwner[recovered]);lastAdd=recovered;}nonce=nonce+1;require(executeCall(destination,value,data));}functionexecuteCall(addressto,uint256value,bytesdata)internalreturns(boolsuccess){assembly{success:=call(gas,to,value,add(data,0x20),mload(data),0,0)}}function()payablepublic{}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 901eae
severity: 1
line: 29
column: 21
content: keccak256(byte(0x19),byte(0),this,destination,value,data,nonce)

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 51
column: 22
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 10
column: 43
content: address[]owners_

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 24
column: 19
content: uint8[]sigV

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 24
column: 33
content: bytes32[]sigR

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 24
column: 49
content: bytes32[]sigS

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 24
column: 98
content: bytesdata

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 45
column: 50
content: bytesdata

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 46
column: 4
content: assembly{success:=call(gas,to,value,add(data,0x20),mload(data),0,0)}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 7
column: 2
content: mapping(address=>bool)isOwner;

SOLIDITY_VISIBILITY :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :2
SOLIDITY_ADDRESS_HARDCODED :3
SOLIDITY_UPGRADE_TO_050 :8
SOLIDITY_GAS_LIMIT_IN_LOOPS :1
SOLIDITY_USING_INLINE_ASSEMBLY :1

