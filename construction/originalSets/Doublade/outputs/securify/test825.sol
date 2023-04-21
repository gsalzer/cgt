Processing contract: /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol:DrainMe
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol:Hack
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'DrainMe':
    |function callFirstTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	firstTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(92)

[33mWarning[0m for DAO in contract 'DrainMe':
    |function callSecondTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	secondTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(97)

[33mWarning[0m for DAO in contract 'DrainMe':
    |
    |function winPrize() public payable onlyOwner {
  > |	owner.call.value(1 wei)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(123)

[33mWarning[0m for DAOConstantGas in contract 'DrainMe':
    |
    |function claimPrize() public payable onlyWinner {
  > |	winner.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(127)

[33mWarning[0m for LockedEther in contract 'DrainMe':
    |pragma solidity ^0.4.23;
    |
  > |contract DrainMe {  
    |
    |//constants
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(3)

[31mViolation[0m for TODAmount in contract 'DrainMe':
    |
    |function claimPrize() public payable onlyWinner {
  > |	winner.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(127)

[33mWarning[0m for TODAmount in contract 'DrainMe':
    |
    |function winPrize() public payable onlyOwner {
  > |	owner.call.value(1 wei)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(123)

[31mViolation[0m for TODReceiver in contract 'DrainMe':
    |
    |function winPrize() public payable onlyOwner {
  > |	owner.call.value(1 wei)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(123)

[31mViolation[0m for TODReceiver in contract 'DrainMe':
    |
    |function claimPrize() public payable onlyWinner {
  > |	winner.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(127)

[33mWarning[0m for TODReceiver in contract 'DrainMe':
    |function callFirstTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	firstTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(92)

[33mWarning[0m for TODReceiver in contract 'DrainMe':
    |function callSecondTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	secondTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(97)

[31mViolation[0m for UnhandledException in contract 'DrainMe':
    |function callFirstTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	firstTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(92)

[31mViolation[0m for UnhandledException in contract 'DrainMe':
    |function callSecondTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	secondTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(97)

[31mViolation[0m for UnhandledException in contract 'DrainMe':
    |
    |function winPrize() public payable onlyOwner {
  > |	owner.call.value(1 wei)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(123)

[33mWarning[0m for UnhandledException in contract 'DrainMe':
    |	if(msg.sender!=owner || unlockSecret()){
    |	    uint256 amount = 0;
  > |        msg.sender.transfer(amount);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(70)

[33mWarning[0m for UnhandledException in contract 'DrainMe':
    |
    |function claimPrize() public payable onlyWinner {
  > |	winner.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DrainMe':
    |	if(msg.sender!=owner || unlockSecret()){
    |	    uint256 amount = 0;
  > |        msg.sender.transfer(amount);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(70)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DrainMe':
    |
    |function claimPrize() public payable onlyWinner {
  > |	winner.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DrainMe':
    |
    |function winPrize() public payable onlyOwner {
  > |	owner.call.value(1 wei)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'DrainMe':
    |pragma solidity ^0.4.23;
    |
  > |contract DrainMe {  
    |
    |//constants
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'DrainMe':
    |
    |function DranMe() public payable{
  > |	owner = msg.sender;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'DrainMe':
    |function becomePlayer() public payable{
    |	require(msg.value >= 0.02 ether);
  > |	players.push(msg.sender);
    |	approvedPlayers[msg.sender]=true;
    |}
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'DrainMe':
    |
    |function setSeed (uint256 _index, uint256 _value) public payable onlyPlayers {
  > |	seed[_index] = _value;
    |}
    |	
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'DrainMe':
    |	require(msg.value >= 0.02 ether);
    |	players.push(msg.sender);
  > |	approvedPlayers[msg.sender]=true;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'DrainMe':
    |    str(secret);
    |        if(secret%5==0){
  > |            winner = msg.sender;
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'DrainMe':
    |
    |function setSecret(uint256 _secret) public payable onlyOwner{
  > |	secret = _secret;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(49)

[33mWarning[0m for DAO in contract 'Hack':
    |        if(secret%5==0){
    |            contr.DranMe();
  > |            contr.becomePlayer.value(0.02 ether)();
    |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(166)

[33mWarning[0m for DAO in contract 'Hack':
    |            contr.DranMe();
    |            contr.becomePlayer.value(0.02 ether)();
  > |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
    |            msg.sender.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(167)

[33mWarning[0m for DAOConstantGas in contract 'Hack':
    |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
  > |            msg.sender.transfer(address(this).balance);
    |            test1(true);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(169)

[33mWarning[0m for DAOConstantGas in contract 'Hack':
    |    function take() public {
    |        require(msg.sender == owner);
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(180)

[33mWarning[0m for LockedEther in contract 'Hack':
    |}
    |
  > |contract Hack{
    |    
    |    DrainMe contr = DrainMe(0xB620CeE6B52f96f3C6b253E6eEa556Aa2d214a99);
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'Hack':
    |    //}
    |    
  > |    function putHere() payable public {
    |        require (msg.value >= 0.03 ether);
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'Hack':
    |    event test1(bool);
    |    event what(uint256);
  > |    function test() public payable {
    |        //require (msg.value >= 0.03 ether);
    |        require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'Hack':
    |    }
    |      
  > |    function take() public {
    |        require(msg.sender == owner);
    |        msg.sender.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(178)

[31mViolation[0m for TODAmount in contract 'Hack':
    |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
  > |            msg.sender.transfer(address(this).balance);
    |            test1(true);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(169)

[31mViolation[0m for TODAmount in contract 'Hack':
    |    function take() public {
    |        require(msg.sender == owner);
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(180)

[33mWarning[0m for TODAmount in contract 'Hack':
    |        if(secret%5==0){
    |            contr.DranMe();
  > |            contr.becomePlayer.value(0.02 ether)();
    |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(166)

[33mWarning[0m for TODAmount in contract 'Hack':
    |            contr.DranMe();
    |            contr.becomePlayer.value(0.02 ether)();
  > |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
    |            msg.sender.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(167)

[33mWarning[0m for TODReceiver in contract 'Hack':
    |        if(secret%5==0){
    |            contr.DranMe();
  > |            contr.becomePlayer.value(0.02 ether)();
    |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(166)

[33mWarning[0m for TODReceiver in contract 'Hack':
    |            contr.DranMe();
    |            contr.becomePlayer.value(0.02 ether)();
  > |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
    |            msg.sender.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(167)

[33mWarning[0m for TODReceiver in contract 'Hack':
    |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
  > |            msg.sender.transfer(address(this).balance);
    |            test1(true);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(169)

[33mWarning[0m for TODReceiver in contract 'Hack':
    |    function take() public {
    |        require(msg.sender == owner);
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(180)

[33mWarning[0m for UnhandledException in contract 'Hack':
    |        what(secret);
    |        if(secret%5==0){
  > |            contr.DranMe();
    |            contr.becomePlayer.value(0.02 ether)();
    |            contr.manipulateSecret.value(0.01 ether)();
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(165)

[33mWarning[0m for UnhandledException in contract 'Hack':
    |        if(secret%5==0){
    |            contr.DranMe();
  > |            contr.becomePlayer.value(0.02 ether)();
    |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(166)

[33mWarning[0m for UnhandledException in contract 'Hack':
    |            contr.DranMe();
    |            contr.becomePlayer.value(0.02 ether)();
  > |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
    |            msg.sender.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(167)

[33mWarning[0m for UnhandledException in contract 'Hack':
    |            contr.becomePlayer.value(0.02 ether)();
    |            contr.manipulateSecret.value(0.01 ether)();
  > |            contr.claimPrize();
    |            msg.sender.transfer(address(this).balance);
    |            test1(true);
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(168)

[33mWarning[0m for UnhandledException in contract 'Hack':
    |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
  > |            msg.sender.transfer(address(this).balance);
    |            test1(true);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(169)

[33mWarning[0m for UnhandledException in contract 'Hack':
    |    function take() public {
    |        require(msg.sender == owner);
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hack':
    |        what(secret);
    |        if(secret%5==0){
  > |            contr.DranMe();
    |            contr.becomePlayer.value(0.02 ether)();
    |            contr.manipulateSecret.value(0.01 ether)();
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hack':
    |            contr.becomePlayer.value(0.02 ether)();
    |            contr.manipulateSecret.value(0.01 ether)();
  > |            contr.claimPrize();
    |            msg.sender.transfer(address(this).balance);
    |            test1(true);
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hack':
    |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
  > |            msg.sender.transfer(address(this).balance);
    |            test1(true);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(169)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hack':
    |    function take() public {
    |        require(msg.sender == owner);
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hack':
    |        if(secret%5==0){
    |            contr.DranMe();
  > |            contr.becomePlayer.value(0.02 ether)();
    |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(166)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hack':
    |            contr.DranMe();
    |            contr.becomePlayer.value(0.02 ether)();
  > |            contr.manipulateSecret.value(0.01 ether)();
    |            contr.claimPrize();
    |            msg.sender.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x352dbba201af66f98a47f2b280bff45f9050dbf8.sol(167)


