Processing contract: /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol:Capricornus_ZodiacToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'Capricornus_ZodiacToken':
    |        if (msg.value < 1 finney * MINfinney) { return; }
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(175)

[33mWarning[0m for DAOConstantGas in contract 'Capricornus_ZodiacToken':
    |    function withdraw() public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(189)

[33mWarning[0m for LockedEther in contract 'Capricornus_ZodiacToken':
    |}
    |
  > |contract Capricornus_ZodiacToken {
    |    address owner = msg.sender;
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(33)

[31mViolation[0m for TODAmount in contract 'Capricornus_ZodiacToken':
    |    function withdraw() public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(189)

[31mViolation[0m for TODReceiver in contract 'Capricornus_ZodiacToken':
    |        if (msg.value < 1 finney * MINfinney) { return; }
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(175)

[31mViolation[0m for TODReceiver in contract 'Capricornus_ZodiacToken':
    |    function withdraw() public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(189)

[33mWarning[0m for UnhandledException in contract 'Capricornus_ZodiacToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(146)

[33mWarning[0m for UnhandledException in contract 'Capricornus_ZodiacToken':
    |
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(147)

[33mWarning[0m for UnhandledException in contract 'Capricornus_ZodiacToken':
    |        if (msg.value < 1 finney * MINfinney) { return; }
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(175)

[33mWarning[0m for UnhandledException in contract 'Capricornus_ZodiacToken':
    |    function withdraw() public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Capricornus_ZodiacToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Capricornus_ZodiacToken':
    |
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |
    |        owner.transfer(msg.value);
  > |        totalContribution += msg.value;
    |
    |        uint256 tokensIssued = (msg.value / 1e10) * ICORatio + AIRDROPBounce * 1e8;
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |
    |
  > |        totalSupply += tokensIssued;
    |        balances[msg.sender] += tokensIssued;
    |        
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |
    |        balances[msg.sender] -= num * 1e8;
  > |        totalSupply -= num * 1e8;
    |        Burnt(msg.sender, num * 1e8, totalSupply);
    |        Transfer(msg.sender, 0x0, num * 1e8);
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |        
    |        if (sufficientFunds && !overflowed) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |            balances[_from] -= _value;
    |            
  > |            allowed[_from][msg.sender] -= _value;
    |            
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
    |        
  > |        allowed[msg.sender][_spender] = _value;
    |        
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |
    |        totalSupply += tokensIssued;
  > |        balances[msg.sender] += tokensIssued;
    |        
    |        Transfer(address(this), msg.sender, tokensIssued);
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |        uint pre_balance = balances[msg.sender];
    |
  > |        balances[msg.sender] -= num * 1e8;
    |        totalSupply -= num * 1e8;
    |        Burnt(msg.sender, num * 1e8, totalSupply);
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |        if (msg.sender != owner) { throw; }
    |
  > |        purchasingAllowed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |        if (msg.sender != owner) { throw; }
    |
  > |        purchasingAllowed = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |    function setAIRDROPBounce(uint _newPrice)  {
    |        if (msg.sender != owner) { throw; }
  > |        AIRDROPBounce = _newPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |    function setICORatio(uint _newPrice)  {
    |        if (msg.sender != owner) { throw; }
  > |        ICORatio = _newPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'Capricornus_ZodiacToken':
    |    function setMINfinney(uint _newPrice)  {
    |        if (msg.sender != owner) { throw; }
  > |        MINfinney = _newPrice;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(166)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x97244c7640c8a7d525e056e1b020204d9e0742c6.sol(4)


