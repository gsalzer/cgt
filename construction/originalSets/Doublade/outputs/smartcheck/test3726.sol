reorder_contracts_2_3/test3726.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 118
column: 0
content: contractCrowdsaleisReentrancyGuard{usingSafeMathforuint256;addresspublicmanager;addresspayablepublicreturnWallet;uint256publicetherEuroRate;uint256publicsafetyLimit=300000*10**18;ERC20Interfaceprivate_token;uint256publicminWeiValue=10**17;constructor(uint256rate,address<missing ')'>payablewallet,addresscontractManager,ERC20Interfacetoken)public{require(rate>0);require(wallet!=address(0));require(contractManager!=address(0));require(address<missing ';'>(token)!=address(0));manager=contractManager;etherEuroRate=rate;returnWallet=wallet;_token=token;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 68
column: 16
content: ^

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 101
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 78
column: 12
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 125
column: 19
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 119
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 128
column: 4
content: constructor(uint256rate,address<missing ')'>payable

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 130
column: 28
content: wallet,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 131
column: 12
content: addresscontractManager,

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 132
column: 12
content: ERC20Interfacetoken)public{

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 134
column: 8
content: require(rate>0);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 135
column: 8
content: require(wallet!=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 135
column: 26
content: address

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 135
column: 33
content: (0));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 136
column: 8
content: require(contractManager!=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 136
column: 35
content: address

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 136
column: 42
content: (0));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 137
column: 8
content: require

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 137
column: 15
content: (address<missing ';'>

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 137
column: 23
content: (token)!=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 137
column: 34
content: address

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 137
column: 41
content: (0));

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 139
column: 8
content: manager=contractManager;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 140
column: 8
content: etherEuroRate=rate;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 141
column: 8
content: returnWallet=wallet;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 142
column: 8
content: _token=token;

SOLIDITY_VISIBILITY :20
SOLIDITY_SAFEMATH :1
SOLIDITY_PRAGMAS_VERSION :3
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :2

