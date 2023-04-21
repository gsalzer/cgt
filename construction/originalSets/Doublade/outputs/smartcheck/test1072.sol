reorder_contracts_2_3/test1072.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 60
column: 8
content: newOwner=address(0)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 76
column: 31
content: balances[address(0)]

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 27
column: 4
content: functiontotalSupply()publicconstantreturns(uint);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 28
column: 4
content: functionbalanceOf(addresstokenOwner)publicconstantreturns(uintbalance);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 29
column: 4
content: functionallowance(addresstokenOwner,addressspender)publicconstantreturns(uintremaining);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 75
column: 4
content: functiontotalSupply()publicconstantreturns(uint){return_totalSupply-balances[address(0)];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 79
column: 4
content: functionbalanceOf(addresstokenOwner)publicconstantreturns(uintbalance){returnbalances[tokenOwner];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 104
column: 4
content: functionallowance(addresstokenOwner,addressspender)publicconstantreturns(uintremaining){returnallowed[tokenOwner][spender];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 199
column: 4
content: functiontokenReservedBalanceOf(uinttokenId,addresstokenOwner)publicconstantreturns(uintbalance){require(0<=tokenId&&tokenId<numbersOfReservedTokens);UnderlyingTokenstoragetoken=tokens[tokenId];returntoken.reservedBalances[tokenOwner];}

ruleId: SOLIDITY_DIV_MUL
patternId: 09hhh1
severity: 2
line: 175
column: 27
content: balanceValue.div(token.truncateDivision).mul(token.truncateDivision)

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 90
column: 4
content: functionapprove(addressspender,uinttokens)publicreturns(boolsuccess){allowed[msg.sender][spender]=tokens;emitApproval(msg.sender,spender,tokens);returntrue;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 157
column: 8
content: for(uinti=0;i<numbersOfReservedTokens;i++){tokens[i]=UnderlyingToken(addressesOfTokens[i],combinedRatios[i],multiplier.exp(tokenDecimals[i].sub(decimals)));}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 206
column: 8
content: for(uinti=0;i<numbersOfReservedTokens;i++){UnderlyingTokenstoragetoken=tokens[i];require(token.reservedBalances[msg.sender]>=amount.mul(token.ratioMultiplier).mul(token.truncateDivision));}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 211
column: 8
content: for(i=0;i<numbersOfReservedTokens;i++){token=tokens[i];token.reservedBalances[msg.sender]=token.reservedBalances[msg.sender].sub(amount.mul(token.ratioMultiplier).mul(token.truncateDivision));}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 245
column: 8
content: for(uinti=0;i<numbersOfReservedTokens;i++){UnderlyingTokenstoragetoken=tokens[i];ERC20Interface(token.tokenAddress).transfer(msg.sender,receive.mul(token.ratioMultiplier).mul(token.truncateDivision));}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 64
column: 0
content: contractTokenCoreisERC20Interface{usingSafeMathforuint;stringpublicsymbol;stringpublicname;uint8publicdecimals;uintpublic_totalSupply;mapping(address=>uint)balances;mapping(address=>mapping(address=>uint))allowed;functiontotalSupply()publicconstantreturns(uint){return_totalSupply-balances[address(0)];}functionbalanceOf(addresstokenOwner)publicconstantreturns(uintbalance){returnbalances[tokenOwner];}functiontransfer(addressto,uinttokens)publicreturns(boolsuccess){balances[msg.sender]=balances[msg.sender].sub(tokens);balances[to]=balances[to].add(tokens);emitTransfer(msg.sender,to,tokens);returntrue;}functionapprove(addressspender,uinttokens)publicreturns(boolsuccess){allowed[msg.sender][spender]=tokens;emitApproval(msg.sender,spender,tokens);returntrue;}functiontransferFrom(addressfrom,addressto,uinttokens)publicreturns(boolsuccess){balances[from]=balances[from].sub(tokens);allowed[from][msg.sender]=allowed[from][msg.sender].sub(tokens);balances[to]=balances[to].add(tokens);emitTransfer(from,to,tokens);returntrue;}functionallowance(addresstokenOwner,addressspender)publicconstantreturns(uintremaining){returnallowed[tokenOwner][spender];}function()publicpayable{revert();}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_REDUNDANT_FALLBACK_REJECT
patternId: b85a32
severity: 1
line: 108
column: 31
content: {revert();}

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 65
column: 4
content: usingSafeMathforuint;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 108
column: 16
content: public

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 72
column: 4
content: mapping(address=>uint)balances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 73
column: 4
content: mapping(address=>mapping(address=>uint))allowed;

SOLIDITY_VISIBILITY :2
SOLIDITY_SAFEMATH :1
SOLIDITY_DEPRECATED_CONSTRUCTIONS :7
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :4
SOLIDITY_ADDRESS_HARDCODED :2
SOLIDITY_UPGRADE_TO_050 :1
SOLIDITY_DIV_MUL :1
SOLIDITY_REDUNDANT_FALLBACK_REJECT :1
SOLIDITY_ERC20_APPROVE :1

