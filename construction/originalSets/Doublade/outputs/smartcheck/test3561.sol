reorder_contracts_2_3/test3561.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 448
column: 24
content: 0x2E

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 449
column: 24
content: 0x5F

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 450
column: 24
content: 0x41

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 450
column: 40
content: 0x5A

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 451
column: 24
content: 0x61

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 451
column: 40
content: 0x7A

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 457
column: 28
content: 0x20

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: b140cd
severity: 1
line: 457
column: 44
content: 0x7E

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 361
column: 4
content: functionapprove(address_spender,uint256_value)publicreturns(bool){allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 445
column: 8
content: for(uinti=0;i<s.length;i++){require(s[i]==0x2E||(s[i]==0x5F)||(s[i]>=0x41&&s[i]<=0x5A)||(s[i]>=0x61&&s[i]<=0x7A));}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 456
column: 8
content: for(i=0;i<n.length;i++){require(n[i]>=0x20&&n[i]<=0x7E);}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 17
column: 4
content: functionstringToBytes12(stringstr)internalpurereturns(bytes12result){assembly{result:=mload(add(str,32))}}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 26
column: 4
content: functionstringToBytes10(stringstr)internalpurereturns(bytes10result){assembly{result:=mload(add(str,32))}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 221
column: 8
content: for(uinti=0;i<len;i++){avg=add(avg,arr[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 231
column: 8
content: for(i=0;i<len;i++){item=arr[i];s=item>avg?item-avg:avg-item;cvs=add(cvs,mul(s,s));}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 445
column: 8
content: for(uinti=0;i<s.length;i++){require(s[i]==0x2E||(s[i]==0x5F)||(s[i]>=0x41&&s[i]<=0x5A)||(s[i]>=0x61&&s[i]<=0x7A));}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 456
column: 8
content: for(i=0;i<n.length;i++){require(n[i]>=0x20&&n[i]<=0x7E);}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 242
column: 0
content: contractERC20TokenisERC20{usingMathUintforuint;stringpublicname;stringpublicsymbol;uint8publicdecimals;uintpublictotalSupply_;mapping(address=>uint256)balances;mapping(address=>mapping(address=>uint256))internalallowed;eventTransfer(addressindexedfrom,addressindexedto,uint256value);eventApproval(addressindexedowner,addressindexedspender,uint256value);functionERC20Token(string_name,string_symbol,uint8_decimals,uint_totalSupply,address_firstHolder)public{require(_totalSupply>0);require(_firstHolder!=0x0);checkSymbolAndName(_symbol,_name);name=_name;symbol=_symbol;decimals=_decimals;totalSupply_=_totalSupply;balances[_firstHolder]=totalSupply_;}function()payablepublic{revert();}functiontotalSupply()publicviewreturns(uint256){returntotalSupply_;}functiontransfer(address_to,uint256_value)publicreturns(bool){require(_to!=address(0));require(_value<=balances[msg.sender]);balances[msg.sender]=balances[msg.sender].sub(_value);balances[_to]=balances[_to].add(_value);emitTransfer(msg.sender,_to,_value);returntrue;}functionbalanceOf(address_owner)publicviewreturns(uint256balance){returnbalances[_owner];}functiontransferFrom(address_from,address_to,uint256_value)publicreturns(bool){require(_to!=address(0));require(_value<=balances[_from]);require(_value<=allowed[_from][msg.sender]);balances[_from]=balances[_from].sub(_value);balances[_to]=balances[_to].add(_value);allowed[_from][msg.sender]=allowed[_from][msg.sender].sub(_value);emitTransfer(_from,_to,_value);returntrue;}functionapprove(address_spender,uint256_value)publicreturns(bool){allowed[msg.sender][_spender]=_value;emitApproval(msg.sender,_spender,_value);returntrue;}functionallowance(address_owner,address_spender)publicviewreturns(uint256){returnallowed[_owner][_spender];}functionincreaseApproval(address_spender,uint_addedValue)publicreturns(bool){allowed[msg.sender][_spender]=allowed[msg.sender][_spender].add(_addedValue);emitApproval(msg.sender,_spender,allowed[msg.sender][_spender]);returntrue;}functiondecreaseApproval(address_spender,uint_subtractedValue)publicreturns(bool){uintoldValue=allowed[msg.sender][_spender];if(_subtractedValue>oldValue){allowed[msg.sender][_spender]=0;}else{allowed[msg.sender][_spender]=oldValue.sub(_subtractedValue);}emitApproval(msg.sender,_spender,allowed[msg.sender][_spender]);returntrue;}functioncheckSymbolAndName(stringmemory_symbol,stringmemory_name)internalpure{bytesmemorys=bytes(_symbol);require(s.length>=3&&s.length<=8);for(uinti=0;i<s.length;i++){require(s[i]==0x2E||(s[i]==0x5F)||(s[i]>=0x41&&s[i]<=0x5A)||(s[i]>=0x61&&s[i]<=0x7A));}bytesmemoryn=bytes(_name);require(n.length>=s.length&&n.length<=128);for(i=0;i<n.length;i++){require(n[i]>=0x20&&n[i]<=0x7E);}}}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 505
column: 0
content: contractTokenFactoryImplisTokenFactory{usingAddressUtilforaddress;usingStringUtilforstring;mapping(bytes10=>address)publictokens;function()payablepublic{revert();}functioncreateToken(stringname,stringsymbol,uint8decimals,uinttotalSupply)externalreturns(addressaddr){require(symbol.checkStringLength(3,10));bytes10symbolBytes=symbol.stringToBytes10();require(tokens[symbolBytes]==0x0);ERC20Tokentoken=newERC20Token(name,symbol,decimals,totalSupply,tx.origin);addr=address(token);tokens[symbolBytes]=addr;emitTokenCreated(addr,name,symbol,decimals,totalSupply,tx.origin);}}

ruleId: SOLIDITY_REDUNDANT_FALLBACK_REJECT
patternId: b85a32
severity: 1
line: 281
column: 4
content: {revert();}

ruleId: SOLIDITY_REDUNDANT_FALLBACK_REJECT
patternId: b85a32
severity: 1
line: 513
column: 4
content: {revert();}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 17
column: 4
content: functionstringToBytes12(stringstr)internalpurereturns(bytes12result){assembly{result:=mload(add(str,32))}}

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 26
column: 4
content: functionstringToBytes10(stringstr)internalpurereturns(bytes10result){assembly{result:=mload(add(str,32))}}

ruleId: SOLIDITY_SHOULD_NOT_BE_VIEW
patternId: 189abf
severity: 1
line: 60
column: 4
content: functionisContract(addressaddr)internalviewreturns(bool){if(addr==0x0){returnfalse;}else{uintsize;assembly{size:=extcodesize(addr)}returnsize>0;}}

ruleId: SOLIDITY_TX_ORIGIN
patternId: 12e802
severity: 2
line: 533
column: 12
content: tx.origin

ruleId: SOLIDITY_TX_ORIGIN
patternId: 12e802
severity: 2
line: 543
column: 12
content: tx.origin

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 280
column: 8
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 512
column: 8
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 17
column: 29
content: stringstr

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 26
column: 29
content: stringstr

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 36
column: 31
content: stringname

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 210
column: 8
content: uint[]arr

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 261
column: 8
content: string_name

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 262
column: 8
content: string_symbol

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 22
column: 8
content: assembly{result:=mload(add(str,32))}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 31
column: 8
content: assembly{result:=mload(add(str,32))}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 248
column: 4
content: mapping(address=>uint256)balances;

SOLIDITY_VISIBILITY :1
SOLIDITY_LOCKED_MONEY :2
SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN :2
SOLIDITY_EXTRA_GAS_IN_LOOPS :2
SOLIDITY_ADDRESS_HARDCODED :8
SOLIDITY_UPGRADE_TO_050 :8
SOLIDITY_GAS_LIMIT_IN_LOOPS :4
SOLIDITY_USING_INLINE_ASSEMBLY :2
SOLIDITY_REDUNDANT_FALLBACK_REJECT :2
SOLIDITY_TX_ORIGIN :2
SOLIDITY_SHOULD_NOT_BE_VIEW :1
SOLIDITY_SHOULD_NOT_BE_PURE :2
SOLIDITY_ERC20_APPROVE :1

