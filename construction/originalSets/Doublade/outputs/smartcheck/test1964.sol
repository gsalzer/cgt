reorder_contracts_2_3/test1964.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 240
column: 4
content: functiontotalSupply()publicconstantreturns(uinttotalsupply){totalsupply=_totalSupply;}

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 160
column: 4
content: functionapprove(address_spender,uint256_value)publicreturns(boolsuccess){allowance[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 225
column: 0
content: contractTokenBOSCisowned,TokenERC20{uintpublicminBalanceForAccounts;mapping(address=>bool)publicfrozenAccount;eventFrozenFunds(addresstarget,boolfrozen);constructor()TokenERC20()public{}functiontotalSupply()publicconstantreturns(uinttotalsupply){totalsupply=_totalSupply;}function_transfer(address_from,address_to,uint_value)internal{require(_to!=0x0);require(balanceOf[_from]>=_value);require(SafeMath.safeAdd(balanceOf[_to],_value)>=balanceOf[_to]);require(!frozenAccount[_from]);require(!frozenAccount[_to]);balanceOf[_from]=SafeMath.safeSub(balanceOf[_from],_value);balanceOf[_to]=SafeMath.safeAdd(balanceOf[_to],_value);emitTransfer(_from,_to,_value);}functionmintToken(addresstarget,uint256mintedAmount)onlyOwnerpublic{balanceOf[target]=SafeMath.safeAdd(balanceOf[target],mintedAmount);_totalSupply=SafeMath.safeAdd(_totalSupply,mintedAmount);emitTransfer(0,this,mintedAmount);emitTransfer(this,target,mintedAmount);}functionfreezeAccount(addresstarget,boolfreeze)onlyOwnerpublic{frozenAccount[target]=freeze;emitFrozenFunds(target,freeze);}function()publicpayable{}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 8
column: 16
content: ^

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 273
column: 16
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 176
column: 62
content: bytes_extraData

SOLIDITY_DEPRECATED_CONSTRUCTIONS :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_UPGRADE_TO_050 :2
SOLIDITY_ERC20_APPROVE :1

