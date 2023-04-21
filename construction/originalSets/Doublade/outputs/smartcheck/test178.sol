reorder_contracts_2_3/test178.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 11
column: 62
content: 0x4686f017D456331ed2C1de66e134D8d05B24413D

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 18
column: 27
content: 0x9de3F6E7caCbb7e1c2489dFCe21abbB0ecEE6213

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 19
column: 27
content: 0xAE162e28575Ba898dc08D283f2Be10AE8b4114A2

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 20
column: 27
content: 0x53DBF6E8fe46307C7536eAbb0D90CADA3e732716

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 25
column: 30
content: 0x7b534c2D0F9Ee973e0b6FE8D4000cA711A20f22e

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 145
column: 8
content: for(uinti=0;i<signers.length;i++){if(!isSigner[signers[i]]){require(signers[i]!=address(0),"new signer must not be 0x0");activeSignersCount++;allSigners.push(signers[i]);isSigner[signers[i]]=true;emitSignerAdded(signers[i]);}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 159
column: 8
content: for(uinti=0;i<signers.length;i++){if(isSigner[signers[i]]){require(activeSignersCount>1,"must not remove last signer");activeSignersCount--;isSigner[signers[i]]=false;emitSignerRemoved(signers[i]);}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 178
column: 8
content: for(uint8i=0;i<CHUNK_SIZE&&i+offset<allSigners.length;i++){addresssignerAddress=allSigners[i+offset];signersResult[i]=[i+offset,uint(signerAddress),isSigner[signerAddress]?1:0];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 191
column: 8
content: for(uint8i=0;i<CHUNK_SIZE&&i+offset<scriptAddresses.length;i++){addressscriptAddress=scriptAddresses[i+offset];scriptsResult[i]=[i+offset,uint(scriptAddress),uint(scripts[scriptAddress].state),scripts[scriptAddress].signCount];}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 145
column: 8
content: for(uinti=0;i<signers.length;i++){if(!isSigner[signers[i]]){require(signers[i]!=address(0),"new signer must not be 0x0");activeSignersCount++;allSigners.push(signers[i]);isSigner[signers[i]]=true;emitSignerAdded(signers[i]);}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 159
column: 8
content: for(uinti=0;i<signers.length;i++){if(isSigner[signers[i]]){require(activeSignersCount>1,"must not remove last signer");activeSignersCount--;isSigner[signers[i]]=false;emitSignerRemoved(signers[i]);}}

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 44
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 143
column: 24
content: address[]signers

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 157
column: 27
content: address[]signers

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 10
column: 4
content: StabilityBoardProxyconstantstabilityBoardProxy=StabilityBoardProxy(0x4686f017D456331ed2C1de66e134D8d05B24413D);

SOLIDITY_VISIBILITY :1
SOLIDITY_SAFEMATH :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :4
SOLIDITY_ADDRESS_HARDCODED :5
SOLIDITY_UPGRADE_TO_050 :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :2

