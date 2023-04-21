reorder_contracts_2_3/test2889.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 45
column: 4
content: owner=address(0)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 266
column: 8
content: verifierManager=address(0)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 267
column: 8
content: feeManager=address(0)

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: a91b18
severity: 1
line: 270
column: 22
content: (address(0))

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 340
column: 8
content: verifiers.length=verifiers.length.sub(1)

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 457
column: 16
content: approvals.length=approvals.length.sub(1)

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 506
column: 16
content: approvals.length=approvals.length.sub(1)

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 272
column: 8
content: for(uint256i=0;i<_verifiers.length;i++){verifiers.push(_verifiers[i]);verifierAddressToIndex[_verifiers[i]]=i.add(1);}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 352
column: 8
content: for(uint256i=1;i<verifiers.length;i++){ret[i.sub(1)]=verifiers[i];}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 416
column: 8
content: for(uint256i=0;i<approvals.length;i++){require(approvals[i]!=msg.sender,"Already approved withdrawal");}

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: d3j11j
severity: 1
line: 483
column: 8
content: for(uint256i=0;i<approvals.length;i++){require(approvals[i]!=msg.sender,"Already approved anchor block");}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 272
column: 8
content: for(uint256i=0;i<_verifiers.length;i++){verifiers.push(_verifiers[i]);verifierAddressToIndex[_verifiers[i]]=i.add(1);}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 416
column: 8
content: for(uint256i=0;i<approvals.length;i++){require(approvals[i]!=msg.sender,"Already approved withdrawal");}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 453
column: 8
content: for(uint256i=0;i<length;i++){if(approvals[i]==msg.sender){approvals[i]=approvals[length.sub(1)];deleteapprovals[length.sub(1)];approvals.length=approvals.length.sub(1);break;}}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 483
column: 8
content: for(uint256i=0;i<approvals.length;i++){require(approvals[i]!=msg.sender,"Already approved anchor block");}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: f6f853
severity: 2
line: 502
column: 8
content: for(uint256i=0;i<length;i++){if(approvals[i]==msg.sender){approvals[i]=approvals[length.sub(1)];deleteapprovals[length.sub(1)];approvals.length=approvals.length.sub(1);break;}}

