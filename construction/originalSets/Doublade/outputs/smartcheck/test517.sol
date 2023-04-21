reorder_contracts_2_3/test517.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 38
column: 22
content: 0x1d099f784a31a05011a84c8c18087b56f4701c9b

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 41
column: 4
content: functionsetInvest(address_address)externalonlyOwner{invest=InvestInterface(_address);}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 45
column: 4
content: functionsetToken(address_address)externalonlyOwner{token=ERC20(_address);}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 49
column: 4
content: functionreceiveApproval(addressfrom,uint256_amount,address_token,bytes_data){require(token.transferFrom(from,owner,registrationPrice));invest.registerReferral(from);}

SOLIDITY_VISIBILITY :1
SOLIDITY_OVERPOWERED_ROLE :2
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_ADDRESS_HARDCODED :1

