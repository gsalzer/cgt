reorder_contracts_2_3/test124.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 176
column: 43
content: 0x0

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 188
column: 43
content: 0x0

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 204
column: 33
content: 0x0

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 68
column: 4
content: functionapprove(address_spender,uint256_value)publicreturns(boolsuccess){allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_ERC20_TRANSFER_SHOULD_THROW
patternId: 550a42
severity: 1
line: 41
column: 4
content: functiontransfer(address_to,uint256_value)publicreturns(boolsuccess){if(balances[msg.sender]>=_value&&_value>0){balances[msg.sender]-=_value;balances[_to]+=_value;emitTransfer(msg.sender,_to,_value);returntrue;}else{returnfalse;}}

ruleId: SOLIDITY_ERC20_TRANSFER_SHOULD_THROW
patternId: 550a42
severity: 1
line: 52
column: 4
content: functiontransferFrom(address_from,address_to,uint256_value)publicreturns(boolsuccess){if(balances[_from]>=_value&&allowed[_from][msg.sender]>=_value&&_value>0){balances[_to]+=_value;balances[_from]-=_value;allowed[_from][msg.sender]-=_value;emitTransfer(_from,_to,_value);returntrue;}else{returnfalse;}}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 82
column: 0
content: contractBitriceTokenisStandardToken,SafeMath{stringpublicconstantname="Bitrice";stringpublicconstantsymbol="BTR";uint256publicconstantdecimals=18;uint256publicconstanttotal=2100*(10**6);stringpublicversion="1.0";addresspublicethFundDeposit;addresspublicnewContractAddr;boolpublicisFunding;uint256publicfundingStartBlock;uint256publicfundingStopBlock;uint256publiccurrentSupply;uint256publictokenRaised=0;uint256publictokenMigrated=0;uint256publictokenExchangeRate=0;eventAllocateToken(addressindexed_to,uint256_value);eventIssueToken(addressindexed_to,uint256_value);eventIncreaseSupply(uint256_value);eventDecreaseSupply(uint256_value);eventMigrate(addressindexed_to,uint256_value);eventCreateBTR(addressindexed_to,uint256_value);functionformatDecimals(uint256_value)internalpurereturns(uint256){return_value*10**decimals;}constructor(address_owner)public{ethFundDeposit=_owner;isFunding=false;fundingStartBlock=0;fundingStopBlock=0;totalSupply=formatDecimals(total);currentSupply=formatDecimals(total);balances[_owner]=totalSupply;emitCreateBTR(ethFundDeposit,totalSupply);}modifieronlyOwner(){require(msg.sender==ethFundDeposit,"auth fail");_;}functionsetTokenExchangeRate(uint256_tokenExchangeRate)externalonlyOwner{require(_tokenExchangeRate!=0,"_tokenExchangeRate is zero");require(_tokenExchangeRate!=tokenExchangeRate,"_tokenExchangeRate not changed");tokenExchangeRate=_tokenExchangeRate;}functionincreaseSupply(uint256_value)externalonlyOwner{uint256value=formatDecimals(_value);require(value+currentSupply<=totalSupply,"require");currentSupply=safeAdd(currentSupply,value);emitIncreaseSupply(value);}functiondecreaseSupply(uint256_value)externalonlyOwner{uint256value=formatDecimals(_value);require(value+tokenRaised<=currentSupply,"require");currentSupply=safeSubtract(currentSupply,value);emitDecreaseSupply(value);}functionstartFunding(uint256_fundingStartBlock,uint256_fundingStopBlock)externalonlyOwner{require(!isFunding,"require");require(_fundingStartBlock<_fundingStopBlock,"require");require(block.number<_fundingStartBlock,"require");fundingStartBlock=_fundingStartBlock;fundingStopBlock=_fundingStopBlock;isFunding=true;}functionstopFunding()externalonlyOwner{require(isFunding,"require");isFunding=false;}functionchangeOwner(address_newFundDeposit)externalonlyOwner{require(_newFundDeposit!=address(0x0),"_newFundDeposit is empty");ethFundDeposit=_newFundDeposit;}functionsetMigrateContract(address_newContractAddr)externalonlyOwner{require(_newContractAddr!=newContractAddr,"require");newContractAddr=_newContractAddr;}functionmigrate()external{require(!isFunding,"require");require(newContractAddr!=address(0x0),"new contract address is empty");uint256tokens=balances[msg.sender];require(tokens!=0,"your balances is zero");balances[msg.sender]=0;tokenMigrated=safeAdd(tokenMigrated,tokens);IMigrationContractnewContract=IMigrationContract(newContractAddr);require(newContract.migrate(msg.sender,tokens),"require");emitMigrate(msg.sender,tokens);}functionallocateToken(address_addr,uint256_eth)externalonlyOwner{require(_eth!=0,"_eth is zero");require(_addr!=address(0x0),"_addr is empty");uint256tokens=safeMult(formatDecimals(_eth),tokenExchangeRate);require(tokens+tokenRaised<=currentSupply,"require");tokenRaised=safeAdd(tokenRaised,tokens);balances[_addr]+=tokens;emitAllocateToken(_addr,tokens);}function()externalpayable{require(isFunding,"require");require(msg.value!=0,"require");require(block.number>=fundingStartBlock,"require");require(block.number<=fundingStopBlock,"require");uint256tokens=safeMult(msg.value,tokenExchangeRate);require(tokens+tokenRaised<=currentSupply,"require");tokenRaised=safeAdd(tokenRaised,tokens);balances[msg.sender]+=tokens;emitIssueToken(msg.sender,tokens);}}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 137
column: 4
content: functionsetTokenExchangeRate(uint256_tokenExchangeRate)externalonlyOwner{require(_tokenExchangeRate!=0,"_tokenExchangeRate is zero");require(_tokenExchangeRate!=tokenExchangeRate,"_tokenExchangeRate not changed");tokenExchangeRate=_tokenExchangeRate;}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 181
column: 4
content: functionsetMigrateContract(address_newContractAddr)externalonlyOwner{require(_newContractAddr!=newContractAddr,"require");newContractAddr=_newContractAddr;}

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
column: 25
content: <

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 78
column: 4
content: mapping(address=>uint256)balances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 79
column: 4
content: mapping(address=>mapping(address=>uint256))allowed;

SOLIDITY_VISIBILITY :2
SOLIDITY_OVERPOWERED_ROLE :2
SOLIDITY_PRAGMAS_VERSION :2
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_ADDRESS_HARDCODED :3
SOLIDITY_ERC20_TRANSFER_SHOULD_THROW :2
SOLIDITY_ERC20_APPROVE :1

