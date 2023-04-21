reorder_contracts_2_3/test2623.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 10
column: 42
content: 0x1411b3B189B01f6e6d1eA883bFFcbD3a5224934C

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 18
column: 26
content: 0xf9ea0E2857405C859bb8647ECB11f931D1259753

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 19
column: 26
content: 0xd8203A652452906586F2E6cB6e31f6f7fed094D4

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 24
column: 29
content: 0x7b534c2D0F9Ee973e0b6FE8D4000cA711A20f22e

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 144
column: 8
content: for(uinti=0;i<signers.length;i++){if(!isSigner[signers[i]]){require(signers[i]!=address(0),"new signer must not be 0x0");activeSignersCount++;allSigners.push(signers[i]);isSigner[signers[i]]=true;emitSignerAdded(signers[i]);}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 158
column: 8
content: for(uinti=0;i<signers.length;i++){if(isSigner[signers[i]]){require(activeSignersCount>1,"must not remove last signer");activeSignersCount--;isSigner[signers[i]]=false;emitSignerRemoved(signers[i]);}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 177
column: 8
content: for(uint8i=0;i<CHUNK_SIZE&&i+offset<allSigners.length;i++){addresssignerAddress=allSigners[i+offset];signersResult[i]=[i+offset,uint(signerAddress),isSigner[signerAddress]?1:0];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 190
column: 8
content: for(uint8i=0;i<CHUNK_SIZE&&i+offset<scriptAddresses.length;i++){addressscriptAddress=scriptAddresses[i+offset];scriptsResult[i]=[i+offset,uint(scriptAddress),uint(scripts[scriptAddress].state),scripts[scriptAddress].signCount];}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 144
column: 8
content: for(uinti=0;i<signers.length;i++){if(!isSigner[signers[i]]){require(signers[i]!=address(0),"new signer must not be 0x0");activeSignersCount++;allSigners.push(signers[i]);isSigner[signers[i]]=true;emitSignerAdded(signers[i]);}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 158
column: 8
content: for(uinti=0;i<signers.length;i++){if(isSigner[signers[i]]){require(activeSignersCount>1,"must not remove last signer");activeSignersCount--;isSigner[signers[i]]=false;emitSignerRemoved(signers[i]);}}

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 43
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 142
column: 24
content: address[]signers

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 156
column: 27
content: address[]signers

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 9
column: 4
content: PreTokenProxyconstantpreTokenProxy=PreTokenProxy(0x1411b3B189B01f6e6d1eA883bFFcbD3a5224934C);

SOLIDITY_VISIBILITY :1
SOLIDITY_SAFEMATH :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :4
SOLIDITY_ADDRESS_HARDCODED :4
SOLIDITY_UPGRADE_TO_050 :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :2

