reorder_contracts_2_3/test1655.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 438
column: 4
content: _owner=address(0)

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 179
column: 2
content: functionapprove(addressspender,uint256value)publicreturns(bool){require(spender!=address(0));_allowed[msg.sender][spender]=value;emitApproval(msg.sender,spender,value);returntrue;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 502
column: 8
content: for(i=0;i<_a.length;++i)require(_a[i]!=0);

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 508
column: 12
content: for(i=0;i<_n.length;++i)require(_n[i]>0);

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 527
column: 8
content: for(uint256i=0;i<_b.length;++i)require(_b[i]!=0);

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 550
column: 12
content: for(i=0;i<A[_ix].length;++i)ERC20Burnable(A[_ix][i]).burnFrom(msg.sender,mux*N[_ix][i]);

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 554
column: 12
content: for(i=0;i<B.length;++i)ERC20(B[i]).safeTransfer(msg.sender,M[i]*mux);

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 502
column: 8
content: for(i=0;i<_a.length;++i)require(_a[i]!=0);

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 508
column: 12
content: for(i=0;i<_n.length;++i)require(_n[i]>0);

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 527
column: 8
content: for(uint256i=0;i<_b.length;++i)require(_b[i]!=0);

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 550
column: 12
content: for(i=0;i<A[_ix].length;++i)ERC20Burnable(A[_ix][i]).burnFrom(msg.sender,mux*N[_ix][i]);

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 554
column: 12
content: for(i=0;i<B.length;++i)ERC20(B[i]).safeTransfer(msg.sender,M[i]*mux);

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 521
column: 4
content: functionsetSink(address[]_b,uint256[]_m)externalonlyOwner{require(_b.length==_m.length);for(uint256i=0;i<_b.length;++i)require(_b[i]!=0);B=_b;M=_m;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 116
column: 31
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 118
column: 52
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 120
column: 10
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 390
column: 10
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 114
column: 2
content: usingSafeMathforuint256;

SOLIDITY_SAFEMATH :1
SOLIDITY_OVERPOWERED_ROLE :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :4
SOLIDITY_EXTRA_GAS_IN_LOOPS :5
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_GAS_LIMIT_IN_LOOPS :5
SOLIDITY_ERC20_APPROVE :1

