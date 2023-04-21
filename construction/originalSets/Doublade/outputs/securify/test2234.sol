Processing contract: /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol:DoneToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol:ForeignToken
[31mViolation[0m for DAOConstantGas in contract 'DoneToken':
    |        if (msg.value == 0) { return; }
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(128)

[33mWarning[0m for LockedEther in contract 'DoneToken':
    |
    |
  > |contract DoneToken {
    |    
    |    address owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(12)

[31mViolation[0m for TODReceiver in contract 'DoneToken':
    |        if (msg.value == 0) { return; }
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(128)

[33mWarning[0m for UnhandledException in contract 'DoneToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(115)

[33mWarning[0m for UnhandledException in contract 'DoneToken':
    |
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(116)

[33mWarning[0m for UnhandledException in contract 'DoneToken':
    |        if (msg.value == 0) { return; }
    |
  > |        owner.transfer(msg.value);
    |        totalContribution += msg.value;
    |        
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DoneToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DoneToken':
    |
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'DoneToken':
    |
    |        owner.transfer(msg.value);
  > |        totalContribution += msg.value;
    |        
    |        if (block.timestamp > August25){
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'DoneToken':
    |        else tokensIssued = (msg.value * 10);
    |        
  > |        totalSupply += tokensIssued;
    |        balances[msg.sender] += tokensIssued;
    |        
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'DoneToken':
    |        
    |        if (sufficientFunds && !overflowed) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'DoneToken':
    |            balances[_from] -= _value;
    |            
  > |            allowed[_from][msg.sender] -= _value;
    |            
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'DoneToken':
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
    |        
  > |        allowed[msg.sender][_spender] = _value;
    |        
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'DoneToken':
    |        
    |        totalSupply += tokensIssued;
  > |        balances[msg.sender] += tokensIssued;
    |        
    |        Transfer(address(this), msg.sender, tokensIssued);
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'DoneToken':
    |        if (totalContribution > 1000000000000000000000) {throw;} //purchasing cannot be re-enabled
    |                                  
  > |        purchasingAllowed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'DoneToken':
    |        if (msg.sender != owner) { throw; }
    |
  > |        purchasingAllowed = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x91126cfa7db2983527b0b749cc8a61fdeffedc28.sol(105)


