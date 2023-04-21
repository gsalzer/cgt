reorder_contracts_2_3/test3849.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 115
column: 32
content: 0x0

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 5
column: 4
content: functionbalanceOf(addresswho)publicconstantreturns(uint256);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 11
column: 4
content: functionallowance(addressowner,addressspender)publicconstantreturns(uint256);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 105
column: 4
content: functionallowance(address_owner,address_spender)constantpublicreturns(uint256){returnallowed[_owner][_spender];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 109
column: 4
content: functionbalanceOf(address_owner)constantpublicreturns(uint256){returnbalanceOf[_owner];}

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 140
column: 4
content: functionapprove(address_spender,uint256_value)publicreturns(boolsuccess){allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 17
column: 0
content: contractLoveAirCoffeeisERC20{addressowner=msg.sender;mapping(address=>uint256)publicbalanceOf;mapping(address=>mapping(address=>uint256))publicallowed;stringpublicname="Love Air Coffee";stringpublicsymbol="LAC";uint8publicdecimals=18;uint256publictotalSupply;uint256publictokensPerOneEther;boolpublictransferTokenNow=true;boolpublicfrozenCoin=true;uint256publicminEther;uint256publicmaxEther;enumState{Disabled,Enabled}Statepublicstate=State.Disabled;eventTransfer(addressindexedfrom,addressindexedto,uint256value);eventApproval(addressindexed_owner,addressindexed_spender,uint256_value);eventBurn(addressindexedfrom,uint256value);modifieronlyOwner(){require(msg.sender==owner);_;}functiontransferOwnership(addressnewOwner)onlyOwnerpublic{if(newOwner!=address(0)){owner=newOwner;}}functionLoveAirCoffee(uint256initialSupply)public{totalSupply=initialSupply*10**uint256(decimals);balanceOf[msg.sender]=totalSupply;emitTransfer(address(0),owner,totalSupply);}functionstartBuyingTokens(bool_transferTokenNow,uint256_minEther,uint256_maxEther)publiconlyOwner{require(state==State.Disabled);transferTokenNow=_transferTokenNow;minEther=_minEther*10**uint256(decimals);maxEther=_maxEther*10**uint256(decimals);state=State.Enabled;}functionstopBuyingTokens()publiconlyOwner{require(state==State.Enabled);state=State.Disabled;}functionsetFrozenCoin(bool_value)publiconlyOwner{frozenCoin=_value;}functionsetPrices(uint256newBuyPrice)onlyOwnerpublic{tokensPerOneEther=newBuyPrice;}function()payableexternal{require(state==State.Enabled);require(msg.value>=minEther&&msg.value<=maxEther);require(state==State.Enabled);if(transferTokenNow){uint256tokens=(tokensPerOneEther*msg.value);_transfer(owner,msg.sender,tokens);}owner.transfer(msg.value);}functionallowance(address_owner,address_spender)constantpublicreturns(uint256){returnallowed[_owner][_spender];}functionbalanceOf(address_owner)constantpublicreturns(uint256){returnbalanceOf[_owner];}function_transfer(address_from,address_to,uint256_value)internal{require(_to!=address(0x0));require(balanceOf[_from]>=_value);require(balanceOf[_to]+_value>=balanceOf[_to]);balanceOf[_from]-=_value;balanceOf[_to]+=_value;emitTransfer(_from,_to,_value);}functiontransfer(address_to,uint256_value)publicreturns(boolsuccess){require(!frozenCoin);_transfer(msg.sender,_to,_value);returntrue;}functiontransferFrom(address_from,address_to,uint256_value)publicreturns(boolsuccess){require(!frozenCoin);require(_value<=allowed[_from][msg.sender]);allowed[_from][msg.sender]-=_value;_transfer(_from,_to,_value);returntrue;}functionapprove(address_spender,uint256_value)publicreturns(boolsuccess){allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}functionburn(uint256_value)publicreturns(boolsuccess){require(!frozenCoin);require(balanceOf[msg.sender]>=_value);balanceOf[msg.sender]-=_value;totalSupply-=_value;emitBurn(msg.sender,_value);returntrue;}functionburnFrom(address_from,uint256_value)publicreturns(boolsuccess){require(!frozenCoin);require(balanceOf[_from]>=_value);require(_value<=allowed[_from][msg.sender]);balanceOf[_from]-=_value;allowed[_from][msg.sender]-=_value;totalSupply-=_value;emitBurn(_from,_value);returntrue;}}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 83
column: 4
content: functionsetFrozenCoin(bool_value)publiconlyOwner{frozenCoin=_value;}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 88
column: 4
content: functionsetPrices(uint256newBuyPrice)onlyOwnerpublic{tokensPerOneEther=newBuyPrice;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 19
column: 4
content: addressowner=msg.sender;

SOLIDITY_VISIBILITY :1
SOLIDITY_OVERPOWERED_ROLE :2
SOLIDITY_DEPRECATED_CONSTRUCTIONS :4
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_ERC20_APPROVE :1

