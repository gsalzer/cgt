Processing contract: /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol:NothingToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'NothingToken':
    |        if (msg.value == 0) { return; }
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(117)

[33mWarning[0m for LockedEther in contract 'NothingToken':
    |}
    |
  > |contract NothingToken {
    |    address owner = msg.sender;
    |
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(8)

[31mViolation[0m for TODReceiver in contract 'NothingToken':
    |        if (msg.value == 0) { return; }
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(117)

[33mWarning[0m for UnhandledException in contract 'NothingToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(104)

[33mWarning[0m for UnhandledException in contract 'NothingToken':
    |
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(105)

[33mWarning[0m for UnhandledException in contract 'NothingToken':
    |        if (msg.value == 0) { return; }
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(117)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NothingToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NothingToken':
    |
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'NothingToken':
    |
    |        owner.transfer(msg.value);
  > |        totalContribution += msg.value;
    |
    |        uint256 tokensIssued = (msg.value * 100);
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'NothingToken':
    |        }
    |
  > |        totalSupply += tokensIssued;
    |        balances[msg.sender] += tokensIssued;
    |        
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'NothingToken':
    |        
    |        if (sufficientFunds && !overflowed) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'NothingToken':
    |            balances[_from] -= _value;
    |            
  > |            allowed[_from][msg.sender] -= _value;
    |            
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'NothingToken':
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
    |        
  > |        allowed[msg.sender][_spender] = _value;
    |        
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'NothingToken':
    |
    |        totalSupply += tokensIssued;
  > |        balances[msg.sender] += tokensIssued;
    |        
    |        Transfer(address(this), msg.sender, tokensIssued);
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'NothingToken':
    |        if (msg.sender != owner) { throw; }
    |
  > |        purchasingAllowed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'NothingToken':
    |        if (msg.sender != owner) { throw; }
    |
  > |        purchasingAllowed = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x511c1343c41900dbd64ddbac04635f4ef25177c8.sol(96)


