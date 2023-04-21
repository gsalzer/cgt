Processing contract: /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol:Jackpot
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Jackpot':
    |          amountwon = (balance*80)/100;
    |          TheWinner = winner;
  > |          if (!owner.send(balance/10)) throw;
    |          if(referral[winner] != 0x0000000000000000000000000000000000000000){
    |              amounRefferalWon = (amountwon*5)/100;
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(135)

[31mViolation[0m for DAOConstantGas in contract 'Jackpot':
    |          if(referral[winner] != 0x0000000000000000000000000000000000000000){
    |              amounRefferalWon = (amountwon*5)/100;
  > |              referral[winner].send(amounRefferalWon);
    |              winner.send(amountwon*95/100);
    |              theWinningReferral = referral[winner];
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(138)

[31mViolation[0m for DAOConstantGas in contract 'Jackpot':
    |              amounRefferalWon = (amountwon*5)/100;
    |              referral[winner].send(amounRefferalWon);
  > |              winner.send(amountwon*95/100);
    |              theWinningReferral = referral[winner];
    |          }
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(139)

[33mWarning[0m for DAOConstantGas in contract 'Jackpot':
    |          }
    |          else{
  > |              if (!winner.send(amountwon)) throw;
    |          }
    |          newWinner(winner, randomNumber);
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(143)

[33mWarning[0m for LockedEther in contract 'Jackpot':
    |}
    |
  > |contract Jackpot is Ownable {
    |
    |  string public constant name = "Jackpot NOW";
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(65)

[31mViolation[0m for TODAmount in contract 'Jackpot':
    |          amountwon = (balance*80)/100;
    |          TheWinner = winner;
  > |          if (!owner.send(balance/10)) throw;
    |          if(referral[winner] != 0x0000000000000000000000000000000000000000){
    |              amounRefferalWon = (amountwon*5)/100;
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(135)

[31mViolation[0m for TODAmount in contract 'Jackpot':
    |          if(referral[winner] != 0x0000000000000000000000000000000000000000){
    |              amounRefferalWon = (amountwon*5)/100;
  > |              referral[winner].send(amounRefferalWon);
    |              winner.send(amountwon*95/100);
    |              theWinningReferral = referral[winner];
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(138)

[31mViolation[0m for TODAmount in contract 'Jackpot':
    |              amounRefferalWon = (amountwon*5)/100;
    |              referral[winner].send(amounRefferalWon);
  > |              winner.send(amountwon*95/100);
    |              theWinningReferral = referral[winner];
    |          }
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(139)

[31mViolation[0m for TODAmount in contract 'Jackpot':
    |          }
    |          else{
  > |              if (!winner.send(amountwon)) throw;
    |          }
    |          newWinner(winner, randomNumber);
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(143)

[31mViolation[0m for TODReceiver in contract 'Jackpot':
    |          amountwon = (balance*80)/100;
    |          TheWinner = winner;
  > |          if (!owner.send(balance/10)) throw;
    |          if(referral[winner] != 0x0000000000000000000000000000000000000000){
    |              amounRefferalWon = (amountwon*5)/100;
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(135)

[31mViolation[0m for UnhandledException in contract 'Jackpot':
    |          if(referral[winner] != 0x0000000000000000000000000000000000000000){
    |              amounRefferalWon = (amountwon*5)/100;
  > |              referral[winner].send(amounRefferalWon);
    |              winner.send(amountwon*95/100);
    |              theWinningReferral = referral[winner];
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(138)

[31mViolation[0m for UnhandledException in contract 'Jackpot':
    |              amounRefferalWon = (amountwon*5)/100;
    |              referral[winner].send(amounRefferalWon);
  > |              winner.send(amountwon*95/100);
    |              theWinningReferral = referral[winner];
    |          }
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(139)

[33mWarning[0m for UnhandledException in contract 'Jackpot':
    |          amountwon = (balance*80)/100;
    |          TheWinner = winner;
  > |          if (!owner.send(balance/10)) throw;
    |          if(referral[winner] != 0x0000000000000000000000000000000000000000){
    |              amounRefferalWon = (amountwon*5)/100;
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(135)

[33mWarning[0m for UnhandledException in contract 'Jackpot':
    |          }
    |          else{
  > |              if (!winner.send(amountwon)) throw;
    |          }
    |          newWinner(winner, randomNumber);
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |
    |/**''''''
  > | *  ====    ;
    | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |      
    |        if (playersSignedUp > playersRequired-1) {
  > |          randomNumber = uint(blockhash(block.number-1))%lastTicketNumber + 1;
    |          address  winner;
    |          bool hasWon;
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    }
    |    if (!isSenderAdded) {
  > |      players[playersSignedUp] = msg.sender;
    |      playersSignedUp++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    if (!isSenderAdded) {
    |      players[playersSignedUp] = msg.sender;
  > |      playersSignedUp++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    uint256 numberOfTickets = (weiAmount/priceOfTicket);
    |    senderTickets.endTicket = lastTicketNumber.add(numberOfTickets);
  > |    lastTicketNumber = lastTicketNumber.add(numberOfTickets);
    |    ticketsMap[msg.sender].push(senderTickets);
    |
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    senderTickets.endTicket = lastTicketNumber.add(numberOfTickets);
    |    lastTicketNumber = lastTicketNumber.add(numberOfTickets);
  > |    ticketsMap[msg.sender].push(senderTickets);
    |
    |    contributions[msg.sender] = contributions[msg.sender].add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    ticketsMap[msg.sender].push(senderTickets);
    |
  > |    contributions[msg.sender] = contributions[msg.sender].add(weiAmount);
    |
    |    newContribution(msg.sender, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    }
    |    if (!isSenderAdded) {
  > |      players[playersSignedUp] = msg.sender;
    |      referral[msg.sender] = refer;
    |      playersSignedUp++;
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    if (!isSenderAdded) {
    |      players[playersSignedUp] = msg.sender;
  > |      referral[msg.sender] = refer;
    |      playersSignedUp++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |      players[playersSignedUp] = msg.sender;
    |      referral[msg.sender] = refer;
  > |      playersSignedUp++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    uint256 numberOfTickets = (weiAmount/priceOfTicket);
    |    senderTickets.endTicket = lastTicketNumber.add(numberOfTickets);
  > |    lastTicketNumber = lastTicketNumber.add(numberOfTickets);
    |    ticketsMap[msg.sender].push(senderTickets);
    |
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    senderTickets.endTicket = lastTicketNumber.add(numberOfTickets);
    |    lastTicketNumber = lastTicketNumber.add(numberOfTickets);
  > |    ticketsMap[msg.sender].push(senderTickets);
    |
    |    contributions[msg.sender] = contributions[msg.sender].add(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    ticketsMap[msg.sender].push(senderTickets);
    |
  > |    contributions[msg.sender] = contributions[msg.sender].add(weiAmount);
    |
    |    newContribution(msg.sender, weiAmount);
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |  mapping (address => uint256) public contributions;
    |  function updateFileds(uint256 _playersRequired, uint256 _priceOfTicket) onlyOwner{
  > |      playersRequired = _playersRequired;
    |      priceOfTicket = _priceOfTicket;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'Jackpot':
    |  function updateFileds(uint256 _playersRequired, uint256 _priceOfTicket) onlyOwner{
    |      playersRequired = _playersRequired;
  > |      priceOfTicket = _priceOfTicket;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(98)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    | 
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(61)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x375ae5615279a524bd8cf092579cc738da9b0f38.sol(8)


