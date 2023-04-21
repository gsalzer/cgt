Processing contract: /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol:DiceLuck100
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol:Ownable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'DiceLuck100':
    |  function cashOut() onlyOwner public{
    |    require(OWNER_AMOUNT > 0, 'invalid OWNER_AMOUNT');
  > |    owner.send(OWNER_AMOUNT);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(105)

[33mWarning[0m for DAOConstantGas in contract 'DiceLuck100':
    |    
    |    function withdraw() onlyOwner public{
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(304)

[33mWarning[0m for LockedEther in contract 'DiceLuck100':
    | */
    |
  > |contract DiceLuck100 is Ownable{
    |    event betEvent(uint256 indexed gameIdx, uint256 betIdx, address addr, uint256 betBlockNumber, uint256 betMask, uint256 amount);
    |    event openEvent(uint256 indexed gameIdx, uint256 openBlockNumber, uint256 openNumber, bytes32 txhash, uint256 winNum);
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(148)

[31mViolation[0m for TODAmount in contract 'DiceLuck100':
    |  function cashOut() onlyOwner public{
    |    require(OWNER_AMOUNT > 0, 'invalid OWNER_AMOUNT');
  > |    owner.send(OWNER_AMOUNT);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(105)

[31mViolation[0m for TODAmount in contract 'DiceLuck100':
    |    
    |    function withdraw() onlyOwner public{
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(304)

[31mViolation[0m for TODReceiver in contract 'DiceLuck100':
    |  function cashOut() onlyOwner public{
    |    require(OWNER_AMOUNT > 0, 'invalid OWNER_AMOUNT');
  > |    owner.send(OWNER_AMOUNT);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(105)

[33mWarning[0m for TODReceiver in contract 'DiceLuck100':
    |    
    |    function withdraw() onlyOwner public{
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(304)

[31mViolation[0m for UnhandledException in contract 'DiceLuck100':
    |  function cashOut() onlyOwner public{
    |    require(OWNER_AMOUNT > 0, 'invalid OWNER_AMOUNT');
  > |    owner.send(OWNER_AMOUNT);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(105)

[31mViolation[0m for UnhandledException in contract 'DiceLuck100':
    |            if(t > 0){
    |                game.bets[i].isWin = true;
  > |                (game.bets[i].addr).send(game.bets[i].winAmount);
    |                winNum++;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(261)

[33mWarning[0m for UnhandledException in contract 'DiceLuck100':
    |    
    |    function withdraw() onlyOwner public{
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(304)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiceLuck100':
    |  function cashOut() onlyOwner public{
    |    require(OWNER_AMOUNT > 0, 'invalid OWNER_AMOUNT');
  > |    owner.send(OWNER_AMOUNT);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiceLuck100':
    |    
    |    function withdraw() onlyOwner public{
  > |        msg.sender.transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(304)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |          fe = OWNER_MIN;
    |      }
  > |      OWNER_AMOUNT += fe;
    |      return fe;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    | */
    |
  > |contract DiceLuck100 is Ownable{
    |    event betEvent(uint256 indexed gameIdx, uint256 betIdx, address addr, uint256 betBlockNumber, uint256 betMask, uint256 amount);
    |    event openEvent(uint256 indexed gameIdx, uint256 openBlockNumber, uint256 openNumber, bytes32 txhash, uint256 winNum);
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |        uint256 fee = _fee();
    |        uint256 winAmount = (msg.value-fee)*ODDS[diceNum]/100;
  > |        lockedIn += winAmount;
    |        uint256 gameIdx = (block.number-firstBN-1)/N;
    |        if(gameList[gameIdx].openBlockNumber == 0){
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(208)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |        uint256 gameIdx = (block.number-firstBN-1)/N;
    |        if(gameList[gameIdx].openBlockNumber == 0){
  > |            gameList[gameIdx] = _eg;
    |            gameList[gameIdx].openBlockNumber = firstBN + (gameIdx+1)*N;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |        if(gameList[gameIdx].openBlockNumber == 0){
    |            gameList[gameIdx] = _eg;
  > |            gameList[gameIdx].openBlockNumber = firstBN + (gameIdx+1)*N;
    |        }
    |        gameList[gameIdx].locked += winAmount;
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |            gameList[gameIdx].openBlockNumber = firstBN + (gameIdx+1)*N;
    |        }
  > |        gameList[gameIdx].locked += winAmount;
    |        gameList[gameIdx].bets.push(Bet({
    |            addr:msg.sender,
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |        }
    |        gameList[gameIdx].locked += winAmount;
  > |        gameList[gameIdx].bets.push(Bet({
    |            addr:msg.sender,
    |            betBlockNumber:block.number,
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(215)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |        uint256 r = uint256(openHash) % M;
    |        uint256 R = 2**r;
  > |        game.openNumber = r+1;
    |        game.txhash = txhash;
    |        game.openHash = openHash;
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(252)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |        uint256 R = 2**r;
    |        game.openNumber = r+1;
  > |        game.txhash = txhash;
    |        game.openHash = openHash;
    |        uint256 t = 0;
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |        game.openNumber = r+1;
    |        game.txhash = txhash;
  > |        game.openHash = openHash;
    |        uint256 t = 0;
    |        uint256 winNum = 0;
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(254)

[31mViolation[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |            t = game.bets[i].betMask & R;
    |            if(t > 0){
  > |                game.bets[i].isWin = true;
    |                (game.bets[i].addr).send(game.bets[i].winAmount);
    |                winNum++;
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |  function setAdmin(address addr) onlyOwner public{
    |      require(addr != address(0), 'invalid addr');
  > |      admin = addr;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |  
    |  function setOwnerPercent(uint256 percent) onlyOwner public{
  > |      OWNER_PERCENT = percent;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |  
    |  function setOwnerMin(uint256 min) onlyOwner public{
  > |      OWNER_MIN = min;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |    function setN(uint8 n) onlyOwner public{
    |        uint256 gameIdx = (block.number-firstBN-1)/N;
  > |        firstBN = firstBN + (gameIdx+1)*N;
    |        N = n;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |        uint256 gameIdx = (block.number-firstBN-1)/N;
    |        firstBN = firstBN + (gameIdx+1)*N;
  > |        N = n;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'DiceLuck100':
    |        uint256 openBN = firstBN + (gameIdx+1)*N;
    |        require(openBN==game.openBlockNumber && game.openNumber==0 && betNum==txNum, 'invalid bet');
  > |        lockedIn -= game.locked;
    |        bytes32 openHash = keccak256(abi.encodePacked(txhash, openBlockHash));
    |        uint256 r = uint256(openHash) % M;
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(248)

[33mWarning[0m for DAOConstantGas in contract 'Ownable':
    |  function cashOut() onlyOwner public{
    |    require(OWNER_AMOUNT > 0, 'invalid OWNER_AMOUNT');
  > |    owner.send(OWNER_AMOUNT);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(105)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  address public admin;
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(8)

[33mWarning[0m for TODAmount in contract 'Ownable':
    |  function cashOut() onlyOwner public{
    |    require(OWNER_AMOUNT > 0, 'invalid OWNER_AMOUNT');
  > |    owner.send(OWNER_AMOUNT);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(105)

[31mViolation[0m for TODReceiver in contract 'Ownable':
    |  function cashOut() onlyOwner public{
    |    require(OWNER_AMOUNT > 0, 'invalid OWNER_AMOUNT');
  > |    owner.send(OWNER_AMOUNT);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(105)

[31mViolation[0m for UnhandledException in contract 'Ownable':
    |  function cashOut() onlyOwner public{
    |    require(OWNER_AMOUNT > 0, 'invalid OWNER_AMOUNT');
  > |    owner.send(OWNER_AMOUNT);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ownable':
    |  function cashOut() onlyOwner public{
    |    require(OWNER_AMOUNT > 0, 'invalid OWNER_AMOUNT');
  > |    owner.send(OWNER_AMOUNT);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function setAdmin(address addr) onlyOwner public{
    |      require(addr != address(0), 'invalid addr');
  > |      admin = addr;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  
    |  function setOwnerPercent(uint256 percent) onlyOwner public{
  > |      OWNER_PERCENT = percent;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  
    |  function setOwnerMin(uint256 min) onlyOwner public{
  > |      OWNER_MIN = min;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa093e7943b942eb82f0a24ee3022aaf8217fe527.sol(91)


