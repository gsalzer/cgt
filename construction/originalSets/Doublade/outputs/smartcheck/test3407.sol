reorder_contracts_2_3/test3407.sol
jar:file:/usr/local/lib/node_modules/@smartdec/smartcheck/jdeploy-bundle/smartcheck-2.0-jar-with-dependencies.jar!/solidity-rules.xmlruleId: SOLIDITY_DEPRECATED_CONSTRUCTIONS
patternId: 49bd2a
severity: 1
line: 88
column: 13
content: throw

ruleId: SOLIDITY_PRAGMAS_VERSION
patternId: 23fc32
severity: 1
line: 1
column: 16
content: ^

ruleId: SOLIDITY_REVERT_REQUIRE
patternId: c56b12
severity: 1
line: 86
column: 9
content: if(msg.value!=(price)){throw;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 40
column: 5
content: functionProgressiveJackpotLottery(){owner=msg.sender;tickets=12;round=1;lastWinner=0;lastWiningTicketNumber=0;status="Running";ticket1=0;ticket2=0;ticket3=0;ticket4=0;ticket5=0;ticket6=0;ticket7=0;ticket8=0;ticket9=0;ticket10=0;ticket11=0;ticket12=0;lastJackpotPayout=0;jackpot=0;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 75
column: 5
content: functionchangeStatus(stringw)onlyOwner{status=w;}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 79
column: 5
content: function()payable{buyTickets();}

ruleId: SOLIDITY_VISIBILITY
patternId: 910067
severity: 1
line: 84
column: 5
content: functionbuyTickets()payable{if(msg.value!=(price)){throw;}if(ticket1==0){ticket1=msg.sender;}elseif(ticket2==0){ticket2=msg.sender;}elseif(ticket3==0){ticket3=msg.sender;}elseif(ticket4==0){ticket4=msg.sender;}elseif(ticket5==0){ticket5=msg.sender;}elseif(ticket6==0){ticket6=msg.sender;}elseif(ticket7==0){ticket7=msg.sender;}elseif(ticket8==0){ticket8=msg.sender;}elseif(ticket9==0){ticket9=msg.sender;}elseif(ticket10==0){ticket10=msg.sender;}elseif(ticket11==0){ticket11=msg.sender;}elseif(ticket12==0){ticket12=msg.sender;}tickets-=amount;purchasedTicket(msg.sender);if(tickets==0){tickets=12;round+=1;random_number=uint(block.blockhash(block.number-1))%12+1;random_jackpot_number=uint(block.blockhash(block.number-2))%1500+1;lastWiningTicketNumber=random_number;winningTicketNumber(random_number);if(random_jackpot_number==1){lastJackpotRound=(round);jackpotRoundNumber(round);lastJackpotPayout=(jackpot*70/100);jackpot-=(jackpot*75/100);eachJackpotPayout=(lastJackpotPayout*1/12);ticket1.transfer(eachJackpotPayout);ticket2.transfer(eachJackpotPayout);ticket3.transfer(eachJackpotPayout);ticket4.transfer(eachJackpotPayout);ticket5.transfer(eachJackpotPayout);ticket6.transfer(eachJackpotPayout);ticket7.transfer(eachJackpotPayout);ticket8.transfer(eachJackpotPayout);ticket9.transfer(eachJackpotPayout);ticket10.transfer(eachJackpotPayout);ticket11.transfer(eachJackpotPayout);ticket12.transfer(eachJackpotPayout);}else{jackpot+=price;}if(random_number==1){ticket1.transfer(price*10);winningTicket(ticket1);lastWinner=ticket1;}elseif(random_number==2){ticket2.transfer(price*10);winningTicket(ticket2);lastWinner=ticket2;}elseif(random_number==3){ticket3.transfer(price*10);winningTicket(ticket3);lastWinner=ticket3;}elseif(random_number==4){ticket4.transfer(price*10);winningTicket(ticket4);lastWinner=ticket4;}elseif(random_number==5){ticket5.transfer(price*10);winningTicket(ticket5);lastWinner=ticket5;}elseif(random_number==6){ticket6.transfer(price*10);winningTicket(ticket6);lastWinner=ticket6;}elseif(random_number==7){ticket7.transfer(price*10);winningTicket(ticket7);lastWinner=ticket7;}elseif(random_number==8){ticket8.transfer(price*10);winningTicket(ticket8);lastWinner=ticket8;}elseif(random_number==9){ticket9.transfer(price*10);winningTicket(ticket9);lastWinner=ticket9;}elseif(random_number==10){ticket10.transfer(price*10);winningTicket(ticket10);lastWinner=ticket10;}elseif(random_number==11){ticket11.transfer(price*10);winningTicket(ticket11);lastWinner=ticket11;}elseif(random_number==12){ticket12.transfer(price*10);winningTicket(ticket12);lastWinner=ticket12;}contractProfitBalance=(this.balance-jackpot);owner.transfer((contractProfitBalance)*8/10);if((contractProfitBalance)>1ether){owner.transfer((contractProfitBalance)*5/10);}ticket1=0;ticket2=0;ticket3=0;ticket4=0;ticket5=0;ticket6=0;ticket7=0;ticket8=0;ticket9=0;ticket10=0;ticket11=0;ticket12=0;if(keccak256(status)!=keccak256("Running")){selfdestruct(owner);}}}

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 7
column: 5
content: addressowner;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 11
column: 5
content: uintcontractProfitBalance;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 15
column: 5
content: uinteachJackpotPayout;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 20
column: 5
content: addressticket1;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 21
column: 5
content: addressticket2;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 22
column: 5
content: addressticket3;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 23
column: 5
content: addressticket4;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 24
column: 5
content: addressticket5;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 25
column: 5
content: addressticket6;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 26
column: 5
content: addressticket7;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 27
column: 5
content: addressticket8;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 28
column: 5
content: addressticket9;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 29
column: 5
content: addressticket10;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 30
column: 5
content: addressticket11;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 31
column: 5
content: addressticket12;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 32
column: 5
content: uintwinner;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 33
column: 5
content: uintrandom_number;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 34
column: 5
content: uintrandom_jackpot_number;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 35
column: 5
content: uintconstantprice=0.1ether;

ruleId: SOLIDITY_VISIBILITY
patternId: b51ce0
severity: 1
line: 36
column: 5
content: uintconstantamount=1;

SOLIDITY_VISIBILITY :24
SOLIDITY_DEPRECATED_CONSTRUCTIONS :1
SOLIDITY_PRAGMAS_VERSION :1
SOLIDITY_REVERT_REQUIRE :1

