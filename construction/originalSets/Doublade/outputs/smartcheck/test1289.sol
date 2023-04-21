reorder_contracts_2_3/test1289.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 110
column: 4
content: owner=address(0)

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 9
column: 4
content: functionbalanceOf(address_owner)externalconstantreturns(uint256);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 12
column: 4
content: functionname()externalconstantreturns(string_name);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 13
column: 4
content: functionsymbol()externalconstantreturns(string_symbol);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 14
column: 4
content: functiondecimals()externalconstantreturns(uint8_decimals);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 15
column: 4
content: functiontotalSupply()externalconstantreturns(uint256_totalSupply);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 157
column: 4
content: functionname()externalconstantreturns(string_name){returnname;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 161
column: 4
content: functionsymbol()externalconstantreturns(string_symbol){returnsymbol;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 165
column: 4
content: functiondecimals()externalconstantreturns(uint8_decimals){returndecimals;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 169
column: 4
content: functiontotalSupply()externalconstantreturns(uint256_totalSupply){returntotalSupply;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 197
column: 2
content: functionbalanceOf(address_owner)externalconstantreturns(uint256balance){returnbalances[_owner];}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 133
column: 0
content: contractC3CoinisERC223,Ownable{usingSafeMathforuint;stringpublicname;stringpublicsymbol;uint8publicdecimals;uint256publictotalSupply;constructor()public{name="C3 Coin";symbol="CCC";decimals=18;totalSupply=100000000000000000000000000000;balances[msg.sender]=totalSupply;}mapping(address=>uint256)internalbalances;addresspublicicoContract;functionname()externalconstantreturns(string_name){returnname;}functionsymbol()externalconstantreturns(string_symbol){returnsymbol;}functiondecimals()externalconstantreturns(uint8_decimals){returndecimals;}functiontotalSupply()externalconstantreturns(uint256_totalSupply){returntotalSupply;}functiontransfer(address_to,uint256_value)externalreturns(bool){require(_to!=address(0));require(_value<=balances[msg.sender]&&balances[_to]+_value>=balances[_to]);require(!isContract(_to));balances[msg.sender]=balances[msg.sender].sub(_value);balances[_to]=balances[_to].add(_value);emitTransfer(msg.sender,_to,_value);returntrue;}functionbalanceOf(address_owner)externalconstantreturns(uint256balance){returnbalances[_owner];}functiontransfer(address_to,uint_value,bytes_data)publicreturns(bool){require(_to!=address(0));require(_value<=balances[msg.sender]&&balances[_to]+_value>=balances[_to]);if(isContract(_to)){ERC223ReceivingContractreceiver=ERC223ReceivingContract(_to);receiver.tokenFallback(msg.sender,_value,_data);}balances[msg.sender]=balances[msg.sender].sub(_value);balances[_to]=balances[_to].add(_value);emitERC223Transfer(msg.sender,_to,_value,_data);returntrue;}functionisContract(address_addr)privatereturns(boolis_contract){uintlength;assembly{length:=extcodesize(_addr)}return(length>0);}functionsetIcoContract(address_icoContract)publiconlyOwner{if(_icoContract!=address(0)){icoContract=_icoContract;}}functionsell(uint256_value)publiconlyOwnerreturns(bool){require(icoContract!=address(0));require(_value<=balances[msg.sender]&&balances[icoContract]+_value>=balances[icoContract]);balances[msg.sender]=balances[msg.sender].sub(_value);balances[icoContract]=balances[icoContract].add(_value);emitSell(msg.sender,_value);returntrue;}function()publicpayable{revert();}}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 240
column: 2
content: functionsetIcoContract(address_icoContract)publiconlyOwner{if(_icoContract!=address(0)){icoContract=_icoContract;}}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_REDUNDANT_FALLBACK_REJECT
patternId: b85a32
severity: 1
line: 262
column: 29
content: {revert();}

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 134
column: 4
content: usingSafeMathforuint;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 262
column: 14
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 19
column: 51
content: bytes_data

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 32
column: 55
content: bytes_data

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 208
column: 46
content: bytes_data

ruleId: SOLIDITY_VISIBILITY
patternId: 23rt6g
severity: 1
line: 19
column: 64
content: public

SOLIDITY_VISIBILITY :1
SOLIDITY_SAFEMATH :1
SOLIDITY_OVERPOWERED_ROLE :1
SOLIDITY_DEPRECATED_CONSTRUCTIONS :10
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_UPGRADE_TO_050 :4
SOLIDITY_REDUNDANT_FALLBACK_REJECT :1

