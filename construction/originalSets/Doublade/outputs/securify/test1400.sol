Processing contract: /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol:SPAM
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'SPAM':
    |        payable
    |    {
  > |        owner.transfer(this.balance);
    |        Message("Thanks for your donation.");
    |    }
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(196)

[33mWarning[0m for LockedEther in contract 'SPAM':
    |
    |
  > |contract SPAM is ERC20Interface {
    |    
    |    // Standard ERC20
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(82)

[31mViolation[0m for TODAmount in contract 'SPAM':
    |        payable
    |    {
  > |        owner.transfer(this.balance);
    |        Message("Thanks for your donation.");
    |    }
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(196)

[31mViolation[0m for TODReceiver in contract 'SPAM':
    |        payable
    |    {
  > |        owner.transfer(this.balance);
    |        Message("Thanks for your donation.");
    |    }
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(196)

[33mWarning[0m for UnhandledException in contract 'SPAM':
    |        payable
    |    {
  > |        owner.transfer(this.balance);
    |        Message("Thanks for your donation.");
    |    }
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(196)

[33mWarning[0m for UnhandledException in contract 'SPAM':
    |        returns (bool)
    |    {
  > |        return ERC20Interface(_address).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SPAM':
    |        returns (bool)
    |    {
  > |        return ERC20Interface(_address).transfer(owner, _amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'SPAM':
    |
    |
  > |contract SPAM is ERC20Interface {
    |    
    |    // Standard ERC20
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'SPAM':
    |        name = _name;
    |        symbol = _symbol;
  > |        stdBalance = _stdBalance;
    |        totalSupply = _totalSupply;
    |        SPAMed = _SPAMed;
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'SPAM':
    |        symbol = _symbol;
    |        stdBalance = _stdBalance;
  > |        totalSupply = _totalSupply;
    |        SPAMed = _SPAMed;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'SPAM':
    |        stdBalance = _stdBalance;
    |        totalSupply = _totalSupply;
  > |        SPAMed = _SPAMed;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAM':
    |        returns (bool success)
    |    {
  > |        bonus[msg.sender] = bonus[msg.sender] + 1e18;
    |        Message("+1 token for you.");
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAM':
    |        returns (bool success)
    |    {
  > |        bonus[msg.sender] = bonus[msg.sender] + 1e18;
    |        Message("+1 token for you.");
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'SPAM':
    |
    |
  > |contract SPAM is ERC20Interface {
    |    
    |    // Standard ERC20
  at /home/jiaming/mavs_srcs/contract@0x588f4ee97a2085c95420a45684a898d4b5906ba1.sol(82)


