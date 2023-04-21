reorder_contracts_2_3/test187.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 190
column: 8
content: _owner=address(0)

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 228
column: 4
content: for(uinti=0;i<s.length;i++){bytec=s[i];if(c>='a'&&c<='z'||c=='_'){ok=true;partlen++;}elseif(c>='0'&&c<='9'){partlen++;}elseif(c=='-'){if(last=='.'){returnfalse;}partlen++;}elseif(c=='.'){if(last=='.'||last=='-'){returnfalse;}if(partlen>63||partlen==0){returnfalse;}partlen=0;}else{returnfalse;}last=c;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 228
column: 4
content: for(uinti=0;i<s.length;i++){bytec=s[i];if(c>='a'&&c<='z'||c=='_'){ok=true;partlen++;}elseif(c>='0'&&c<='9'){partlen++;}elseif(c=='-'){if(last=='.'){returnfalse;}partlen++;}elseif(c=='.'){if(last=='.'||last=='-'){returnfalse;}if(partlen>63||partlen==0){returnfalse;}partlen=0;}else{returnfalse;}last=c;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: >=

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 24
content: <

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 62
column: 15
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 100
column: 9
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 147
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 314
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 316
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 317
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 319
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 320
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 321
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 323
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 324
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 325
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 327
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 328
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 329
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 330
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 332
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 333
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 334
column: 18
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 335
column: 18
content: private

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 83hf3l
severity: 1
line: 429
column: 12
content: (Servicestorageservice,bytes32sidHash)

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 517
column: 2
content: functionpublishServiceVersion(bytescalldatasid,bytescalldata<missing ')'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 306
column: 2
content: uintconstantINFINITY=~uint256(0);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 307
column: 2
content: uintconstantSID_MIN_LEN=1;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 308
column: 2
content: uintconstantSID_MAX_LEN=63;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 519
column: 19
content: manifest,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 520
column: 4
content: bytescalldata

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 525
column: 7
content: (!isServiceExist<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 525
column: 23
content: (sid)){

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 526
column: 6
content: createService(sid);

SOLIDITY_VISIBILITY :9
SOLIDITY_PRAGMAS_VERSION :2
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :20
SOLIDITY_EXTRA_GAS_IN_LOOPS :1
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_GAS_LIMIT_IN_LOOPS :1
SOLIDITY_SHOULD_RETURN_STRUCT :1

