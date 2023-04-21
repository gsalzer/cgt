Processing contract: /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol:iBurnableToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol:iERC20Token
[33mWarning[0m for DAOConstantGas in contract 'BurnableToken':
    |      tokenSupply -= _burnCount;
    |      balances[msg.sender] -= _burnCount;
  > |      msg.sender.transfer(_value);
    |      BurnEvent(msg.sender, _burnCount, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(236)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is iBurnableToken, SafeMath {
    |
    |  event PaymentEvent(address indexed from, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(95)

[33mWarning[0m for TODAmount in contract 'BurnableToken':
    |      tokenSupply -= _burnCount;
    |      balances[msg.sender] -= _burnCount;
  > |      msg.sender.transfer(_value);
    |      BurnEvent(msg.sender, _burnCount, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(236)

[33mWarning[0m for TODReceiver in contract 'BurnableToken':
    |      tokenSupply -= _burnCount;
    |      balances[msg.sender] -= _burnCount;
  > |      msg.sender.transfer(_value);
    |      BurnEvent(msg.sender, _burnCount, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(236)

[33mWarning[0m for UnhandledException in contract 'BurnableToken':
    |      tokenSupply -= _burnCount;
    |      balances[msg.sender] -= _burnCount;
  > |      msg.sender.transfer(_value);
    |      BurnEvent(msg.sender, _burnCount, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(236)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BurnableToken':
    |      tokenSupply -= _burnCount;
    |      balances[msg.sender] -= _burnCount;
  > |      msg.sender.transfer(_value);
    |      BurnEvent(msg.sender, _burnCount, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is iBurnableToken, SafeMath {
    |
    |  event PaymentEvent(address indexed from, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    name = _name;
    |    symbol = _symbol;
  > |    decimals = _decimals;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to])
    |    if (balances[msg.sender] >= _value && _value > 0) {
  > |      balances[msg.sender] -= _value;
    |      balances[_to] += _value;
    |      TransferEvent(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    if (balances[msg.sender] >= _value && _value > 0) {
    |      balances[msg.sender] -= _value;
  > |      balances[_to] += _value;
    |      TransferEvent(msg.sender, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      balances[_from] -= _value;
    |      balances[_to] += _value;
  > |      approvals[_from][msg.sender] -= _value;
    |      TransferEvent(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function approve(address _spender, uint _value) public preventRestricted returns (bool success) {
  > |    approvals[msg.sender][_spender] = _value;
    |    ApprovalEvent(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    if (balances[msg.sender] >= _burnCount && _burnCount > 0) {
    |      uint _value = this.balance * _burnCount / tokenSupply;
  > |      tokenSupply -= _burnCount;
    |      balances[msg.sender] -= _burnCount;
    |      msg.sender.transfer(_value);
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      uint _value = this.balance * _burnCount / tokenSupply;
    |      tokenSupply -= _burnCount;
  > |      balances[msg.sender] -= _burnCount;
    |      msg.sender.transfer(_value);
    |      BurnEvent(msg.sender, _burnCount, _value);
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function unPaidBurnTokens(uint _burnCount) public preventRestricted {
    |    if (balances[msg.sender] >= _burnCount && _burnCount > 0) {
  > |      tokenSupply -= _burnCount;
    |      balances[msg.sender] -= _burnCount;
    |      BurnEvent(msg.sender, _burnCount, 0);
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    if (balances[msg.sender] >= _burnCount && _burnCount > 0) {
    |      tokenSupply -= _burnCount;
  > |      balances[msg.sender] -= _burnCount;
    |      BurnEvent(msg.sender, _burnCount, 0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is iBurnableToken, SafeMath {
    |
    |  event PaymentEvent(address indexed from, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function initTokenSupply(uint _tokenSupply) public ownerOnly {
    |    require(tokenSupply == 0);
  > |    tokenSupply = _tokenSupply;
    |    balances[owner] = tokenSupply;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(tokenSupply == 0);
    |    tokenSupply = _tokenSupply;
  > |    balances[owner] = tokenSupply;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function lock() public ownerOnly {
  > |    isLocked = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |  function setRestrictedAcct(address _restrictedAcct, uint _restrictUntil) public ownerOnly unlockedOnly {
  > |    restrictedAcct = _restrictedAcct;
    |    restrictUntil = _restrictUntil;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function setRestrictedAcct(address _restrictedAcct, uint _restrictUntil) public ownerOnly unlockedOnly {
    |    restrictedAcct = _restrictedAcct;
  > |    restrictUntil = _restrictUntil;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(220)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    Overflow protected math functions
    |*/
  > |contract SafeMath {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0x138e8f61c1e1908e145c02a12879f68051499d21.sol(22)


