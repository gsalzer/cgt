Processing contract: /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol:DimonCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol:ForeignToken
[33mWarning[0m for LockedEther in contract 'DimonCoin':
    |}
    |
  > |contract DimonCoin {
    |    
    |    address owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol(8)

[33mWarning[0m for UnhandledException in contract 'DimonCoin':
    |        require(msg.sender == owner);
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol(121)

[33mWarning[0m for UnhandledException in contract 'DimonCoin':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol(122)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DimonCoin':
    |        require(msg.sender == owner);
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol(121)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DimonCoin':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'DimonCoin':
    | 	         continue;
    |             }
  > |             balances[owner] -= _value;
    |             balances[addresses[i]] += _value;
    |             Transfer(owner, addresses[i], _value);
  at /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'DimonCoin':
    |             }
    |             balances[owner] -= _value;
  > |             balances[addresses[i]] += _value;
    |             Transfer(owner, addresses[i], _value);
    |         }
  at /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'DimonCoin':
    |        
    |        if (sufficientFunds && !overflowed) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            
  at /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'DimonCoin':
    |            balances[_from] -= _value;
    |            
  > |            allowed[_from][msg.sender] -= _value;
    |            
    |            Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'DimonCoin':
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
    |        
  > |        allowed[msg.sender][_spender] = _value;
    |        
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'DimonCoin':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf084d5bc3e35e3d903260267ebd545c49c6013d0.sol(35)


