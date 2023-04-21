reorder_contracts_2_3/test2675.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 691
column: 32
content: 0x2b0ed58aeccb0912b9c1355b7ab966d6b9111996

ruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 692
column: 32
content: 0x8cdb4956074fe309b10de18081a57d09e10dd635

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 591
column: 4
content: functionhasHardCap()internalconstantreturns(bool){returngetMaximumFunds()!=0;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 596
column: 4
content: functiongetCurrentTime()internalconstantreturns(uint){returnnow;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 601
column: 4
content: functiongetMaximumFunds()internalconstantreturns(uint){returneuroCents2wei(getMaximumFundsInEuroCents());}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 606
column: 4
content: functiongetMinimumFunds()internalconstantreturns(uint){returneuroCents2wei(getMinimumFundsInEuroCents());}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 621
column: 4
content: functiontokenWeiInToken()internalconstantreturns(uint){returnuint(10)**uint(m_token.decimals());}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 626
column: 4
content: functioncalculateTokens(uintpayment)internalconstantreturns(uint){returnwei2euroCents(payment).mul(tokenWeiInToken()).div(tokenPriceInEuroCents());}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 646
column: 4
content: functiongetEuroCollected()publicconstantreturns(uint){returnwei2euroCents(getWeiCollected()).div(100);}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 651
column: 4
content: functiongetWeiCollected()publicconstantreturns(uint){returnm_funds.totalInvested();}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 656
column: 4
content: functiongetTokenMinted()publicconstantreturns(uint){returnm_token.totalSupply();}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 664
column: 4
content: functiongetMaximumFundsInEuroCents()publicconstantreturns(uint);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 667
column: 4
content: functiongetMinimumFundsInEuroCents()publicconstantreturns(uint);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 670
column: 4
content: functioneuroCentsInOneEther()publicconstantreturns(uint);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 673
column: 4
content: functiontokenPriceInEuroCents()publicconstantreturns(uint);

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 699
column: 4
content: functiongetMaximumFundsInEuroCents()publicconstantreturns(uint){return6700000000;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 704
column: 4
content: functiongetMinimumFundsInEuroCents()publicconstantreturns(uint){return6700000000;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 709
column: 4
content: functioneuroCentsInOneEther()publicconstantreturns(uint){return58000;}

ruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 28fa69
severity: 1
line: 714
column: 4
content: functiontokenPriceInEuroCents()publicconstantreturns(uint){return1000;}

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 172
column: 2
content: functionapprove(address_spender,uint256_value)publicreturns(bool){allowed[msg.sender][_spender]=_value;Approval(msg.sender,_spender,_value);returntrue;}

ruleId: SOLIDITY_ERC20_APPROVE
patternId: af782c
severity: 2
line: 233
column: 4
content: functionapprove(address_spender,uint256_value)requiresCirculationreturns(bool){returnsuper.approve(_spender,_value);}

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA
patternId: 5616b2
severity: 1
line: 8
column: 7
content: private

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 108
column: 2
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 360
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_SAFEMATH
patternId: 837cac
severity: 1
line: 480
column: 4
content: usingSafeMathforuint256;

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 91h3sa
severity: 1
line: 498
column: 8
content: public

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 303
column: 23
content: string_name

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 303
column: 37
content: string_symbol

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 326
column: 41
content: string

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 330
column: 43
content: string

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 484
column: 61
content: stringtoken_name

ruleId: SOLIDITY_UPGRADE_TO_050
patternId: 341gim
severity: 1
line: 484
column: 80
content: stringtoken_symbol

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 225
column: 4
content: functiontransfer(address_to,uint256_value)requiresCirculationreturns(bool){returnsuper.transfer(_to,_value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 229
column: 4
content: functiontransferFrom(address_from,address_to,uint256_value)requiresCirculationreturns(bool){returnsuper.transferFrom(_from,_to,_value);}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 233
column: 4
content: functionapprove(address_spender,uint256_value)requiresCirculationreturns(bool){returnsuper.approve(_spender,_value);}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 110
column: 2
content: mapping(address=>uint256)balances;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 298
column: 4
content: stringm_name;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 299
column: 4
content: stringm_symbol;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 684
column: 4
content: boolm_finished=false;

SOLIDITY_VISIBILITY :7
SOLIDITY_SAFEMATH :3
SOLIDITY_DEPRECATED_CONSTRUCTIONS :17
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_PRIVATE_MODIFIER_DONT_HIDE_DATA :1
SOLIDITY_ADDRESS_HARDCODED :2
SOLIDITY_UPGRADE_TO_050 :7
SOLIDITY_ERC20_APPROVE :2

