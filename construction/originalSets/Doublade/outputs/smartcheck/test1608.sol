reorder_contracts_2_3/test1608.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 13
column: 18
content: 0xCE05A8Aa56E1054FAFC214788246707F5258c0Ae

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 14
column: 18
content: 0xBb62A710BDbEAF1d3AD417A222d1ab6eD08C37f5

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 15
column: 18
content: 0x009A55A3c16953A359484afD299ebdC444200EdB

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 35
column: 4
content: for(uint8i=0;i<managers.length;++i){if(votesAddr[managers[i]]==0x0){lock=false;break;}if(votesAddr[managers[i]]!=addr){lock=false;break;}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 52
column: 4
content: for(uint8i=0;i<managers.length;++i){if(managers[i]==msg.sender){_;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 35
column: 4
content: for(uint8i=0;i<managers.length;++i){if(votesAddr[managers[i]]==0x0){lock=false;break;}if(votesAddr[managers[i]]!=addr){lock=false;break;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 52
column: 4
content: for(uint8i=0;i<managers.length;++i){if(managers[i]==msg.sender){_;}}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 4
column: 0
content: contractTgeProxy{address[]publicmanagers;mapping(address=>address)votesAddr;boollocked=false;functionTgeProxy(){managers.push(0xCE05A8Aa56E1054FAFC214788246707F5258c0Ae);managers.push(0xBb62A710BDbEAF1d3AD417A222d1ab6eD08C37f5);managers.push(0x009A55A3c16953A359484afD299ebdC444200EdB);}function()payableisLocked{votesAddr[managers[0]].transfer(msg.value);}functionsetTgeAddr(addressaddr)isManagerisUnlocked{votesAddr[msg.sender]=addr;lockAttemp();}functionlockAttemp()private{addressaddr=votesAddr[managers[0]];boollock=true;for(uint8i=0;i<managers.length;++i){if(votesAddr[managers[i]]==0x0){lock=false;break;}if(votesAddr[managers[i]]!=addr){lock=false;break;}}if(lock){locked=true;}}modifierisManager(){for(uint8i=0;i<managers.length;++i){if(managers[i]==msg.sender){_;}}}modifierisUnlocked(){assert(!locked);_;}modifierisLocked(){assert(locked);_;}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 11
column: 2
content: functionTgeProxy(){managers.push(0xCE05A8Aa56E1054FAFC214788246707F5258c0Ae);managers.push(0xBb62A710BDbEAF1d3AD417A222d1ab6eD08C37f5);managers.push(0x009A55A3c16953A359484afD299ebdC444200EdB);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 21
column: 2
content: function()payableisLocked{votesAddr[managers[0]].transfer(msg.value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 27
column: 2
content: functionsetTgeAddr(addressaddr)isManagerisUnlocked{votesAddr[msg.sender]=addr;lockAttemp();}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 7
column: 2
content: mapping(address=>address)votesAddr;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 9
column: 2
content: boollocked=false;

SOLIDITY_VISIBILITY :5
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :2
SOLIDITY_ADDRESS_HARDCODED :3
SOLIDITY_GAS_LIMIT_IN_LOOPS :2

