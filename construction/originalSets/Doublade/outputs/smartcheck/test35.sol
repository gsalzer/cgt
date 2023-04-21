reorder_contracts_2_3/test35.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 10
column: 40
content: 0x7b534c2D0F9Ee973e0b6FE8D4000cA711A20f22e

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 11
column: 44
content: 0x8C58187a978979947b88824DCdA5Cb5fD4410387

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 14
column: 44
content: 0x1411b3B189B01f6e6d1eA883bFFcbD3a5224934C

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 15
column: 50
content: 0x4686f017D456331ed2C1de66e134D8d05B24413D

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 17
column: 42
content: 0xeCb782B19Be6E657ae2D88831dD98145A00D32D5

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 18
column: 33
content: 0x4babbe57453e2b6AF125B4e304256fCBDf744480

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 19
column: 48
content: 0xF6B541E1B5e001DCc11827C1A16232759aeA730a

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 20
column: 63
content: 0x633cb544b2EF1bd9269B2111fD2B66fC05cd3477

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 21
column: 81
content: 0x5C1a44E07541203474D92BDD03f803ea74f6947c

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 22
column: 45
content: 0x86A635EccEFFfA70Ff8A6DB29DA9C8DB288E40D0

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 23
column: 72
content: 0x1Ca4F9d261707aF8A856020a4909B777da218868

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 24
column: 51
content: 0xCBeFaF199b800DEeB9EAd61f358EE46E06c54070

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 25
column: 36
content: 0x095c0F071Fd75875a6b5a1dEf3f3a993F591080c

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 26
column: 42
content: 0x8b52b019d237d0bbe8Baedf219132D5254e0690b

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 742
column: 13
content: (address(0))

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 762
column: 13
content: (address(0))

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: c67a09
severity: 1
line: 525
column: 32
content: 0x0

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 1552
column: 8
content: orders.length--

