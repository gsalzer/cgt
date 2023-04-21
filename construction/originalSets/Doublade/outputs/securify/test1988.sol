Processing contract: /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol:BountyHunter
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'BountyHunter':
    |
    |  function payoutOnPurchase(address previousHunterOwner, uint256 hunterPrice) private {
  > |    previousHunterOwner.transfer(hunterPrice);
    |  }
    |  function transactionFee(address, uint256 hunterPrice) private {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(87)

[31mViolation[0m for DAOConstantGas in contract 'BountyHunter':
    |  }
    |  function transactionFee(address, uint256 hunterPrice) private {
  > |    contractAddress.transfer(hunterPrice);
    |  }
    |  function createBounty(uint256 hunterPrice) private {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(90)

[31mViolation[0m for DAOConstantGas in contract 'BountyHunter':
    |  }
    |  function createBounty(uint256 hunterPrice) private {
  > |    this.transfer(hunterPrice);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(93)

[33mWarning[0m for DAOConstantGas in contract 'BountyHunter':
    |
    |  function payoutOnPurchase(address previousHunterOwner, uint256 hunterPrice) private {
  > |    previousHunterOwner.transfer(hunterPrice);
    |  }
    |  function transactionFee(address, uint256 hunterPrice) private {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(87)

[33mWarning[0m for DAOConstantGas in contract 'BountyHunter':
    |  }
    |  function transactionFee(address, uint256 hunterPrice) private {
  > |    contractAddress.transfer(hunterPrice);
    |  }
    |  function createBounty(uint256 hunterPrice) private {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(90)

[33mWarning[0m for DAOConstantGas in contract 'BountyHunter':
    |  }
    |  function createBounty(uint256 hunterPrice) private {
  > |    this.transfer(hunterPrice);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(93)

[33mWarning[0m for DAOConstantGas in contract 'BountyHunter':
    |        data[killshot].hunterPrice  = 5000000000000000;
    |        data[killshot].user  = contractAddress;
  > |        contractAddress.transfer((this.balance / 100) * (10));
    |        msg.sender.transfer(this.balance);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(211)

[33mWarning[0m for DAOConstantGas in contract 'BountyHunter':
    |        data[killshot].user  = contractAddress;
    |        contractAddress.transfer((this.balance / 100) * (10));
  > |        msg.sender.transfer(this.balance);
    |      }
    |      else {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(212)

[33mWarning[0m for LockedEther in contract 'BountyHunter':
    |
    |
  > |contract BountyHunter {
    |
    |  function() public payable { }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |  function() public payable { }
    |
  > |  string public constant NAME = "BountyHunter";
    |  string public constant SYMBOL = "BountyHunter";
    |  address contractAddress = 0xc10A6AedE9564efcDC5E842772313f0669D79497;
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |
    |  string public constant NAME = "BountyHunter";
  > |  string public constant SYMBOL = "BountyHunter";
    |  address contractAddress = 0xc10A6AedE9564efcDC5E842772313f0669D79497;
    |  address hunter;
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |
    |
  > |  function payoutOnPurchase(address previousHunterOwner, uint256 hunterPrice) private {
    |    previousHunterOwner.transfer(hunterPrice);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |    previousHunterOwner.transfer(hunterPrice);
    |  }
  > |  function transactionFee(address, uint256 hunterPrice) private {
    |    contractAddress.transfer(hunterPrice);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |    contractAddress.transfer(hunterPrice);
    |  }
  > |  function createBounty(uint256 hunterPrice) private {
    |    this.transfer(hunterPrice);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |
    |  
  > |  function hireBountyHunter(uint bountyHunterID) public payable returns (uint, uint) {
    |    require(bountyHunterID >= 0 && bountyHunterID <= 8);
    |    
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |  }
    |
  > |  function purchaseMysteriousEmblem() public payable returns (address, uint) {
    |    require(msg.value >= emblemPrice);
    |    emblemOwner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |  }
    |
  > |  function getEmblemOwner() public view returns (address) {
    |    return emblemOwner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |
    |
  > |  function getUsers() public view returns (address[], uint256[]) {
    |    address[] memory users = new address[](8);
    |    uint256[] memory hunterPrices =  new uint256[](8);
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |  }
    |
  > |  function rand(uint max) public returns (uint256){
    |        
    |    uint256 lastBlockNumber = block.number - 1;
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |
    |
  > |  function playerKiller() private {
    |    if (msg.sender == emblemOwner){
    |      x = 24;
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |}
    |
  > |  function mayjaKill() public payable returns(uint256){
    |    if(msg.value >= 20000000000000000){
    |        for(uint256 i=0; i<8; i++){
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(221)

[33mWarning[0m for MissingInputValidation in contract 'BountyHunter':
    |  }
    |
  > |  function killFeed() public view returns(address, address){
    |    return(hunter, hunted);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(230)

[31mViolation[0m for TODAmount in contract 'BountyHunter':
    |        data[killshot].hunterPrice  = 5000000000000000;
    |        data[killshot].user  = contractAddress;
  > |        contractAddress.transfer((this.balance / 100) * (10));
    |        msg.sender.transfer(this.balance);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(211)

[31mViolation[0m for TODAmount in contract 'BountyHunter':
    |        data[killshot].user  = contractAddress;
    |        contractAddress.transfer((this.balance / 100) * (10));
  > |        msg.sender.transfer(this.balance);
    |      }
    |      else {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(212)

[33mWarning[0m for TODAmount in contract 'BountyHunter':
    |
    |  function payoutOnPurchase(address previousHunterOwner, uint256 hunterPrice) private {
  > |    previousHunterOwner.transfer(hunterPrice);
    |  }
    |  function transactionFee(address, uint256 hunterPrice) private {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(87)

[33mWarning[0m for TODAmount in contract 'BountyHunter':
    |  }
    |  function transactionFee(address, uint256 hunterPrice) private {
  > |    contractAddress.transfer(hunterPrice);
    |  }
    |  function createBounty(uint256 hunterPrice) private {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(90)

[33mWarning[0m for TODAmount in contract 'BountyHunter':
    |  }
    |  function createBounty(uint256 hunterPrice) private {
  > |    this.transfer(hunterPrice);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(93)

[33mWarning[0m for TODReceiver in contract 'BountyHunter':
    |
    |  function payoutOnPurchase(address previousHunterOwner, uint256 hunterPrice) private {
  > |    previousHunterOwner.transfer(hunterPrice);
    |  }
    |  function transactionFee(address, uint256 hunterPrice) private {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(87)

[33mWarning[0m for TODReceiver in contract 'BountyHunter':
    |  }
    |  function createBounty(uint256 hunterPrice) private {
  > |    this.transfer(hunterPrice);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(93)

[33mWarning[0m for TODReceiver in contract 'BountyHunter':
    |        data[killshot].user  = contractAddress;
    |        contractAddress.transfer((this.balance / 100) * (10));
  > |        msg.sender.transfer(this.balance);
    |      }
    |      else {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(212)

[33mWarning[0m for UnhandledException in contract 'BountyHunter':
    |
    |  function payoutOnPurchase(address previousHunterOwner, uint256 hunterPrice) private {
  > |    previousHunterOwner.transfer(hunterPrice);
    |  }
    |  function transactionFee(address, uint256 hunterPrice) private {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(87)

[33mWarning[0m for UnhandledException in contract 'BountyHunter':
    |  }
    |  function transactionFee(address, uint256 hunterPrice) private {
  > |    contractAddress.transfer(hunterPrice);
    |  }
    |  function createBounty(uint256 hunterPrice) private {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(90)

[33mWarning[0m for UnhandledException in contract 'BountyHunter':
    |  }
    |  function createBounty(uint256 hunterPrice) private {
  > |    this.transfer(hunterPrice);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(93)

[33mWarning[0m for UnhandledException in contract 'BountyHunter':
    |        data[killshot].hunterPrice  = 5000000000000000;
    |        data[killshot].user  = contractAddress;
  > |        contractAddress.transfer((this.balance / 100) * (10));
    |        msg.sender.transfer(this.balance);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(211)

[33mWarning[0m for UnhandledException in contract 'BountyHunter':
    |        data[killshot].user  = contractAddress;
    |        contractAddress.transfer((this.balance / 100) * (10));
  > |        msg.sender.transfer(this.balance);
    |      }
    |      else {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(212)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'BountyHunter':
    |
    |  function payoutOnPurchase(address previousHunterOwner, uint256 hunterPrice) private {
  > |    previousHunterOwner.transfer(hunterPrice);
    |  }
    |  function transactionFee(address, uint256 hunterPrice) private {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(87)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'BountyHunter':
    |  }
    |  function transactionFee(address, uint256 hunterPrice) private {
  > |    contractAddress.transfer(hunterPrice);
    |  }
    |  function createBounty(uint256 hunterPrice) private {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(90)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'BountyHunter':
    |  }
    |  function createBounty(uint256 hunterPrice) private {
  > |    this.transfer(hunterPrice);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BountyHunter':
    |        data[killshot].hunterPrice  = 5000000000000000;
    |        data[killshot].user  = contractAddress;
  > |        contractAddress.transfer((this.balance / 100) * (10));
    |        msg.sender.transfer(this.balance);
    |      }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(211)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BountyHunter':
    |        data[killshot].user  = contractAddress;
    |        contractAddress.transfer((this.balance / 100) * (10));
  > |        msg.sender.transfer(this.balance);
    |      }
    |      else {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |    
    |    if ( data[bountyHunterID].hunterPrice == 5000000000000000 ) {
  > |      data[bountyHunterID].hunterPrice = 10000000000000000;
    |    }
    |    else { 
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |    }
    |    else { 
  > |      data[bountyHunterID].hunterPrice = data[bountyHunterID].hunterPrice * 2;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |
    |    
  > |    data[bountyHunterID].user = msg.sender;
    |    
    |    playerKiller();
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |  function purchaseMysteriousEmblem() public payable returns (address, uint) {
    |    require(msg.value >= emblemPrice);
  > |    emblemOwner = msg.sender;
    |    return (emblemOwner, emblemPrice);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |    }
    |    else {
  > |      x = 31;
    |    }
    |    killshot = rand(x);
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |      x = 31;
    |    }
  > |    killshot = rand(x);
    |    if( (killshot < 8) &&  (msg.sender != data[killshot].user) ){
    |      hunter = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |      hunter = msg.sender;
    |      if( contractAddress != data[killshot].user &&  emblemOwner != data[killshot].user){
  > |        hunted = data[killshot].user;
    |            if (this.balance > 100000000000000000) {
    |              if (killshot == 0) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(173)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 0) {
    |                data[4].hunterPrice = 5000000000000000;
  > |                data[4].user = contractAddress;
    |              }
    |              if (killshot == 1){
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(177)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 1){
    |                data[5].hunterPrice = 5000000000000000;
  > |                data[5].user = 5000000000000000;
    |              }
    |              if (killshot == 2) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }
    |              if (killshot == 2) {
  > |                data[6].hunterPrice = 5000000000000000;
    |                data[6].user = contractAddress;
    |              }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(184)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 2) {
    |                data[6].hunterPrice = 5000000000000000;
  > |                data[6].user = contractAddress;
    |              }
    |              if (killshot == 3) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }
    |              if (killshot == 3) {
  > |                data[7].hunterPrice = 5000000000000000;
    |                data[7].user = contractAddress;
    |              }      
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(188)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 3) {
    |                data[7].hunterPrice = 5000000000000000;
  > |                data[7].user = contractAddress;
    |              }      
    |              if (killshot == 4) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(189)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }      
    |              if (killshot == 4) {
  > |                data[0].hunterPrice = 5000000000000000;
    |                data[0].user = contractAddress;
    |              }      
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(192)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 4) {
    |                data[0].hunterPrice = 5000000000000000;
  > |                data[0].user = contractAddress;
    |              }      
    |              if (killshot == 5) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(193)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }      
    |              if (killshot == 5) {
  > |                data[1].hunterPrice = 5000000000000000;
    |                data[1].user = contractAddress;
    |              }      
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 5) {
    |                data[1].hunterPrice = 5000000000000000;
  > |                data[1].user = contractAddress;
    |              }      
    |              if (killshot == 6) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }      
    |              if (killshot == 6) {
  > |                data[2].hunterPrice = 5000000000000000;
    |                data[2].user = contractAddress;
    |              }      
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(200)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 6) {
    |                data[2].hunterPrice = 5000000000000000;
  > |                data[2].user = contractAddress;
    |              }      
    |              if (killshot == 7) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }      
    |              if (killshot == 7) {
  > |                data[3].hunterPrice = 5000000000000000;
    |                data[3].user = contractAddress;
    |              }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(204)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 7) {
    |                data[3].hunterPrice = 5000000000000000;
  > |                data[3].user = contractAddress;
    |              }
    |
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |
    |           }
  > |        data[killshot].hunterPrice  = 5000000000000000;
    |        data[killshot].user  = contractAddress;
    |        contractAddress.transfer((this.balance / 100) * (10));
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(209)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |           }
    |        data[killshot].hunterPrice  = 5000000000000000;
  > |        data[killshot].user  = contractAddress;
    |        contractAddress.transfer((this.balance / 100) * (10));
    |        msg.sender.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(210)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |      }
    |      else {
  > |        hunted = address(0);
    |    
    |    }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(215)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |    if(msg.value >= 20000000000000000){
    |        for(uint256 i=0; i<8; i++){
  > |          data[i].user = contractAddress;
    |          data[i].hunterPrice = 5000000000000000;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'BountyHunter':
    |        for(uint256 i=0; i<8; i++){
    |          data[i].user = contractAddress;
  > |          data[i].hunterPrice = 5000000000000000;
    |        }
    |      }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |  function playerKiller() private {
    |    if (msg.sender == emblemOwner){
  > |      x = 24;
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |    }
    |    else {
  > |      x = 31;
    |    }
    |    killshot = rand(x);
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |    killshot = rand(x);
    |    if( (killshot < 8) &&  (msg.sender != data[killshot].user) ){
  > |      hunter = msg.sender;
    |      if( contractAddress != data[killshot].user &&  emblemOwner != data[killshot].user){
    |        hunted = data[killshot].user;
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |      hunter = msg.sender;
    |      if( contractAddress != data[killshot].user &&  emblemOwner != data[killshot].user){
  > |        hunted = data[killshot].user;
    |            if (this.balance > 100000000000000000) {
    |              if (killshot == 0) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |            if (this.balance > 100000000000000000) {
    |              if (killshot == 0) {
  > |                data[4].hunterPrice = 5000000000000000;
    |                data[4].user = contractAddress;
    |              }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 0) {
    |                data[4].hunterPrice = 5000000000000000;
  > |                data[4].user = contractAddress;
    |              }
    |              if (killshot == 1){
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }
    |              if (killshot == 1){
  > |                data[5].hunterPrice = 5000000000000000;
    |                data[5].user = 5000000000000000;
    |              }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 1){
    |                data[5].hunterPrice = 5000000000000000;
  > |                data[5].user = 5000000000000000;
    |              }
    |              if (killshot == 2) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }
    |              if (killshot == 2) {
  > |                data[6].hunterPrice = 5000000000000000;
    |                data[6].user = contractAddress;
    |              }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 2) {
    |                data[6].hunterPrice = 5000000000000000;
  > |                data[6].user = contractAddress;
    |              }
    |              if (killshot == 3) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }
    |              if (killshot == 3) {
  > |                data[7].hunterPrice = 5000000000000000;
    |                data[7].user = contractAddress;
    |              }      
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 3) {
    |                data[7].hunterPrice = 5000000000000000;
  > |                data[7].user = contractAddress;
    |              }      
    |              if (killshot == 4) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }      
    |              if (killshot == 4) {
  > |                data[0].hunterPrice = 5000000000000000;
    |                data[0].user = contractAddress;
    |              }      
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 4) {
    |                data[0].hunterPrice = 5000000000000000;
  > |                data[0].user = contractAddress;
    |              }      
    |              if (killshot == 5) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }      
    |              if (killshot == 5) {
  > |                data[1].hunterPrice = 5000000000000000;
    |                data[1].user = contractAddress;
    |              }      
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 5) {
    |                data[1].hunterPrice = 5000000000000000;
  > |                data[1].user = contractAddress;
    |              }      
    |              if (killshot == 6) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }      
    |              if (killshot == 6) {
  > |                data[2].hunterPrice = 5000000000000000;
    |                data[2].user = contractAddress;
    |              }      
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 6) {
    |                data[2].hunterPrice = 5000000000000000;
  > |                data[2].user = contractAddress;
    |              }      
    |              if (killshot == 7) {
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              }      
    |              if (killshot == 7) {
  > |                data[3].hunterPrice = 5000000000000000;
    |                data[3].user = contractAddress;
    |              }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |              if (killshot == 7) {
    |                data[3].hunterPrice = 5000000000000000;
  > |                data[3].user = contractAddress;
    |              }
    |
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |
    |           }
  > |        data[killshot].hunterPrice  = 5000000000000000;
    |        data[killshot].user  = contractAddress;
    |        contractAddress.transfer((this.balance / 100) * (10));
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |           }
    |        data[killshot].hunterPrice  = 5000000000000000;
  > |        data[killshot].user  = contractAddress;
    |        contractAddress.transfer((this.balance / 100) * (10));
    |        msg.sender.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |      }
    |      else {
  > |        hunted = address(0);
    |    
    |    }
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'BountyHunter':
    |      x = 31;
    |    }
  > |    killshot = rand(x);
    |    if( (killshot < 8) &&  (msg.sender != data[killshot].user) ){
    |      hunter = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(169)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x805d6f1827e35a60c4b6d63fd04281bfbc2c3823.sol(7)


