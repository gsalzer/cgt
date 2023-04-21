reorder_contracts_2_3/test1696.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 279
column: 1
content: addresspublicforwardPurchaseFeesTo=address(0);

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 281
column: 1
content: addresspublicforwardUpdateFeesTo=address(0);

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 298
column: 2
content: for(uinti=0;i<_pricePoints.length;i++){pricePoints[pricePointsLength++]=_pricePoints[i];}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 338
column: 1
content: functioncountPurchasedPixels(address[16]_contracts)viewpublicreturns(uint256_count){varlastRegionId=BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getLastRegionId();for(uint256i=0;i<=lastRegionId;i++){if(BdpDataStorage(BdpContracts.getBdpDataStorage(_contracts)).getRegionPurchasedAt(i)>0){var(area,,)=calculateArea(_contracts,i);_count+=area;}}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 298
column: 2
content: for(uinti=0;i<_pricePoints.length;i++){pricePoints[pricePointsLength++]=_pricePoints[i];}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 75
column: 1
content: functionsetOwner(address_newOwner)externalonlyOwner{require(_newOwner!=address(0));ownerAddress=_newOwner;}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 80
column: 1
content: functionsetManager(address_newManager)externalonlyOwner{require(_newManager!=address(0));managerAddress=_newManager;}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 85
column: 1
content: functionsetContracts(address[16]_contracts)externalonlyOwner{contracts=_contracts;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 151
column: 1
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 329
column: 1
content: usingSafeMathforuint256;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 292
column: 25
content: uint64[]_pricePoints

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 297
column: 28
content: uint64[]_pricePoints

SOLIDITY_SAFEMATH :2
SOLIDITY_OVERPOWERED_ROLE :3
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :1
SOLIDITY_ADDRESS_HARDCODED :2
SOLIDITY_UPGRADE_TO_050 :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :1