ruleId: SOLIDITY_BALANCE_EQUALITY
patternId: 5094ad
severity: 1
line: 503
column: 16
content: amount==agreements[agreementOwners[msg.sender]].balance

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 836
column: 4
content: functionapprove(address_spender,uint256amount)externalreturns(bool){require(_spender!=0x0,"spender must be set");allowed[msg.sender][_spender]=amount;emitApproval(msg.sender,_spender,amount);returntrue;}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 341
column: 8
content: for(uinti=0;i<signers.length;i++){if(!isSigner[signers[i]]){require(signers[i]!=address(0),"new signer must not be 0x0");activeSignersCount++;allSigners.push(signers[i]);isSigner[signers[i]]=true;emitSignerAdded(signers[i]);}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 355
column: 8
content: for(uinti=0;i<signers.length;i++){if(isSigner[signers[i]]){require(activeSignersCount>1,"must not remove last signer");activeSignersCount--;isSigner[signers[i]]=false;emitSignerRemoved(signers[i]);}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 374
column: 8
content: for(uint8i=0;i<CHUNK_SIZE&&i+offset<allSigners.length;i++){addresssignerAddress=allSigners[i+offset];signersResult[i]=[i+offset,uint(signerAddress),isSigner[signerAddress]?1:0];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 387
column: 8
content: for(uint8i=0;i<CHUNK_SIZE&&i+offset<scriptAddresses.length;i++){addressscriptAddress=scriptAddresses[i+offset];scriptsResult[i]=[i+offset,uint(scriptAddress),uint(scripts[scriptAddress].state),scripts[scriptAddress].signCount];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 539
column: 8
content: for(uint8i=0;i<CHUNK_SIZE&&i+offset<allAgreements.length;i++){bytes32agreementHash=allAgreements[i+offset];Agreementstorageagreement=agreements[agreementHash];agreementsResult[i]=[i+offset,uint(agreement.owner),agreement.balance,uint(agreementHash),uint(agreement.discount),uint(agreement.valuationCap)];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 581
column: 8
content: for(uint256i=0;i<symbols.length;i++){rates[symbols[i]]=RateInfo(newRates[i],now);emitRateChanged(symbols[i],newRates[i]);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1451
column: 8
content: for(uinti=0;i<len&&gasleft()>ORDER_MATCH_WORST_GAS;i++){if(_fillOrder(buyTokenIds[i],sellTokenIds[i])){matchCount++;}}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1465
column: 8
content: for(uint8i=0;i<CHUNK_SIZE&&i+offset<activeBuyOrders.length;i++){uint64orderId=activeBuyOrders[offset+i];Orderstorageorder=buyTokenOrders[orderId];response[i]=[orderId,uint(order.maker),order.price,order.amount];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1473
column: 8
content: for(uint8i=0;i<CHUNK_SIZE&&i+offset<activeSellOrders.length;i++){uint64orderId=activeSellOrders[offset+i];Orderstorageorder=sellTokenOrders[orderId];response[i]=[orderId,uint(order.maker),order.price,order.amount];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1708
column: 8
content: for(uinti=0;i<loanIds.length;i++){require(i<loans.length,"invalid loanId");LoanDatastorageloan=loans[loanIds[i]];require(loan.state==LoanState.Open,"loan state must be Open");require(now>=loan.maturity,"current time must be later than maturity");LoanProductstorageproduct=products[loan.productId];uintloanAmount;(loanAmount,)=calculateLoanValues(product,loan.repaymentAmount);totalLoanAmountCollected=totalLoanAmountCollected.add(loanAmount);loan.state=LoanState.Collected;uintdefaultingFeeInToken=loan.repaymentAmount.mul(product.defaultingFeePt).div(1000000);uintdefaultingFee=rates.convertToWei(augmintToken.peggedSymbol(),defaultingFeeInToken);uinttargetCollection=rates.convertToWei(augmintToken.peggedSymbol(),loan.repaymentAmount).add(defaultingFee);uintreleasedCollateral;if(targetCollection<loan.collateralAmount){releasedCollateral=loan.collateralAmount.sub(targetCollection);loan.borrower.transfer(releasedCollateral);}uintcollateralToCollect=loan.collateralAmount.sub(releasedCollateral);if(defaultingFee>=collateralToCollect){defaultingFee=collateralToCollect;collateralToCollect=0;}else{collateralToCollect=collateralToCollect.sub(defaultingFee);}totalDefaultingFee=totalDefaultingFee.add(defaultingFee);totalCollateralToCollect=totalCollateralToCollect.add(collateralToCollect);emitLoanCollected(loanIds[i],loan.borrower,collateralToCollect.add(defaultingFee),releasedCollateral,defaultingFee);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1775
column: 8
content: for(uint16i=0;i<CHUNK_SIZE;i++){if(offset+i>=products.length){break;}LoanProductstorageproduct=products[offset+i];response[i]=[offset+i,product.minDisbursedAmount,product.term,product.discountRate,product.collateralRatio,product.defaultingFeePt,monetarySupervisor.getMaxLoanAmount(product.minDisbursedAmount),product.isActive?1:0];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1796
column: 8
content: for(uint16i=0;i<CHUNK_SIZE;i++){if(offset+i>=loans.length){break;}response[i]=getLoanTuple(offset+i);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 1815
column: 8
content: for(uint16i=0;i<CHUNK_SIZE;i++){if(offset+i>=loansForAddress.length){break;}response[i]=getLoanTuple(loansForAddress[offset+i]);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 2021
column: 8
content: for(uint8i=0;i<CHUNK_SIZE;i++){if(offset+i>=lockProducts.length){break;}LockProductstoragelockProduct=lockProducts[offset+i];response[i]=[lockProduct.perTermInterest,lockProduct.durationInSecs,lockProduct.minimumLockAmount,monetarySupervisor.getMaxLockAmount(lockProduct.minimumLockAmount,lockProduct.perTermInterest),lockProduct.isActive?1:0];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 2047
column: 8
content: for(uint16i=0;i<CHUNK_SIZE;i++){if(offset+i>=locks.length){break;}Lockstoragelock=locks[offset+i];LockProductstoragelockProduct=lockProducts[lock.productId];uintinterestEarned=calculateInterest(lockProduct.perTermInterest,lock.amountLocked);response[i]=[uint(offset+i),uint(lock.owner),lock.amountLocked,interestEarned,lock.lockedUntil,lockProduct.perTermInterest,lockProduct.durationInSecs,lock.isActive?1:0];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 2068
column: 8
content: for(uint16i=0;i<CHUNK_SIZE;i++){if(offset+i>=locksForAddress.length){break;}Lockstoragelock=locks[locksForAddress[offset+i]];LockProductstoragelockProduct=lockProducts[lock.productId];uintinterestEarned=calculateInterest(lockProduct.perTermInterest,lock.amountLocked);response[i]=[locksForAddress[offset+i],lock.amountLocked,interestEarned,lock.lockedUntil,lockProduct.perTermInterest,lockProduct.durationInSecs,lock.isActive?1:0];}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 47acc2
severity: 1
line: 955
column: 4
content: function_increaseApproval(address_approver,address_spender,uint_addedValue)privatereturns(bool){allowed[_approver][_spender]=allowed[_approver][_spender].add(_addedValue);emitApproval(_approver,_spender,allowed[_approver][_spender]);}

ruleId: SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN
patternId: 58bdd3
severity: 1
line: 1447
column: 4
content: functionmatchMultipleOrders(uint64[]buyTokenIds,uint64[]sellTokenIds)externalreturns(uintmatchCount){uintlen=buyTokenIds.length;require(len==sellTokenIds.length,"buyTokenIds and sellTokenIds lengths must be equal");for(uinti=0;i<len&&gasleft()>ORDER_MATCH_WORST_GAS;i++){if(_fillOrder(buyTokenIds[i],sellTokenIds[i])){matchCount++;}}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 203
column: 8
content: for(uint256i=0;i<length;i++){grantPermission(agent,requiredPermissions[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 217
column: 8
content: for(uint256i=0;i<length;i++){revokePermission(agent,requiredPermissions[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 341
column: 8
content: for(uinti=0;i<signers.length;i++){if(!isSigner[signers[i]]){require(signers[i]!=address(0),"new signer must not be 0x0");activeSignersCount++;allSigners.push(signers[i]);isSigner[signers[i]]=true;emitSignerAdded(signers[i]);}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 355
column: 8
content: for(uinti=0;i<signers.length;i++){if(isSigner[signers[i]]){require(activeSignersCount>1,"must not remove last signer");activeSignersCount--;isSigner[signers[i]]=false;emitSignerRemoved(signers[i]);}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 581
column: 8
content: for(uint256i=0;i<symbols.length;i++){rates[symbols[i]]=RateInfo(newRates[i],now);emitRateChanged(symbols[i],newRates[i]);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 1708
column: 8
content: for(uinti=0;i<loanIds.length;i++){require(i<loans.length,"invalid loanId");LoanDatastorageloan=loans[loanIds[i]];require(loan.state==LoanState.Open,"loan state must be Open");require(now>=loan.maturity,"current time must be later than maturity");LoanProductstorageproduct=products[loan.productId];uintloanAmount;(loanAmount,)=calculateLoanValues(product,loan.repaymentAmount);totalLoanAmountCollected=totalLoanAmountCollected.add(loanAmount);loan.state=LoanState.Collected;uintdefaultingFeeInToken=loan.repaymentAmount.mul(product.defaultingFeePt).div(1000000);uintdefaultingFee=rates.convertToWei(augmintToken.peggedSymbol(),defaultingFeeInToken);uinttargetCollection=rates.convertToWei(augmintToken.peggedSymbol(),loan.repaymentAmount).add(defaultingFee);uintreleasedCollateral;if(targetCollection<loan.collateralAmount){releasedCollateral=loan.collateralAmount.sub(targetCollection);loan.borrower.transfer(releasedCollateral);}uintcollateralToCollect=loan.collateralAmount.sub(releasedCollateral);if(defaultingFee>=collateralToCollect){defaultingFee=collateralToCollect;collateralToCollect=0;}else{collateralToCollect=collateralToCollect.sub(defaultingFee);}totalDefaultingFee=totalDefaultingFee.add(defaultingFee);totalCollateralToCollect=totalCollateralToCollect.add(collateralToCollect);emitLoanCollected(loanIds[i],loan.borrower,collateralToCollect.add(defaultingFee),releasedCollateral,defaultingFee);}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 1002
column: 0
content: contractFeeAccountisSystemAccount,TransferFeeInterface{usingSafeMathforuint256;structTransferFee{uintpt;uintmin;uintmax;}TransferFeepublictransferFee;eventTransferFeesChanged(uinttransferFeePt,uinttransferFeeMin,uinttransferFeeMax);constructor(addresspermissionGranterContract,uinttransferFeePt,uinttransferFeeMin,uinttransferFeeMax)publicSystemAccount(permissionGranterContract){transferFee=TransferFee(transferFeePt,transferFeeMin,transferFeeMax);}function()publicpayable{}functionsetTransferFees(uinttransferFeePt,uinttransferFeeMin,uinttransferFeeMax)externalrestrict("StabilityBoard"){transferFee=TransferFee(transferFeePt,transferFeeMin,transferFeeMax);emitTransferFeesChanged(transferFeePt,transferFeeMin,transferFeeMax);}functioncalculateTransferFee(addressfrom,addressto,uintamount)externalviewreturns(uint256fee){if(!permissions[from]["NoTransferFee"]&&!permissions[to]["NoTransferFee"]){fee=amount.mul(transferFee.pt).div(1000000);if(fee>transferFee.max){fee=transferFee.max;}elseif(fee<transferFee.min){fee=transferFee.min;}}returnfee;}functioncalculateExchangeFee(uintweiAmount)externalviewreturns(uint256weiFee){require(weiAmount!=weiAmount,"not yet implemented");weiFee=transferFee.max;}}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 1072
column: 0
content: contractAugmintReservesisSystemAccount{function()publicpayable{}constructor(addresspermissionGranterContract)publicSystemAccount(permissionGranterContract){}functionburn(AugmintTokenInterfaceaugmintToken,uintamount)externalrestrict("MonetarySupervisor"){augmintToken.burn(amount);}}

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1349
column: 13
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1350
column: 13
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 1354
column: 11
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 240
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 424
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 559
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 653
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 1004
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 1095
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 1325
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 1576
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 1895
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SHOULD_NOT_BE_PURE
patternId: 11314f
severity: 1
line: 731
column: 2
content: functionrecover(bytes32hash,bytessig)internalpurereturns(address){bytes32r;bytes32s;uint8v;if(sig.length!=65){return(address(0));}assembly{r:=mload(add(sig,32))s:=mload(add(sig,64))v:=byte(0,mload(add(sig,96)))}if(v<27){v+=27;}if(v!=27&&v!=28){return(address(0));}else{returnecrecover(hash,v,r,s);}}

ruleId: SOLIDITY_SHOULD_RETURN_STRUCT
patternId: 7d54ca
severity: 1
line: 1841
column: 26
content: (uintloanAmount,uintinterestAmount)

ruleId: SOLIDITY_TRANSFER_IN_LOOP
patternId: 8jdj43
severity: 2
line: 1708
column: 8
content: for(uinti=0;i<loanIds.length;i++){require(i<loans.length,"invalid loanId");LoanDatastorageloan=loans[loanIds[i]];require(loan.state==LoanState.Open,"loan state must be Open");require(now>=loan.maturity,"current time must be later than maturity");LoanProductstorageproduct=products[loan.productId];uintloanAmount;(loanAmount,)=calculateLoanValues(product,loan.repaymentAmount);totalLoanAmountCollected=totalLoanAmountCollected.add(loanAmount);loan.state=LoanState.Collected;uintdefaultingFeeInToken=loan.repaymentAmount.mul(product.defaultingFeePt).div(1000000);uintdefaultingFee=rates.convertToWei(augmintToken.peggedSymbol(),defaultingFeeInToken);uinttargetCollection=rates.convertToWei(augmintToken.peggedSymbol(),loan.repaymentAmount).add(defaultingFee);uintreleasedCollateral;if(targetCollection<loan.collateralAmount){releasedCollateral=loan.collateralAmount.sub(targetCollection);loan.borrower.transfer(releasedCollateral);}uintcollateralToCollect=loan.collateralAmount.sub(releasedCollateral);if(defaultingFee>=collateralToCollect){defaultingFee=collateralToCollect;collateralToCollect=0;}else{collateralToCollect=collateralToCollect.sub(defaultingFee);}totalDefaultingFee=totalDefaultingFee.add(defaultingFee);totalCollateralToCollect=totalCollateralToCollect.add(collateralToCollect);emitLoanCollected(loanIds[i],loan.borrower,collateralToCollect.add(defaultingFee),releasedCollateral,defaultingFee);}

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 1021
column: 16
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 1074
column: 16
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 199
column: 53
content: bytes32[]requiredPermissions

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 215
column: 54
content: bytes32[]requiredPermissions

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 339
column: 24
content: address[]signers

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 353
column: 27
content: address[]signers

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 731
column: 33
content: bytessig

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 801
column: 51
content: string_name

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 801
column: 65
content: string_symbol

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 943
column: 62
content: bytessignature

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 960
column: 69
content: stringnarrative

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 973
column: 70
content: stringnarrative

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 979
column: 70
content: stringnarrative

ruleId: SOLIDITY_USING_INLINE_ASSEMBLY
patternId: 109cd5
severity: 1
line: 749
column: 4
content: assembly{r:=mload(add(sig,32))s:=mload(add(sig,64))v:=byte(0,mload(add(sig,96)))}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 10
column: 4
content: addressconstantDEPLOYER_ACCOUNT=0x7b534c2D0F9Ee973e0b6FE8D4000cA711A20f22e;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 11
column: 4
content: addressconstantRATES_FEEDER_ACCOUNT=0x8C58187a978979947b88824DCdA5Cb5fD4410387;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 14
column: 4
content: addressconstantpreTokenProxyAddress=0x1411b3B189B01f6e6d1eA883bFFcbD3a5224934C;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 15
column: 4
content: addressconstantstabilityBoardProxyAddress=0x4686f017D456331ed2C1de66e134D8d05B24413D;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 17
column: 4
content: PreTokenconstantpreToken=PreToken(0xeCb782B19Be6E657ae2D88831dD98145A00D32D5);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 18
column: 4
content: Ratesconstantrates=Rates(0x4babbe57453e2b6AF125B4e304256fCBDf744480);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 19
column: 4
content: FeeAccountconstantfeeAccount=FeeAccount(0xF6B541E1B5e001DCc11827C1A16232759aeA730a);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 20
column: 4
content: AugmintReservesconstantaugmintReserves=AugmintReserves(0x633cb544b2EF1bd9269B2111fD2B66fC05cd3477);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 21
column: 4
content: InterestEarnedAccountconstantinterestEarnedAccount=InterestEarnedAccount(0x5C1a44E07541203474D92BDD03f803ea74f6947c);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 22
column: 4
content: TokenAEurconstanttokenAEur=TokenAEur(0x86A635EccEFFfA70Ff8A6DB29DA9C8DB288E40D0);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 23
column: 4
content: MonetarySupervisorconstantmonetarySupervisor=MonetarySupervisor(0x1Ca4F9d261707aF8A856020a4909B777da218868);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 24
column: 4
content: LoanManagerconstantloanManager=LoanManager(0xCBeFaF199b800DEeB9EAd61f358EE46E06c54070);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 25
column: 4
content: Lockerconstantlocker=Locker(0x095c0F071Fd75875a6b5a1dEf3f3a993F591080c);

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 26
column: 4
content: Exchangeconstantexchange=Exchange(0x8b52b019d237d0bbe8Baedf219132D5254e0690b);

SOLIDITY_VISIBILITY :14
SOLIDITY_ARRAY_LENGTH_MANIPULATION :1
SOLIDITY_FUNCTIONS_RETURNS_TYPE_AND_NO_RETURN :2
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :3
SOLIDITY_EXTRA_GAS_IN_LOOPS :16
SOLIDITY_ADDRESS_HARDCODED :17
SOLIDITY_UPGRADE_TO_050 :13
SOLIDITY_GAS_LIMIT_IN_LOOPS :6
SOLIDITY_SHOULD_RETURN_STRUCT :1
SOLIDITY_BALANCE_EQUALITY :1
SOLIDITY_SHOULD_NOT_BE_PURE :1
SOLIDITY_ERC20_APPROVE :1
SOLIDITY_SAFEMATH :9
SOLIDITY_LOCKED_MONEY :2
SOLIDITY_USING_INLINE_ASSEMBLY :1
SOLIDITY_TRANSFER_IN_LOOP :1

