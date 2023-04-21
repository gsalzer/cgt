Processing contract: /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol:Presale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |    // only allow transfers if minimum goal is met
    |    require(totalRaised >= minGoal);
  > |    if(!projectWallet.send(this.balance)) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(62)

[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |    // after refunding, zero out balance
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(79)

[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |    // only allow transfer if there is remaining balance
    |    require(this.balance > 0);
  > |    projectWallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(89)

[33mWarning[0m for LockedEther in contract 'Presale':
    |}
    |
  > |contract Presale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(34)

[31mViolation[0m for TODAmount in contract 'Presale':
    |    // only allow transfers if minimum goal is met
    |    require(totalRaised >= minGoal);
  > |    if(!projectWallet.send(this.balance)) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(62)

[31mViolation[0m for TODAmount in contract 'Presale':
    |    // only allow transfer if there is remaining balance
    |    require(this.balance > 0);
  > |    projectWallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(89)

[33mWarning[0m for TODReceiver in contract 'Presale':
    |    // only allow transfers if minimum goal is met
    |    require(totalRaised >= minGoal);
  > |    if(!projectWallet.send(this.balance)) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(62)

[33mWarning[0m for TODReceiver in contract 'Presale':
    |    // after refunding, zero out balance
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(79)

[33mWarning[0m for TODReceiver in contract 'Presale':
    |    // only allow transfer if there is remaining balance
    |    require(this.balance > 0);
  > |    projectWallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(89)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    // only allow transfers if minimum goal is met
    |    require(totalRaised >= minGoal);
  > |    if(!projectWallet.send(this.balance)) {
    |      revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(62)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    // after refunding, zero out balance
    |    balances[msg.sender] = 0;
  > |    msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(79)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    // only allow transfer if there is remaining balance
    |    require(this.balance > 0);
  > |    projectWallet.transfer(this.balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(amount > 0);
    |    // after refunding, zero out balance
  > |    balances[msg.sender] = 0;
    |    msg.sender.transfer(amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(now <= endTime);
    |    // if all checks pass, then add amount to balance of the sender
  > |    balances[msg.sender] = balances[msg.sender].add(msg.value);
    |    totalRaised = totalRaised.add(msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(100)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x64a7f6e31224d9f0a27d4b7470c77144c4ac31a4.sol(8)


