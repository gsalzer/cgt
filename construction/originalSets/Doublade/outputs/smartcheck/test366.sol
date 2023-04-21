reorder_contracts_2_3/test366.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 41
column: 8
content: tree.stack.length=0

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 42
column: 8
content: tree.nodes.length=0

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 81
column: 20
content: tree.stack.length--

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 137
column: 8
content: for(uinti=0;i<tree.nodes.length;i++){if((tree.K*i)+1>=tree.nodes.length){startIndex=i;break;}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 148
column: 8
content: for(uintj=loopStartIndex;j<tree.nodes.length;j++){if(valuesIndex<_count){values[valuesIndex]=tree.nodes[j];valuesIndex++;}else{hasMore=true;break;}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 173
column: 8
content: while((tree.K*treeIndex)+1<tree.nodes.length)for(uinti=1;i<=tree.K;i++){uintnodeIndex=(tree.K*treeIndex)+i;uintnodeValue=tree.nodes[nodeIndex];if(currentDrawnNumber>=nodeValue)currentDrawnNumber-=nodeValue;else{treeIndex=nodeIndex;break;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 137
column: 8
content: for(uinti=0;i<tree.nodes.length;i++){if((tree.K*i)+1>=tree.nodes.length){startIndex=i;break;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 173
column: 15
content: (tree.K*treeIndex)+1<tree.nodes.length

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 133
column: 43
content: uint[]values

SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_ARRAY_LENGTH_MANIPULATION :3
SOLIDITY_EXTRA_GAS_IN_LOOPS :3
SOLIDITY_UPGRADE_TO_050 :1
SOLIDITY_GAS_LIMIT_IN_LOOPS :2

