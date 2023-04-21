reorder_contracts_2_3/test3387.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 97
column: 8
content: while(i<curve.length){uintl=uint(curve[i]);uintend=uint(curve[i+l+1]);uintnextIndex=i+l+2;if(a>end){i=nextIndex;continue;}sum+=evaluatePiece(curve,i,a,(a+b>end)?end-a:b);if(a+b<=end){returnsum;}else{b-=end-a+1;a=end;i=nextIndex;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 97
column: 16
content: i<curve.length

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 47
column: 16
content: ^

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 40
column: 59
content: string

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 41
column: 22
content: stringcontractName

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 89
column: 30
content: int[]curve

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 123
column: 27
content: int[]curve

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 145
column: 44
content: int256[]

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 146
column: 40
content: bytes32[]

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 147
column: 70
content: bytes32[]

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 150
column: 43
content: bytes

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 151
column: 73
content: bytes

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 152
column: 64
content: bytes32[]

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 154
column: 69
content: int[]

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 157
column: 64
content: bytes32[]

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 51
column: 1
content: addresscoordinatorAddr;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 52
column: 1
content: ZapCoordinatorInterfacecoordinator;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 173
column: 4
content: RegistryInterfaceregistry;

SOLIDITY_VISIBILITY :3
SOLIDITY_PRAGMAS_VERSION :2
SOLIDITY_EXTRA_GAS_IN_LOOPS :1
SOLIDITY_UPGRADE_TO_050 :12
SOLIDITY_GAS_LIMIT_IN_LOOPS :1

