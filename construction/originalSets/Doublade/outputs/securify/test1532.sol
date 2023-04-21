Processing contract: /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol:EtherTower
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'EtherTower':
    |    */
    |  function sendFunds(address _recipient, uint256 _amount) private {
  > |    if (!_recipient.send(_amount)) {
    |      earnings[_recipient] = earnings[_recipient].add(_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(210)

[33mWarning[0m for DAOConstantGas in contract 'EtherTower':
    |    uint256 amount = earnings[msg.sender];
    |    earnings[msg.sender] = 0;
  > |    msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(167)

[33mWarning[0m for LockedEther in contract 'EtherTower':
    |pragma solidity ^0.4.18;
    |
  > |contract EtherTower {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(3)

[33mWarning[0m for TODAmount in contract 'EtherTower':
    |    */
    |  function sendFunds(address _recipient, uint256 _amount) private {
  > |    if (!_recipient.send(_amount)) {
    |      earnings[_recipient] = earnings[_recipient].add(_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(210)

[33mWarning[0m for TODReceiver in contract 'EtherTower':
    |    uint256 amount = earnings[msg.sender];
    |    earnings[msg.sender] = 0;
  > |    msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(167)

[33mWarning[0m for TODReceiver in contract 'EtherTower':
    |    */
    |  function sendFunds(address _recipient, uint256 _amount) private {
  > |    if (!_recipient.send(_amount)) {
    |      earnings[_recipient] = earnings[_recipient].add(_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(210)

[33mWarning[0m for UnhandledException in contract 'EtherTower':
    |    uint256 amount = earnings[msg.sender];
    |    earnings[msg.sender] = 0;
  > |    msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(167)

[33mWarning[0m for UnhandledException in contract 'EtherTower':
    |    */
    |  function sendFunds(address _recipient, uint256 _amount) private {
  > |    if (!_recipient.send(_amount)) {
    |      earnings[_recipient] = earnings[_recipient].add(_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherTower':
    |    */
    |  function sendFunds(address _recipient, uint256 _amount) private {
  > |    if (!_recipient.send(_amount)) {
    |      earnings[_recipient] = earnings[_recipient].add(_amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherTower':
    |    });
    |
  > |    tokens[_tokenId] = token;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherTower':
    |
    |  function setGameStartTime(uint256 _gameStartTime) public onlyOwner {
  > |    gameStartTime = _gameStartTime;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherTower':
    |    // Update token
    |    uint256 oldPrice = token.price;
  > |    token.owner = newOwner;
    |    token.price = getNextPrice(token.price);
    |
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherTower':
    |    uint256 oldPrice = token.price;
    |    token.owner = newOwner;
  > |    token.price = getNextPrice(token.price);
    |
    |    // send funds to the dev
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherTower':
    |
    |    // send funds to the dev
  > |    earnings[owner] = earnings[owner].add(devCut);
    |
    |    // send funds to the big boss
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherTower':
    |
    |    // send funds to the big boss
  > |    earnings[tokens[TOWER_BOSS_TOKEN_ID].owner] = earnings[tokens[TOWER_BOSS_TOKEN_ID].owner].add(towerBossCut);
    |
    |    // send funds to the manager (if applicable)
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherTower':
    |    if (managerCut > 0) {
    |      address managerAddress = getManagerAddress(_tokenId);
  > |      earnings[managerAddress] = earnings[managerAddress].add(managerCut);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherTower':
    |  function withdrawEarnings() public {
    |    uint256 amount = earnings[msg.sender];
  > |    earnings[msg.sender] = 0;
    |    msg.sender.transfer(amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherTower':
    |  function sendFunds(address _recipient, uint256 _amount) private {
    |    if (!_recipient.send(_amount)) {
  > |      earnings[_recipient] = earnings[_recipient].add(_amount);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(211)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x619033e18db36578b77700b1c510ede0cd91d163.sol(216)


