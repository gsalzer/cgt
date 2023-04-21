reorder_contracts_2_3/test3555.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 9
column: 4
content: functionversions(address)constantreturns(uint);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 75
column: 4
content: function_getVersion()constantinternalreturns(uint){returnEventsHistory(address(this)).versions(msg.sender);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 9
column: 4
content: functionversions(address)constantreturns(uint);

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 30
column: 4
content: functionemitTransfer(address_from,address_to,bytes32_symbol,uint_value,string_reference){Transfer(_from,_to,_symbol,_value,_reference,_getVersion());}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 34
column: 4
content: functionemitTransferToICAP(address_from,address_to,bytes32_icap,uint_value,string_reference){TransferToICAP(_from,_to,_icap,_value,_reference,_getVersion());}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 38
column: 4
content: functionemitIssue(bytes32_symbol,uint_value,address_by){Issue(_symbol,_value,_by,_getVersion());}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 42
column: 4
content: functionemitRevoke(bytes32_symbol,uint_value,address_by){Revoke(_symbol,_value,_by,_getVersion());}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 46
column: 4
content: functionemitOwnershipChange(address_from,address_to,bytes32_symbol){OwnershipChange(_from,_to,_symbol,_getVersion());}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 50
column: 4
content: functionemitApprove(address_from,address_spender,bytes32_symbol,uint_value){Approve(_from,_spender,_symbol,_value,_getVersion());}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 54
column: 4
content: functionemitRecovery(address_from,address_to,address_by){Recovery(_from,_to,_by,_getVersion());}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 58
column: 4
content: functionemitError(bytes32_message){Error(_message,_getVersion());}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 62
column: 4
content: functionemitChange(bytes32_symbol){Change(_symbol,_getVersion());}

SOLIDITY_VISIBILITY :10
SOLIDITY_DEPRECATED_CONSTRUCTIONS :2

