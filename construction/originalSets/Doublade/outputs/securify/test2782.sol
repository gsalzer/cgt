Processing contract: /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol:DrainMe
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'DrainMe':
    |function callFirstTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	firstTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(93)

[33mWarning[0m for DAO in contract 'DrainMe':
    |function callSecondTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	secondTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(98)

[33mWarning[0m for DAO in contract 'DrainMe':
    |
    |function winPrize() public payable onlyOwner {
  > |	owner.call.value(1 wei)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(124)

[33mWarning[0m for DAOConstantGas in contract 'DrainMe':
    |
    |function claimPrize() public payable onlyWinner {
  > |	winner.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(128)

[33mWarning[0m for LockedEther in contract 'DrainMe':
    |pragma solidity ^0.4.23;
    |
  > |contract DrainMe {
    |
    |//constants
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(8)

[31mViolation[0m for TODAmount in contract 'DrainMe':
    |
    |function claimPrize() public payable onlyWinner {
  > |	winner.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(128)

[33mWarning[0m for TODAmount in contract 'DrainMe':
    |
    |function winPrize() public payable onlyOwner {
  > |	owner.call.value(1 wei)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(124)

[31mViolation[0m for TODReceiver in contract 'DrainMe':
    |
    |function winPrize() public payable onlyOwner {
  > |	owner.call.value(1 wei)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(124)

[31mViolation[0m for TODReceiver in contract 'DrainMe':
    |
    |function claimPrize() public payable onlyWinner {
  > |	winner.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(128)

[33mWarning[0m for TODReceiver in contract 'DrainMe':
    |function callFirstTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	firstTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(93)

[33mWarning[0m for TODReceiver in contract 'DrainMe':
    |function callSecondTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	secondTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(98)

[31mViolation[0m for UnhandledException in contract 'DrainMe':
    |function callFirstTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	firstTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(93)

[31mViolation[0m for UnhandledException in contract 'DrainMe':
    |function callSecondTarget () public payable onlyPlayers {
    |	require (msg.value >= 0.005 ether);
  > |	secondTarget.call.value(msg.value)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(98)

[31mViolation[0m for UnhandledException in contract 'DrainMe':
    |
    |function winPrize() public payable onlyOwner {
  > |	owner.call.value(1 wei)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(124)

[33mWarning[0m for UnhandledException in contract 'DrainMe':
    |	if(msg.sender!=owner || unlockSecret()){
    |	    uint256 amount = 0;
  > |        msg.sender.transfer(amount);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(75)

[33mWarning[0m for UnhandledException in contract 'DrainMe':
    |
    |function claimPrize() public payable onlyWinner {
  > |	winner.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DrainMe':
    |	if(msg.sender!=owner || unlockSecret()){
    |	    uint256 amount = 0;
  > |        msg.sender.transfer(amount);
    |	}
    |}
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(75)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DrainMe':
    |
    |function claimPrize() public payable onlyWinner {
  > |	winner.transfer(address(this).balance);
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DrainMe':
    |
    |function winPrize() public payable onlyOwner {
  > |	owner.call.value(1 wei)();
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'DrainMe':
    |// by nightman
  > |// winner gets the contract balance
    |// 0.02 to play
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(2)

[31mViolation[0m for UnrestrictedWrite in contract 'DrainMe':
    |pragma solidity ^0.4.23;
    |
  > |contract DrainMe {
    |
    |//constants
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'DrainMe':
    |
    |function DranMe() public payable{
  > |	owner = msg.sender;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'DrainMe':
    |function becomePlayer() public payable{
    |	require(msg.value >= 0.02 ether);
  > |	players.push(msg.sender);
    |	approvedPlayers[msg.sender]=true;
    |}
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'DrainMe':
    |
    |function setSeed (uint256 _index, uint256 _value) public payable onlyPlayers {
  > |	seed[_index] = _value;
    |}
    |	
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'DrainMe':
    |	require(msg.value >= 0.02 ether);
    |	players.push(msg.sender);
  > |	approvedPlayers[msg.sender]=true;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'DrainMe':
    |    uint256 secret = uint256(hash);
    |        if(secret%5==0){
  > |            winner = msg.sender;
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'DrainMe':
    |
    |function setSecret(uint256 _secret) public payable onlyOwner{
  > |	secret = _secret;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb620cee6b52f96f3c6b253e6eea556aa2d214a99.sol(54)


