reorder_contracts_2_3/test709.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 115
column: 8
content: newOwner=address(0)

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 4
column: 4
content: functiontotalSupply()publicconstantreturns(uint256);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 9
column: 4
content: functionbalanceOf(address_address)publicconstantreturns(uint256balance);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 15
column: 4
content: functionallowance(address_address,address_to)publicconstantreturns(uint256remaining);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 226
column: 4
content: functiontotalSupply()publicconstantreturns(uint256){returntotalSupply;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 307
column: 4
content: functionbalanceOf(address_address)publicconstantreturns(uint256remaining){require(_address!=0x0);returnbalances[_address];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 319
column: 4
content: functionincomeOf(address_address)publicconstantreturns(uint256income){require(_address!=0x0);returnincomes[_address];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 330
column: 4
content: functionexpenseOf(address_address)publicconstantreturns(uint256expense){require(_address!=0x0);returnexpenses[_address];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 341
column: 4
content: functionallowance(address_from,address_to)publicconstantreturns(uint256remaining){require(_from!=0x0);require(_to!=0x0);require(_from==msg.sender||_to==msg.sender);returnallowed[_from][_to];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 398
column: 4
content: functionisFrozenAccount(address_address)publiconlyOwnerconstantreturns(boolfrozen){require(_address!=0x0);returnfrozenAccount[_address];}

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 266
column: 4
content: functionapprove(address_to,uint256_value)publicreturns(boolsuccess){require(_to!=0x0);require(!frozenAccount[_to]);allowed[msg.sender][_to]=_value;emitApproval(msg.sender,_to,_value);returntrue;}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 182
column: 0
content: contractTokenisERC20Interface,Owned{usingSafeMathforuint256;stringpublicsymbol;stringpublicname;uint8publicdecimals;uint256publictotalSupply;mapping(address=>uint256)balances;mapping(address=>mapping(address=>uint256))allowed;mapping(address=>uint256)incomes;mapping(address=>uint256)expenses;mapping(address=>bool)frozenAccount;eventFreezeAccount(address_address,boolfrozen);eventBurn(address_address,uint256_value);eventMintToken(uint256_value);constructor(uint256_totalSupply,string_name,string_symbol,uint8_decimals)public{symbol=_symbol;name=_name;decimals=_decimals;totalSupply=_totalSupply*10**uint256(_decimals);balances[owner]=totalSupply;emitTransfer(address(0),owner,totalSupply);}functiontotalSupply()publicconstantreturns(uint256){returntotalSupply;}function_transfer(address_from,address_to,uint256_value)internalreturns(boolsuccess){require(_to!=0x0);require(balances[_from]>=_value);require(!frozenAccount[_from]);require(!frozenAccount[_to]);balances[_from]=balances[_from].sub(_value);balances[_to]=balances[_to].add(_value);incomes[_to]=incomes[_to].add(_value);expenses[_from]=expenses[_from].add(_value);emitTransfer(_from,_to,_value);returntrue;}functiontransfer(address_to,uint256_value)publicreturns(boolsuccess){return_transfer(msg.sender,_to,_value);}functionapprove(address_to,uint256_value)publicreturns(boolsuccess){require(_to!=0x0);require(!frozenAccount[_to]);allowed[msg.sender][_to]=_value;emitApproval(msg.sender,_to,_value);returntrue;}functiontransferFrom(address_from,address_to,uint256_value)publicreturns(boolsuccess){require(allowed[_from][_to]>=_value);allowed[_from][_to]=allowed[_from][_to].sub(_value);return_transfer(_from,_to,_value);}functionbalanceOf(address_address)publicconstantreturns(uint256remaining){require(_address!=0x0);returnbalances[_address];}functionincomeOf(address_address)publicconstantreturns(uint256income){require(_address!=0x0);returnincomes[_address];}functionexpenseOf(address_address)publicconstantreturns(uint256expense){require(_address!=0x0);returnexpenses[_address];}functionallowance(address_from,address_to)publicconstantreturns(uint256remaining){require(_from!=0x0);require(_to!=0x0);require(_from==msg.sender||_to==msg.sender);returnallowed[_from][_to];}functionapproveAndCall(address_to,uint256_value,bytes_data)publicreturns(boolsuccess){if(approve(_to,_value)){ApproveAndCallFallBack(_to).receiveApproval(msg.sender,_value,this,_data);returntrue;}returnfalse;}function()publicpayable{revert();}functiontransferBackToken(address_from,uint256_value)publiconlyOwnerreturns(boolsuccess){return_transfer(_from,owner,_value);}functionfreezeAccount(address_address,boolfreeze)publiconlyOwnerreturns(boolsuccess){frozenAccount[_address]=freeze;emitFreezeAccount(_address,freeze);returntrue;}functionisFrozenAccount(address_address)publiconlyOwnerconstantreturns(boolfrozen){require(_address!=0x0);returnfrozenAccount[_address];}functionburn(uint256_value)publicreturns(boolsuccess){require(balances[msg.sender]>=_value);balances[msg.sender]=balances[msg.sender].sub(_value);totalSupply=totalSupply.sub(_value);emitBurn(msg.sender,_value);returntrue;}functionmintToken(uint256_value)publiconlyOwnerreturns(boolsuccess){balances[owner]=balances[owner].add(_value);totalSupply=totalSupply.add(_value);emitMintToken(_value);returntrue;}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_REDUNDANT_FALLBACK_REJECT
patternId: b85a32
severity: 1
line: 370
column: 31
content: {revert();}

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 183
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 370
column: 16
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 178
column: 8
content: bytesdata

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 212
column: 8
content: string_name

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 213
column: 8
content: string_symbol

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 359
column: 8
content: bytes_data

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 55
column: 4
content: addressowner;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 56
column: 4
content: addressnewOwner;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 57
column: 4
content: uint32transferCount;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 190
column: 4
content: mapping(address=>uint256)balances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 191
column: 4
content: mapping(address=>mapping(address=>uint256))allowed;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 192
column: 4
content: mapping(address=>uint256)incomes;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 193
column: 4
content: mapping(address=>uint256)expenses;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 194
column: 4
content: mapping(address=>bool)frozenAccount;

SOLIDITY_VISIBILITY :8
SOLIDITY_SAFEMATH :1
SOLIDITY_DEPRECATED_CONSTRUCTIONS :9
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_UPGRADE_TO_050 :5
SOLIDITY_REDUNDANT_FALLBACK_REJECT :1
SOLIDITY_ERC20_APPROVE :1

