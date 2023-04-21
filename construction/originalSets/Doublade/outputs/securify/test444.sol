Processing contract: /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol:Campaign
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol:CampaignFactory
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Campaign':
    |    // msg.sender.transfer(amount);
    |    receiversWidthdraw[msg.sender] = true;
  > |    msg.sender.transfer(receiversMap[msg.sender]);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(187)

[33mWarning[0m for LockedEther in contract 'Campaign':
    |}
    |
  > |contract Campaign {
    |  enum CampaignState {
    |    READY, OPEN, CLOSED
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(34)

[33mWarning[0m for TODReceiver in contract 'Campaign':
    |    // msg.sender.transfer(amount);
    |    receiversWidthdraw[msg.sender] = true;
  > |    msg.sender.transfer(receiversMap[msg.sender]);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(187)

[33mWarning[0m for UnhandledException in contract 'Campaign':
    |    // msg.sender.transfer(amount);
    |    receiversWidthdraw[msg.sender] = true;
  > |    msg.sender.transfer(receiversMap[msg.sender]);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(187)

[31mViolation[0m for UnrestrictedWrite in contract 'Campaign':
    |pragma solidity ^0.4.24;
    |
  > |contract CampaignFactory {
    |  modifier onlyOwner() {
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Campaign':
    |    if( msg.value > 0 ){
    |      require(state == CampaignState.OPEN);
  > |      donatorsArr.push(msg.sender);
    |      donators[msg.sender] += msg.value;
    |      currentAmount += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'Campaign':
    |      donatorsArr.push(msg.sender);
    |      donators[msg.sender] += msg.value;
  > |      currentAmount += msg.value;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'Campaign':
    |
    |    require(msg.value > 0);
  > |    donatorsArr.push(msg.sender);
    |    donators[msg.sender] += msg.value;
    |    currentAmount += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'Campaign':
    |    donatorsArr.push(msg.sender);
    |    donators[msg.sender] += msg.value;
  > |    currentAmount += msg.value;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'Campaign':
    |      require(state == CampaignState.OPEN);
    |      donatorsArr.push(msg.sender);
  > |      donators[msg.sender] += msg.value;
    |      currentAmount += msg.value;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Campaign':
    |    require(msg.value > 0);
    |    donatorsArr.push(msg.sender);
  > |    donators[msg.sender] += msg.value;
    |    currentAmount += msg.value;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'Campaign':
    |    // delete receiversMap[msg.sender];
    |    // msg.sender.transfer(amount);
  > |    receiversWidthdraw[msg.sender] = true;
    |    msg.sender.transfer(receiversMap[msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'Campaign':
    |pragma solidity ^0.4.24;
    |
  > |contract CampaignFactory {
    |  modifier onlyOwner() {
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Campaign':
    |    require(state == CampaignState.READY);
    |    require(_requiredAmount > 0 && receiversMap[_receiver] <= 0);
  > |    receiversArr.push(_receiver);
    |    receiversMap[_receiver] = _requiredAmount;
    |    targetAmount += _requiredAmount;
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Campaign':
    |    require(_requiredAmount > 0 && receiversMap[_receiver] <= 0);
    |    receiversArr.push(_receiver);
  > |    receiversMap[_receiver] = _requiredAmount;
    |    targetAmount += _requiredAmount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Campaign':
    |    receiversArr.push(_receiver);
    |    receiversMap[_receiver] = _requiredAmount;
  > |    targetAmount += _requiredAmount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Campaign':
    |    require(state == CampaignState.READY);
    |    require(_requiredAmount > 0 && receiversMap[_receiver] > 0);
  > |    targetAmount = targetAmount - receiversMap[_receiver] + _requiredAmount;
    |    receiversMap[_receiver] = _requiredAmount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'Campaign':
    |    require(_requiredAmount > 0 && receiversMap[_receiver] > 0);
    |    targetAmount = targetAmount - receiversMap[_receiver] + _requiredAmount;
  > |    receiversMap[_receiver] = _requiredAmount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'Campaign':
    |  function extendDuration(uint _newDuration) onlyOwner public {
    |    require(duration < _newDuration);
  > |    duration = _newDuration;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'Campaign':
    |    // require(state != _state && state < _state);
    |    require(state != _state);
  > |    state = _state;
    |  }
    |  // function changeState(uint _state) internal {
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(168)

[33mWarning[0m for LockedEther in contract 'CampaignFactory':
    |pragma solidity ^0.4.24;
    |
  > |contract CampaignFactory {
    |  modifier onlyOwner() {
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'CampaignFactory':
    |pragma solidity ^0.4.24;
    |
  > |contract CampaignFactory {
    |  modifier onlyOwner() {
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'CampaignFactory':
    |    );
    |
  > |    campaigns.push(newCampaign);
    |    return newCampaign;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1c90f61194fc2ee3e6eff549a63d9b8d8c5dc152.sol(24)