ruleId: SOLIDITY_LOCKED_MONEY
patternId: 30281d
severity: 3
line: 185
column: 0
content: contractERC20RelayisOwnable{usingSafeMathforuint256;usingSafeERC20forERC20;stringpublicconstantVERSION="1.0.0";addresspublicverifierManager;addresspublicfeeManager;eventNewVerifierManager(addressindexedpreviousManager,addressindexednewManager);eventNewFeeManager(addressindexedpreviousManager,addressindexednewManager);uint256constantMINIMUM_VERIFIERS=3;uint256publicrequiredVerifiers;address[]privateverifiers;mapping(address=>uint256)privateverifierAddressToIndex;uint256constantGAS_PRICE=20*10**9;uint256constantESTIMATED_GAS_PER_VERIFIER=54301;uint256constantESTIMATED_GAS_PER_WITHDRAWAL=73458;uint256publicnctEthExchangeRate;uint256publicfees;addresspublicfeeWallet;structWithdrawal{addressdestination;uint256amount;boolprocessed;}mapping(bytes32=>Withdrawal)publicwithdrawals;mapping(bytes32=>address[])publicwithdrawalApprovals;eventWithdrawalProcessed(addressindexeddestination,uint256amount,bytes32txHash,bytes32blockHash,uint256blockNumber);eventFeesChanged(uint256newFees);structAnchor{bytes32blockHash;uint256blockNumber;boolprocessed;}Anchor[]publicanchors;mapping(bytes32=>address[])publicanchorApprovals;eventAnchoredBlock(bytes32indexedblockHash,uint256indexedblockNumber);eventContestedBlock(bytes32indexedblockHash,uint256indexedblockNumber);ERC20privatetoken;constructor(address_token,uint256_nctEthExchangeRate,address_feeWallet,address[]_verifiers)public{require(_token!=address(0),"Invalid token address");require(_verifiers.length>=MINIMUM_VERIFIERS,"Number of verifiers less than minimum");verifierManager=address(0);feeManager=address(0);verifiers.push(address(0));for(uint256i=0;i<_verifiers.length;i++){verifiers.push(_verifiers[i]);verifierAddressToIndex[_verifiers[i]]=i.add(1);}requiredVerifiers=calculateRequiredVerifiers();nctEthExchangeRate=_nctEthExchangeRate;fees=calculateFees();token=ERC20(_token);feeWallet=_feeWallet;}function()externalpayable{revert("Do not allow sending Eth to this contract");}modifieronlyVerifierManager(){if(verifierManager==address(0)){require(msg.sender==owner,"Not a verifier manager");}else{require(msg.sender==verifierManager,"Not a verifier manager");}_;}functionsetVerifierManager(addressnewVerifierManager)externalonlyOwner{emitNewVerifierManager(verifierManager,newVerifierManager);verifierManager=newVerifierManager;}modifieronlyFeeManager(){if(feeManager==address(0)){require(msg.sender==owner,"Not a fee manager");}else{require(msg.sender==feeManager,"Not a fee manager");}_;}functionsetFeeManager(addressnewFeeManager)externalonlyOwner{emitNewFeeManager(feeManager,newFeeManager);feeManager=newFeeManager;}functionaddVerifier(addressaddr)externalonlyVerifierManager{require(addr!=address(0),"Invalid verifier address");require(verifierAddressToIndex[addr]==0,"Address is already a verifier");uint256index=verifiers.push(addr);verifierAddressToIndex[addr]=index.sub(1);requiredVerifiers=calculateRequiredVerifiers();fees=calculateFees();}functionremoveVerifier(addressaddr)externalonlyVerifierManager{require(addr!=address(0),"Invalid verifier address");require(verifierAddressToIndex[addr]!=0,"Address is not a verifier");require(verifiers.length.sub(1)>MINIMUM_VERIFIERS,"Removing verifier would put number of verifiers below minimum");uint256index=verifierAddressToIndex[addr];require(verifiers[index]==addr,"Verifier address not present in verifiers array");verifiers[index]=verifiers[verifiers.length.sub(1)];verifierAddressToIndex[verifiers[verifiers.length.sub(1)]]=index;deleteverifierAddressToIndex[addr];verifiers.length=verifiers.length.sub(1);requiredVerifiers=calculateRequiredVerifiers();fees=calculateFees();}functionactiveVerifiers()publicviewreturns(address[]){require(verifiers.length>0,"Invalid number of verifiers");address[]memoryret=newaddress[](verifiers.length.sub(1));for(uint256i=1;i<verifiers.length;i++){ret[i.sub(1)]=verifiers[i];}returnret;}functionnumberOfVerifiers()publicviewreturns(uint256){require(verifiers.length>0,"Invalid number of verifiers");returnverifiers.length.sub(1);}functioncalculateRequiredVerifiers()internalviewreturns(uint256){returnnumberOfVerifiers().mul(2).div(3);}functionisVerifier(addressaddr)publicviewreturns(bool){returnverifierAddressToIndex[addr]!=0&&verifiers[verifierAddressToIndex[addr]]==addr;}modifieronlyVerifier(){require(isVerifier(msg.sender),"msg.sender is not verifier");_;}functionsetNctEthExchangeRate(uint256_nctEthExchangeRate)externalonlyFeeManager{nctEthExchangeRate=_nctEthExchangeRate;fees=calculateFees();emitFeesChanged(fees);}functioncalculateFees()internalviewreturns(uint256){uint256estimatedGas=ESTIMATED_GAS_PER_VERIFIER.mul(numberOfVerifiers()).add(ESTIMATED_GAS_PER_WITHDRAWAL);returnestimatedGas.mul(GAS_PRICE).mul(nctEthExchangeRate);}functionapproveWithdrawal(addressdestination,uint256amount,bytes32txHash,bytes32blockHash,uint256blockNumber)externalonlyVerifier{require(amount>fees,"Withdrawal amount is less than or equal to fees");require(destination!=address(0),"Invalid destination address");bytes32hash=keccak256(abi.encodePacked(txHash,blockHash,blockNumber));uint256net=amount.sub(fees);if(withdrawals[hash].destination==address(0)){withdrawals[hash]=Withdrawal(destination,net,false);}Withdrawalstoragew=withdrawals[hash];address[]storageapprovals=withdrawalApprovals[hash];require(w.destination==destination,"Destination mismatch");require(w.amount==net,"Amount mismatch");for(uint256i=0;i<approvals.length;i++){require(approvals[i]!=msg.sender,"Already approved withdrawal");}approvals.push(msg.sender);if(approvals.length>=requiredVerifiers&&!w.processed){if(fees!=0&&feeWallet!=address(0)){token.safeTransfer(feeWallet,fees);}token.safeTransfer(destination,net);w.processed=true;emitWithdrawalProcessed(destination,net,txHash,blockHash,blockNumber);}}functionunapproveWithdrawal(bytes32txHash,bytes32blockHash,uint256blockNumber)externalonlyVerifier{bytes32hash=keccak256(abi.encodePacked(txHash,blockHash,blockNumber));require(withdrawals[hash].destination!=address(0),"No such withdrawal");Withdrawalstoragew=withdrawals[hash];address[]storageapprovals=withdrawalApprovals[hash];require(!w.processed,"Withdrawal already processed");uint256length=approvals.length;for(uint256i=0;i<length;i++){if(approvals[i]==msg.sender){approvals[i]=approvals[length.sub(1)];deleteapprovals[length.sub(1)];approvals.length=approvals.length.sub(1);break;}}}functionanchor(bytes32blockHash,uint256blockNumber)externalonlyVerifier{if(anchors.length==0||anchors[anchors.length.sub(1)].blockHash!=blockHash||anchors[anchors.length.sub(1)].blockNumber!=blockNumber){if(anchors.length>0&&!anchors[anchors.length.sub(1)].processed){Anchorstoragelast=anchors[anchors.length.sub(1)];emitContestedBlock(last.blockHash,last.blockNumber);}anchors.push(Anchor(blockHash,blockNumber,false));}bytes32hash=keccak256(abi.encodePacked(blockHash,blockNumber));Anchorstoragea=anchors[anchors.length.sub(1)];address[]storageapprovals=anchorApprovals[hash];require(a.blockHash==blockHash,"Block hash mismatch");require(a.blockNumber==blockNumber,"Block number mismatch");for(uint256i=0;i<approvals.length;i++){require(approvals[i]!=msg.sender,"Already approved anchor block");}approvals.push(msg.sender);if(approvals.length>=requiredVerifiers&&!a.processed){a.processed=true;emitAnchoredBlock(blockHash,blockNumber);}}functionunanchor()externalonlyVerifier{Anchorstoragea=anchors[anchors.length.sub(1)];require(!a.processed,"Block anchor already processed");bytes32hash=keccak256(abi.encodePacked(a.blockHash,a.blockNumber));address[]storageapprovals=anchorApprovals[hash];uint256length=approvals.length;for(uint256i=0;i<length;i++){if(approvals[i]==msg.sender){approvals[i]=approvals[length.sub(1)];deleteapprovals[length.sub(1)];approvals.length=approvals.length.sub(1);break;}}}}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 300
column: 4
content: functionsetVerifierManager(addressnewVerifierManager)externalonlyOwner{emitNewVerifierManager(verifierManager,newVerifierManager);verifierManager=newVerifierManager;}

