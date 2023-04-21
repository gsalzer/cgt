Processing contract: /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol:BoltToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol:ERC20
[31mViolation[0m for DAOConstantGas in contract 'BoltToken':
    |        }
    |        
  > |        owner.transfer(msg.value);
    |        
    |        if(roundContributions[msg.sender] == 0){
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(149)

[33mWarning[0m for DAOConstantGas in contract 'BoltToken':
    |        
    |        if(!canPurchase || !_acceptConditions || msg.value < 10 finney){
  > |            msg.sender.transfer(msg.value);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(145)

[33mWarning[0m for LockedEther in contract 'BoltToken':
    |}
    |
  > |contract BoltToken is ERC20{
    |    
    |    address owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(15)

[31mViolation[0m for TODReceiver in contract 'BoltToken':
    |        }
    |        
  > |        owner.transfer(msg.value);
    |        
    |        if(roundContributions[msg.sender] == 0){
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(149)

[33mWarning[0m for TODReceiver in contract 'BoltToken':
    |        
    |        if(!canPurchase || !_acceptConditions || msg.value < 10 finney){
  > |            msg.sender.transfer(msg.value);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(145)

[33mWarning[0m for UnhandledException in contract 'BoltToken':
    |        
    |        if(!canPurchase || !_acceptConditions || msg.value < 10 finney){
  > |            msg.sender.transfer(msg.value);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(145)

[33mWarning[0m for UnhandledException in contract 'BoltToken':
    |        }
    |        
  > |        owner.transfer(msg.value);
    |        
    |        if(roundContributions[msg.sender] == 0){
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'BoltToken':
    |        
    |        roundContributions[msg.sender] += msg.value;
  > |        roundFunds += msg.value;
    |        
    |        emit Contribution(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'BoltToken':
    |}
    |
  > |contract BoltToken is ERC20{
    |    
    |    address owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'BoltToken':
    |
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'BoltToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            emit Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BoltToken':
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
    |        
  > |        allowed[msg.sender][_spender] = _value;
    |        
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'BoltToken':
    |        if(msg.sender != owner && currentSupply>=totalSupply){ return; }
    |        
  > |        canPurchase = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BoltToken':
    |        if(msg.sender != owner){ return; }
    |        
  > |        canPurchase = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'BoltToken':
    |        if(msg.sender != owner){ return; }
    |        
  > |        roundReward = _roundReward;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BoltToken':
    |        }
    |        
  > |        roundContributions[msg.sender] += msg.value;
    |        roundFunds += msg.value;
    |        
  at /home/jiaming/mavs_srcs/contract@0x64d30c2e9715f0add2815f862eaf22d9dbc1bd28.sol(155)


