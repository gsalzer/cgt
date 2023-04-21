reorder_contracts_2_3/test2136.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 136
column: 2
content: functioncrowdsaleActive(CrowdsaleStoragestorageself)constantreturns(bool){return(now>=self.startTime&&now<=self.endTime);}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 143
column: 2
content: functioncrowdsaleEnded(CrowdsaleStoragestorageself)constantreturns(bool){returnnow>self.endTime;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 150
column: 2
content: functionvalidPurchase(CrowdsaleStoragestorageself)internalconstantreturns(bool){boolnonZeroPurchase=msg.value!=0;if(crowdsaleActive(self)&&nonZeroPurchase){returntrue;}else{LogErrorMsg("Invalid Purchase! Check send time and amount of ether.");returnfalse;}}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 303
column: 2
content: functiongetSaleData(CrowdsaleStoragestorageself,uint256timestamp)constantreturns(uint256[3]){uint256[3]memory_thisData;uint256index;while((index<self.milestoneTimes.length)&&(self.milestoneTimes[index]<timestamp)){index++;}if(index==0)index++;_thisData[0]=self.milestoneTimes[index-1];_thisData[1]=self.saleData[_thisData[0]][0];_thisData[2]=self.saleData[_thisData[0]][1];return_thisData;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 322
column: 2
content: functiongetTokensSold(CrowdsaleStoragestorageself)constantreturns(uint256){returnself.startingTokenBalance-self.token.balanceOf(this);}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 336
column: 2
content: functiontimes(uint256a,uint256b)constantreturns(boolerr,uint256res){assembly{res:=mul(a,b)switchor(iszero(b),eq(div(res,b),a))case0{err:=1res:=0}}if(err)Err("times func overflow");}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 355
column: 2
content: functiondividedBy(uint256a,uint256b)constantreturns(boolerr,uint256res){assembly{switchiszero(b)case0{res:=div(a,b)mstore(add(mload(0x40),0x20),res)return(mload(0x40),0x40)}}Err("tried to divide by zero");return(true,0);}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 374
column: 2
content: functionplus(uint256a,uint256b)constantreturns(boolerr,uint256res){assembly{res:=add(a,b)switchand(eq(sub(res,b),a),or(gt(res,b),eq(res,b)))case0{err:=1res:=0}}if(err)Err("plus func overflow");}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 393
column: 2
content: functionminus(uint256a,uint256b)constantreturns(boolerr,uint256res){assembly{res:=sub(a,b)switcheq(and(eq(add(res,b),a),or(lt(res,a),eq(res,a))),1)case0{err:=1res:=0}}if(err)Err("minus func underflow");}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 508
column: 2
content: functionbalanceOf(TokenStoragestorageself,address_owner)constantreturns(uint256balance){returnself.balances[_owner];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 528
column: 2
content: functionallowance(TokenStoragestorageself,address_owner,address_spender)constantreturns(uint256remaining){returnself.allowed[_owner][_spender];}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 637
column: 2
content: functionname()constantreturns(string){returntoken.name;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 641
column: 2
content: functionsymbol()constantreturns(string){returntoken.symbol;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 645
column: 2
content: functiondecimals()constantreturns(uint8){returntoken.decimals;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 649
column: 2
content: functiontotalSupply()constantreturns(uint256){returntoken.totalSupply;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 653
column: 2
content: functioninitialSupply()constantreturns(uint256){returntoken.INITIAL_SUPPLY;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 657
column: 2
content: functionbalanceOf(addresswho)constantreturns(uint256){returntoken.balanceOf(who);}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 661
column: 2
content: functionallowance(addressowner,addressspender)constantreturns(uint256){returntoken.allowance(owner,spender);}

ruleId: SOLIDITY_DIV_MUL
patternId: 09hhh1
severity: 2
line: 112
column: 21
content: ((_capAmountInCents/_fallbackExchangeRate)+1)*(10**18)

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 673
column: 2
content: functionapprove(addressspender,uintvalue)returns(boolok){returntoken.approve(spender,value);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 121
column: 4
content: for(uint256i=0;i<_saleData.length;i+=3){require(_saleData[i]>_tempTime);require(_saleData[i+1]>0);require((_saleData[i+2]==0)||(_saleData[i+2]>=100));self.milestoneTimes.push(_saleData[i]);self.saleData[_saleData[i]][0]=_saleData[i+1];self.saleData[_saleData[i]][1]=_saleData[i+2];_tempTime=_saleData[i];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 307
column: 4
content: while((index<self.milestoneTimes.length)&&(self.milestoneTimes[index]<timestamp)){index++;}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 336
column: 2
content: functiontimes(uint256a,uint256b)constantreturns(boolerr,uint256res){assembly{res:=mul(a,b)switchor(iszero(b),eq(div(res,b),a))case0{err:=1res:=0}}if(err)Err("times func overflow");}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 374
column: 2
content: functionplus(uint256a,uint256b)constantreturns(boolerr,uint256res){assembly{res:=add(a,b)switchand(eq(sub(res,b),a),or(gt(res,b),eq(res,b)))case0{err:=1res:=0}}if(err)Err("plus func overflow");}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 393
column: 2
content: functionminus(uint256a,uint256b)constantreturns(boolerr,uint256res){assembly{res:=sub(a,b)switcheq(and(eq(add(res,b),a),or(lt(res,a),eq(res,a))),1)case0{err:=1res:=0}}if(err)Err("minus func underflow");}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 121
column: 4
content: for(uint256i=0;i<_saleData.length;i+=3){require(_saleData[i]>_tempTime);require(_saleData[i+1]>0);require((_saleData[i+2]==0)||(_saleData[i+2]>=100));self.milestoneTimes.push(_saleData[i]);self.saleData[_saleData[i]][0]=_saleData[i+1];self.saleData[_saleData[i]][1]=_saleData[i+2];_tempTime=_saleData[i];}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 307
column: 10
content: (index<self.milestoneTimes.length)&&(self.milestoneTimes[index]<timestamp)

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 337
column: 4
content: assembly{res:=mul(a,b)switchor(iszero(b),eq(div(res,b),a))case0{err:=1res:=0}}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 356
column: 4
content: assembly{switchiszero(b)case0{res:=div(a,b)mstore(add(mload(0x40),0x20),res)return(mload(0x40),0x40)}}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 375
column: 4
content: assembly{res:=add(a,b)switchand(eq(sub(res,b),a),or(gt(res,b),eq(res,b)))case0{err:=1res:=0}}

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 394
column: 4
content: assembly{res:=sub(a,b)switcheq(and(eq(add(res,b),a),or(lt(res,a),eq(res,a))),1)case0{err:=1res:=0}}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 92
column: 2
content: functioninit(CrowdsaleStoragestorageself,address_owner,uint256[]_saleData,uint256_fallbackExchangeRate,uint256_capAmountInCents,uint256_endTime,uint8_percentBurn,CrowdsaleToken_token){require(self.capAmount==0);require(self.owner==0);require(_saleData.length>0);require((_saleData.length%3)==0);require(_saleData[0]>(now+3days));require(_endTime>_saleData[0]);require(_capAmountInCents>0);require(_owner>0);require(_fallbackExchangeRate>0);require(_percentBurn<=100);self.owner=_owner;self.capAmount=((_capAmountInCents/_fallbackExchangeRate)+1)*(10**18);self.startTime=_saleData[0];self.endTime=_endTime;self.token=_token;self.tokenDecimals=_token.decimals();self.percentBurn=_percentBurn;self.exchangeRate=_fallbackExchangeRate;uint256_tempTime;for(uint256i=0;i<_saleData.length;i+=3){require(_saleData[i]>_tempTime);require(_saleData[i+1]>0);require((_saleData[i+2]==0)||(_saleData[i+2]>=100));self.milestoneTimes.push(_saleData[i]);self.saleData[_saleData[i]][0]=_saleData[i+1];self.saleData[_saleData[i]][1]=_saleData[i+2];_tempTime=_saleData[i];}changeTokenPrice(self,_saleData[1]);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 136
column: 2
content: functioncrowdsaleActive(CrowdsaleStoragestorageself)constantreturns(bool){return(now>=self.startTime&&now<=self.endTime);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 143
column: 2
content: functioncrowdsaleEnded(CrowdsaleStoragestorageself)constantreturns(bool){returnnow>self.endTime;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 163
column: 2
content: functionwithdrawTokens(CrowdsaleStoragestorageself)returns(bool){boolok;if(self.withdrawTokensMap[msg.sender]==0){LogErrorMsg("Sender has no tokens to withdraw!");returnfalse;}if(msg.sender==self.owner){if(!crowdsaleEnded(self)){LogErrorMsg("Owner cannot withdraw extra tokens until after the sale!");returnfalse;}else{if(self.percentBurn>0){uint256_burnAmount=(self.withdrawTokensMap[msg.sender]*self.percentBurn)/100;self.withdrawTokensMap[msg.sender]=self.withdrawTokensMap[msg.sender]-_burnAmount;ok=self.token.burnToken(_burnAmount);require(ok);}}}vartotal=self.withdrawTokensMap[msg.sender];self.withdrawTokensMap[msg.sender]=0;ok=self.token.transfer(msg.sender,total);require(ok);LogTokensWithdrawn(msg.sender,total);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 196
column: 2
content: functionwithdrawLeftoverWei(CrowdsaleStoragestorageself)returns(bool){require(self.hasContributed[msg.sender]>0);if(self.leftoverWei[msg.sender]==0){LogErrorMsg("Sender has no extra wei to withdraw!");returnfalse;}vartotal=self.leftoverWei[msg.sender];self.leftoverWei[msg.sender]=0;msg.sender.transfer(total);LogWeiWithdrawn(msg.sender,total);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 213
column: 2
content: functionwithdrawOwnerEth(CrowdsaleStoragestorageself)returns(bool){if((!crowdsaleEnded(self))&&(self.token.balanceOf(this)>0)){LogErrorMsg("Cannot withdraw owner ether until after the sale!");returnfalse;}require(msg.sender==self.owner);require(self.ownerBalance>0);uint256amount=self.ownerBalance;self.ownerBalance=0;self.owner.transfer(amount);LogOwnerEthWithdrawn(msg.sender,amount,"Crowdsale owner has withdrawn all funds!");returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 254
column: 2
content: functionsetTokenExchangeRate(CrowdsaleStoragestorageself,uint256_exchangeRate)returns(bool){require(msg.sender==self.owner);require((now>(self.startTime-3days))&&(now<(self.startTime)));require(!self.rateSet);require(self.token.balanceOf(this)>0);require(_exchangeRate>0);uint256_capAmountInCents;uint256_tokenBalance;boolerr;(err,_capAmountInCents)=self.exchangeRate.times(self.capAmount);require(!err);_tokenBalance=self.token.balanceOf(this);self.withdrawTokensMap[msg.sender]=_tokenBalance;self.startingTokenBalance=_tokenBalance;self.tokensSet=true;self.exchangeRate=_exchangeRate;self.capAmount=(_capAmountInCents/_exchangeRate)+1;changeTokenPrice(self,self.saleData[self.milestoneTimes[0]][0]);self.rateSet=true;LogNoticeMsg(msg.sender,self.tokensPerEth,"Owner has sent the exchange Rate and tokens bought per ETH!");returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 285
column: 2
content: functionsetTokens(CrowdsaleStoragestorageself)returns(bool){require(msg.sender==self.owner);require(!self.tokensSet);uint256_tokenBalance;_tokenBalance=self.token.balanceOf(this);self.withdrawTokensMap[msg.sender]=_tokenBalance;self.startingTokenBalance=_tokenBalance;self.tokensSet=true;returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 303
column: 2
content: functiongetSaleData(CrowdsaleStoragestorageself,uint256timestamp)constantreturns(uint256[3]){uint256[3]memory_thisData;uint256index;while((index<self.milestoneTimes.length)&&(self.milestoneTimes[index]<timestamp)){index++;}if(index==0)index++;_thisData[0]=self.milestoneTimes[index-1];_thisData[1]=self.saleData[_thisData[0]][0];_thisData[2]=self.saleData[_thisData[0]][1];return_thisData;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 322
column: 2
content: functiongetTokensSold(CrowdsaleStoragestorageself)constantreturns(uint256){returnself.startingTokenBalance-self.token.balanceOf(this);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 336
column: 2
content: functiontimes(uint256a,uint256b)constantreturns(boolerr,uint256res){assembly{res:=mul(a,b)switchor(iszero(b),eq(div(res,b),a))case0{err:=1res:=0}}if(err)Err("times func overflow");}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 355
column: 2
content: functiondividedBy(uint256a,uint256b)constantreturns(boolerr,uint256res){assembly{switchiszero(b)case0{res:=div(a,b)mstore(add(mload(0x40),0x20),res)return(mload(0x40),0x40)}}Err("tried to divide by zero");return(true,0);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 374
column: 2
content: functionplus(uint256a,uint256b)constantreturns(boolerr,uint256res){assembly{res:=add(a,b)switchand(eq(sub(res,b),a),or(gt(res,b),eq(res,b)))case0{err:=1res:=0}}if(err)Err("plus func overflow");}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 393
column: 2
content: functionminus(uint256a,uint256b)constantreturns(boolerr,uint256res){assembly{res:=sub(a,b)switcheq(and(eq(add(res,b),a),or(lt(res,a),eq(res,a))),1)case0{err:=1res:=0}}if(err)Err("minus func underflow");}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 436
column: 2
content: functioninit(TokenStoragestorageself,address_owner,string_name,string_symbol,uint8_decimals,uint256_initial_supply,bool_allowMinting){require(self.INITIAL_SUPPLY==0);self.name=_name;self.symbol=_symbol;self.totalSupply=_initial_supply;self.INITIAL_SUPPLY=_initial_supply;self.decimals=_decimals;self.owner=_owner;self.stillMinting=_allowMinting;self.balances[_owner]=_initial_supply;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 460
column: 2
content: functiontransfer(TokenStoragestorageself,address_to,uint256_value)returns(bool){boolerr;uint256balance;(err,balance)=self.balances[msg.sender].minus(_value);require(!err);self.balances[msg.sender]=balance;self.balances[_to]=self.balances[_to]+_value;Transfer(msg.sender,_to,_value);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 479
column: 2
content: functiontransferFrom(TokenStoragestorageself,address_from,address_to,uint256_value)returns(bool){var_allowance=self.allowed[_from][msg.sender];boolerr;uint256balanceOwner;uint256balanceSpender;(err,balanceOwner)=self.balances[_from].minus(_value);require(!err);(err,balanceSpender)=_allowance.minus(_value);require(!err);self.balances[_from]=balanceOwner;self.allowed[_from][msg.sender]=balanceSpender;self.balances[_to]=self.balances[_to]+_value;Transfer(_from,_to,_value);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 508
column: 2
content: functionbalanceOf(TokenStoragestorageself,address_owner)constantreturns(uint256balance){returnself.balances[_owner];}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 517
column: 2
content: functionapprove(TokenStoragestorageself,address_spender,uint256_value)returns(bool){self.allowed[msg.sender][_spender]=_value;Approval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 528
column: 2
content: functionallowance(TokenStoragestorageself,address_owner,address_spender)constantreturns(uint256remaining){returnself.allowed[_owner][_spender];}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 538
column: 2
content: functionapproveChange(TokenStoragestorageself,address_spender,uint256_valueChange,bool_increase)returns(bool){uint256_newAllowed;boolerr;if(_increase){(err,_newAllowed)=self.allowed[msg.sender][_spender].plus(_valueChange);require(!err);self.allowed[msg.sender][_spender]=_newAllowed;}else{if(_valueChange>self.allowed[msg.sender][_spender]){self.allowed[msg.sender][_spender]=0;}else{_newAllowed=self.allowed[msg.sender][_spender]-_valueChange;self.allowed[msg.sender][_spender]=_newAllowed;}}Approval(msg.sender,_spender,_newAllowed);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 566
column: 2
content: functionchangeOwner(TokenStoragestorageself,address_newOwner)returns(bool){require((self.owner==msg.sender)&&(_newOwner>0));self.owner=_newOwner;OwnerChange(msg.sender,_newOwner);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 578
column: 2
content: functionmintToken(TokenStoragestorageself,uint256_amount)returns(bool){require((self.owner==msg.sender)&&self.stillMinting);uint256_newAmount;boolerr;(err,_newAmount)=self.totalSupply.plus(_amount);require(!err);self.totalSupply=_newAmount;self.balances[self.owner]=self.balances[self.owner]+_amount;Transfer(0x0,self.owner,_amount);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 595
column: 2
content: functioncloseMint(TokenStoragestorageself)returns(bool){require(self.owner==msg.sender);self.stillMinting=false;MintingClosed(true);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 607
column: 2
content: functionburnToken(TokenStoragestorageself,uint256_amount)returns(bool){uint256_newBalance;boolerr;(err,_newBalance)=self.balances[msg.sender].minus(_amount);require(!err);self.balances[msg.sender]=_newBalance;self.totalSupply=self.totalSupply-_amount;Burn(msg.sender,_amount);Transfer(msg.sender,0x0,_amount);returntrue;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 627
column: 2
content: functionCrowdsaleToken(addressowner,stringname,stringsymbol,uint8decimals,uint256initialSupply,boolallowMinting){token.init(owner,name,symbol,decimals,initialSupply,allowMinting);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 637
column: 2
content: functionname()constantreturns(string){returntoken.name;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 641
column: 2
content: functionsymbol()constantreturns(string){returntoken.symbol;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 645
column: 2
content: functiondecimals()constantreturns(uint8){returntoken.decimals;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 649
column: 2
content: functiontotalSupply()constantreturns(uint256){returntoken.totalSupply;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 653
column: 2
content: functioninitialSupply()constantreturns(uint256){returntoken.INITIAL_SUPPLY;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 657
column: 2
content: functionbalanceOf(addresswho)constantreturns(uint256){returntoken.balanceOf(who);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 661
column: 2
content: functionallowance(addressowner,addressspender)constantreturns(uint256){returntoken.allowance(owner,spender);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 665
column: 2
content: functiontransfer(addressto,uintvalue)returns(boolok){returntoken.transfer(to,value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 669
column: 2
content: functiontransferFrom(addressfrom,addressto,uintvalue)returns(boolok){returntoken.transferFrom(from,to,value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 673
column: 2
content: functionapprove(addressspender,uintvalue)returns(boolok){returntoken.approve(spender,value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 677
column: 2
content: functionchangeOwner(addressnewOwner)returns(boolok){returntoken.changeOwner(newOwner);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 681
column: 2
content: functionburnToken(uint256amount)returns(boolok){returntoken.burnToken(amount);}

SOLIDITY_VISIBILITY :38
SOLIDITY_DEPRECATED_CONSTRUCTIONS :18
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN :3
SOLIDITY_EXTRA_GAS_IN_LOOPS :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :2
SOLIDITY_USING_INLINE_ASSEMBLY :4
SOLIDITY_DIV_MUL :1
SOLIDITY_ERC20_APPROVE :1