ruleId: SOLIDITY_OVERPOWERED_ROLE
patternId: j83hf7
severity: 2
line: 314
column: 4
content: functionsetFeeManager(addressnewFeeManager)externalonlyOwner{emitNewFeeManager(feeManager,newFeeManager);feeManager=newFeeManager;}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 207
column: 14
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 208
column: 33
content: private

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 259
column: 10
content: private

ruleId: SOLIDITY_REDUNDANT_FALLBACK_REJECT
patternId: b85a32
severity: 1
line: 287
column: 33
content: {revert("Do not allow sending Eth to this contract");}

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 186
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 261
column: 81
content: address[]_verifiers

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 346
column: 52
content: address[]

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 205
column: 4
content: uint256constantMINIMUM_VERIFIERS=3;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 211
column: 4
content: uint256constantGAS_PRICE=20*10**9;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 212
column: 4
content: uint256constantESTIMATED_GAS_PER_VERIFIER=54301;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 213
column: 4
content: uint256constantESTIMATED_GAS_PER_WITHDRAWAL=73458;

SOLIDITY_VISIBILITY :4
SOLIDITY_SAFEMATH :1
SOLIDITY_OVERPOWERED_ROLE :2
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_ARRAY_LENGTH_MANIPULATION :3
SOLIDITY_LOCKED_MONEY :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :3
SOLIDITY_EXTRA_GAS_IN_LOOPS :4
SOLIDITY_ADDRESS_HARDCODED :4
SOLIDITY_UPGRADE_TO_050 :2
SOLIDITY_GAS_LIMIT_IN_LOOPS :5
SOLIDITY_REDUNDANT_FALLBACK_REJECT :1

