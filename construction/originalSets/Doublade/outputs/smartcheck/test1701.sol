reorder_contracts_2_3/test1701.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 20
column: 30
content: throw

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 14
column: 2
content: functiongetPubKeyByHash(stringphoneHash)constantreturns(stringpubKey){Useru=users[phoneHash];pubKey=u.pubKeys[u.pubKeysCount];}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 20
column: 4
content: if(msg.sender!=owner){throw;}

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 441gim
severity: 1
line: 15
column: 4
content: Useru=users[phoneHash]

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 12
column: 2
content: functionSylence(){owner=msg.sender;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 14
column: 2
content: functiongetPubKeyByHash(stringphoneHash)constantreturns(stringpubKey){Useru=users[phoneHash];pubKey=u.pubKeys[u.pubKeysCount];}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 19
column: 2
content: functionregisterNewPubKeyForHash(stringphoneHash,stringpubKey){if(msg.sender!=owner){throw;}users[phoneHash].pubKeys[++users[phoneHash].pubKeysCount]=pubKey;}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 9
column: 2
content: mapping(string=>User)users;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 11
column: 2
content: addressowner;

SOLIDITY_VISIBILITY :5
SOLIDITY_DEPRECATED_CONSTRUCTIONS :2
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_REVERT_REQUIRE :1
SOLIDITY_UPGRADE_TO_050 :1

