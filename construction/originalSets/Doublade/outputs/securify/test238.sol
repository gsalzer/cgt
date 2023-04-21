Processing contract: /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol:EtherGreen
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol:ForeignToken
[33mWarning[0m for LockedEther in contract 'EtherGreen':
    |
    |
  > |contract EtherGreen is ERC20 {
    |    
    |    address owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(31)

[33mWarning[0m for UnhandledException in contract 'EtherGreen':
    |        require(msg.sender == owner);
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(148)

[33mWarning[0m for UnhandledException in contract 'EtherGreen':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherGreen':
    |        require(msg.sender == owner);
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherGreen':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherGreen':
    | 	         continue;
    |             }
  > |             balances[owner] -= _value;
    |             balances[addresses[i]] += _value;
    |             Transfer(owner, addresses[i], _value);
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherGreen':
    |             }
    |             balances[owner] -= _value;
  > |             balances[addresses[i]] += _value;
    |             Transfer(owner, addresses[i], _value);
    |         }
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGreen':
    |             && _amount > 0
    |             && balances[_to] + _amount > balances[_to]) {
  > |             balances[msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGreen':
    |             && balances[_to] + _amount > balances[_to]) {
    |             balances[_from] -= _amount;
  > |             allowed[_from][msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGreen':
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
    |        
  > |        allowed[msg.sender][_spender] = _value;
    |        
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGreen':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherGreen':
    |
    |    function finishDistribution() onlyOwner public returns (bool) {
  > |    distributionFinished = true;
    |    DistrFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x108caf59641fc5d27502a87e641872b62d606ae2.sol(140)


