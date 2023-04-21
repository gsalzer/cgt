reorder_contracts_2_3/test2214.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 100
column: 31
content: 0x0

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 225
column: 31
content: 0x0

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 327
column: 4
content: functionapprove(address_spender,uint256_value)publicreturns(bool){require(!frozenAccount[_spender]);allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 314
column: 8
content: for(uinti=0;i<transForAddrs[_address].length;i++){_addressTwo[i]=transForAddrs[_address][i].toAddr;_status[i]=transForAddrs[_address][i].sendFlag;_amount[i]=transForAddrs[_address][i].amount;_balances[i]=transForAddrs[_address][i].balances;_balances_crowd[i]=transForAddrs[_address][i].balance_crowd;_regdate[i]=transForAddrs[_address][i].regdate;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 314
column: 8
content: for(uinti=0;i<transForAddrs[_address].length;i++){_addressTwo[i]=transForAddrs[_address][i].toAddr;_status[i]=transForAddrs[_address][i].sendFlag;_amount[i]=transForAddrs[_address][i].amount;_balances[i]=transForAddrs[_address][i].balances;_balances_crowd[i]=transForAddrs[_address][i].balance_crowd;_regdate[i]=transForAddrs[_address][i].regdate;}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 190
column: 4
content: functionsetLockForAddr(address_address,uint_startLock,uint_endLock)onlyOwnerpublic{lockForAddrs[_address]=lockForAddr(_startLock,_endLock);}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: >=

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 89
column: 4
content: mapping(address=>uint256)balances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 90
column: 4
content: mapping(address=>uint256)balances_crowd;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 92
column: 4
content: uint256totalSupply_;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 186
column: 4
content: mapping(address=>transForAddr[])transForAddrs;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 187
column: 4
content: mapping(address=>lockForAddr)lockForAddrs;

SOLIDITY_VISIBILITY :5
SOLIDITY_OVERPOWERED_ROLE :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :1
SOLIDITY_ADDRESS_HARDCODED :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :1
SOLIDITY_ERC20_APPROVE :1

