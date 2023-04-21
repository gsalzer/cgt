Processing contract: /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol:PowerOfPutin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'PowerOfPutin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(314)

[33mWarning[0m for LockedEther in contract 'PowerOfPutin':
    |}
    |
  > |contract PowerOfPutin is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(106)

[31mViolation[0m for TODAmount in contract 'PowerOfPutin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(314)

[31mViolation[0m for TODReceiver in contract 'PowerOfPutin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(314)

[33mWarning[0m for UnhandledException in contract 'PowerOfPutin':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(308)

[33mWarning[0m for UnhandledException in contract 'PowerOfPutin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(314)

[33mWarning[0m for UnhandledException in contract 'PowerOfPutin':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(331)

[33mWarning[0m for UnhandledException in contract 'PowerOfPutin':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(332)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerOfPutin':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(308)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerOfPutin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(314)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerOfPutin':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(331)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PowerOfPutin':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(332)

[31mViolation[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |        
    |        if (value > totalRemaining) {
  > |            value = totalRemaining;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);
  > |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Distr(_to, _amount);
    |        Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |	
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |	
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |            
    |            if (totalDistributed >= totalSupply) {
  > |                distributionFinished = true;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |        
    |        if (toGive > 0) {
  > |            blacklist[investor] = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'PowerOfPutin':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(163)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |*/
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xec57c67a1c1795c6dc89e21272be7b3c3ea374e9.sol(57)


