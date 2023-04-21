reorder_contracts_2_3/test1422.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 242
column: 47
content: 0xD51bD6EB7aA3661c9c5726403315F0B0f8d96C2e

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 443
column: 8
content: for(uint256i=0;i<numbers.length;i++){(uint256start,uint256end)=NumberCompressor.decode(numbers[i]);if(targetNumber>=start&&targetNumber<=end){uint256fund=rounds[_roundID].pond.sub(bonus);_player.transfer(bonus);platform.transfer(fund);rounds[_roundID].state=DataSet.RoundState.ASSIGNED;rounds[_roundID].winner=_player;emitonAssign(msg.sender,block.timestamp,_player,_roundID,rounds[_roundID].pond,bonus,fund);break;}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 483
column: 8
content: for(uint256i=0;i<numbers.length;i++){(uint256begin,uint256end)=NumberCompressor.decode(numbers[i]);count+=(end-begin+1);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 443
column: 8
content: for(uint256i=0;i<numbers.length;i++){(uint256start,uint256end)=NumberCompressor.decode(numbers[i]);if(targetNumber>=start&&targetNumber<=end){uint256fund=rounds[_roundID].pond.sub(bonus);_player.transfer(bonus);platform.transfer(fund);rounds[_roundID].state=DataSet.RoundState.ASSIGNED;rounds[_roundID].winner=_player;emitonAssign(msg.sender,block.timestamp,_player,_roundID,rounds[_roundID].pond,bonus,fund);break;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 483
column: 8
content: for(uint256i=0;i<numbers.length;i++){(uint256begin,uint256end)=NumberCompressor.decode(numbers[i]);count+=(end-begin+1);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 123
column: 15
content: z<y

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 380
column: 15
content: true

ruleId: SOLIDITY_INCORRECT_BLOCKHASH
patternId: b629ad
severity: 2
line: 344
column: 65
content: block.number

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 32
column: 21
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 238
column: 25
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 239
column: 25
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 240
column: 25
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 241
column: 25
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 242
column: 25
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 243
column: 16
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 244
column: 16
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 245
column: 16
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 246
column: 16
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 247
column: 16
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 248
column: 16
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 251
column: 39
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 253
column: 55
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 254
column: 30
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 236
column: 4
content: usingSafeMathfor*;

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 7d54ca
severity: 1
line: 41
column: 58
content: (uint256,uint256)

ruleId: SOLIDITY_TRANSFER_IN_LOOP
patternId: 8jdj43
severity: 2
line: 443
column: 8
content: for(uint256i=0;i<numbers.length;i++){(uint256start,uint256end)=NumberCompressor.decode(numbers[i]);if(targetNumber>=start&&targetNumber<=end){uint256fund=rounds[_roundID].pond.sub(bonus);_player.transfer(bonus);platform.transfer(fund);rounds[_roundID].state=DataSet.RoundState.ASSIGNED;rounds[_roundID].winner=_player;emitonAssign(msg.sender,block.timestamp,_player,_roundID,rounds[_roundID].pond,bonus,fund);break;}}

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 304
column: 15
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 514
column: 90
content: uint256[]

SOLIDITY_SAFEMATH :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :15
SOLIDITY_INCORRECT_BLOCKHASH :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :2
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_UPGRADE_TO_050 :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :4
SOLIDITY_SHOULD_RETURN_STRUCT :1
SOLIDITY_TRANSFER_IN_LOOP :1

