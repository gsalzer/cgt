reorder_contracts_2_3/test3490.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_ADDRESS_HARDCODED
patternId: adc165
severity: 1
line: 39
column: 12
content: 0xEe462A6717f17C57C826F1ad9b4d3813495296C9

ruleId: SOLIDITY_ARRAY_LENGTH_MANIPULATION
patternId: 872bdd
severity: 1
line: 58
column: 4
content: depositors.length+=1

ruleId: SOLIDITY_EXTRA_GAS_IN_LOOPS
patternId: k4o1l4
severity: 1
line: 107
column: 4
content: while(Balance>0&&nr<depositors.length){payout=Balance/(nr+1);depositors[nr].etherAddress.send(payout);Balance-=Balance/(nr+1);Total_Paid_Out+=Balance/(nr+1);nr+=1;}

ruleId: SOLIDITY_GAS_LIMIT_IN_LOOPS
patternId: 17f23a
severity: 1
line: 107
column: 11
content: Balance>0&&nr<depositors.length

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 38
column: 2
content: functionWealthShare(){owner=0xEe462A6717f17C57C826F1ad9b4d3813495296C9;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 44
column: 2
content: function(){enter();}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 50
column: 2
content: functionenter(){if(msg.value>200finney){uintamount=msg.value;Total_Savers=depositors.length+1;depositors.length+=1;depositors[depositors.length-1].etherAddress=msg.sender;depositors[depositors.length-1].amount=amount;Balance+=amount;Total_Deposited+=amount;Fees=Balance*1/100;Balance-=Fees;if(Fees!=0){uintminimal=1990finney;if(Fees<minimal){owner.send(Fees);Total_Paid_Out+=Fees;}else{uintTimes=Fees/minimal;for(uinti=0;i<Times;i++)if(Fees>0){owner.send(minimal);Total_Paid_Out+=Fees;Fees-=minimal;}}}uintpayout;uintnr=0;if(Total_Deposited*50/100<Balance){while(Balance>0&&nr<depositors.length){payout=Balance/(nr+1);depositors[nr].etherAddress.send(payout);Balance-=Balance/(nr+1);Total_Paid_Out+=Balance/(nr+1);nr+=1;}Message="The Wealth has been paid to Depositors!";}elseMessage="The Balance has to be at least 50% full to be able to pay out!";}}

SOLIDITY_VISIBILITY :3
SOLIDITY_ARRAY_LENGTH_MANIPULATION :1
SOLIDITY_EXTRA_GAS_IN_LOOPS :1
SOLIDITY_ADDRESS_HARDCODED :1
SOLIDITY_GAS_LIMIT_IN_LOOPS :1

