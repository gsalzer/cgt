Processing contract: /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol:DEXToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol:SaferMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DEXToken':
    |
    |
  > |contract DEXToken is ERC20 {
    |    
    |    address owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(57)

[33mWarning[0m for UnhandledException in contract 'DEXToken':
    |        require(msg.sender == owner);
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(174)

[33mWarning[0m for UnhandledException in contract 'DEXToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(175)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DEXToken':
    |        require(msg.sender == owner);
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(174)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DEXToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'DEXToken':
    | 	         continue;
    |             }
  > |             balances[owner] -= _value;
    |             balances[addresses[i]] += _value;
    |             Transfer(owner, addresses[i], _value);
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'DEXToken':
    |             }
    |             balances[owner] -= _value;
  > |             balances[addresses[i]] += _value;
    |             Transfer(owner, addresses[i], _value);
    |         }
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'DEXToken':
    |             && _amount > 0
    |             && balances[_to] + _amount > balances[_to]) {
  > |             balances[msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'DEXToken':
    |             && balances[_to] + _amount > balances[_to]) {
    |             balances[_from] -= _amount;
  > |             allowed[_from][msg.sender] -= _amount;
    |             balances[_to] += _amount;
    |             Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'DEXToken':
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
    |        
  > |        allowed[msg.sender][_spender] = _value;
    |        
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'DEXToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'DEXToken':
    |
    |    function finishDistribution() onlyOwner public returns (bool) {
  > |    distributionFinished = true;
    |    DistrFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(166)

[33mWarning[0m for LockedEther in contract 'SaferMath':
    |}
    |
  > |library SaferMath {
    |  function mulX(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x3cd7047117dbfd0dcb470514172ace9f394c31e8.sol(29)


