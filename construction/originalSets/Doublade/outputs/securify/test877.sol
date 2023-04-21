Processing contract: /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol:WTF
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(3)

[33mWarning[0m for DAOConstantGas in contract 'WTF':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(265)

[33mWarning[0m for LockedEther in contract 'WTF':
    |}
    |
  > |contract WTF is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(52)

[31mViolation[0m for TODAmount in contract 'WTF':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(265)

[31mViolation[0m for TODReceiver in contract 'WTF':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(265)

[33mWarning[0m for UnhandledException in contract 'WTF':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(259)

[33mWarning[0m for UnhandledException in contract 'WTF':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(265)

[33mWarning[0m for UnhandledException in contract 'WTF':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(282)

[33mWarning[0m for UnhandledException in contract 'WTF':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(283)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WTF':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(259)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WTF':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(265)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WTF':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WTF':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(283)

[31mViolation[0m for UnrestrictedWrite in contract 'WTF':
    |    function enableWhitelist(address[] addresses) onlyOwner public {
    |        for (uint i = 0; i < addresses.length; i++) {
  > |            blacklist[addresses[i]] = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'WTF':
    |    function disableWhitelist(address[] addresses) onlyOwner public {
    |        for (uint i = 0; i < addresses.length; i++) {
  > |            blacklist[addresses[i]] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'WTF':
    |        
    |        if (value > totalRemaining) {
  > |            value = totalRemaining;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);
  > |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Distr(_to, _amount);
    |        Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |	
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |	
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |            
    |            if (totalDistributed >= totalSupply) {
  > |                distributionFinished = true;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |        
    |        if (toGive > 0) {
  > |            blacklist[investor] = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |        }
    |        
  > |        value = value.div(100000).mul(99999);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'WTF':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3813a81a0a116a086799d37b66c0fd9925cb98c6.sol(120)


