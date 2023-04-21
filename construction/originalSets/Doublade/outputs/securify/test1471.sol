Processing contract: /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol:Dasabi_ioToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'Dasabi_ioToken':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(278)

[33mWarning[0m for LockedEther in contract 'Dasabi_ioToken':
    |}
    |
  > |contract Dasabi_ioToken is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(52)

[31mViolation[0m for TODAmount in contract 'Dasabi_ioToken':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(278)

[31mViolation[0m for TODReceiver in contract 'Dasabi_ioToken':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(278)

[33mWarning[0m for UnhandledException in contract 'Dasabi_ioToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(272)

[33mWarning[0m for UnhandledException in contract 'Dasabi_ioToken':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(278)

[33mWarning[0m for UnhandledException in contract 'Dasabi_ioToken':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(301)

[33mWarning[0m for UnhandledException in contract 'Dasabi_ioToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dasabi_ioToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dasabi_ioToken':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dasabi_ioToken':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(301)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Dasabi_ioToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |    function enableWhitelist(address[] addresses) onlyOwner public {
    |        for (uint i = 0; i < addresses.length; i++) {
  > |            blacklist[addresses[i]] = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |    function disableWhitelist(address[] addresses) onlyOwner public {
    |        for (uint i = 0; i < addresses.length; i++) {
  > |            blacklist[addresses[i]] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        
    |        if (candy > totalRemaining) {
  > |            candy = totalRemaining;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);
  > |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |       
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |       
    |        Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |	
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |	
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |            
    |            if (totalDistributed >= totalSupply) {
  > |                distributionFinished = true;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |		        
    |	        distr(investor, FreetoGive);
  > |	        blacklist[investor] = true;
    |	
    |	        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |	
    |	        if (totalDistributed >= totalSupply) {
  > |	            distributionFinished = true;
    |	        }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        }
    |        
  > |        candy = candy.div(10000).mul(9999);
    |        
    |        if(totalRemaining>0){
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        
    |        if(totalRemaining>0){
  > |            tokenPrice = tokenPrice.mul(totalDistributed).div(totalRemaining);
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |    function Remain_burn(uint256 _value) onlyOwner public {
    |        require(_value <= totalRemaining);
  > |		totalRemaining = totalRemaining.sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |        require(_value <= totalRemaining);
    |		totalRemaining = totalRemaining.sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Dasabi_ioToken':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(121)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x5d667e4a79abaa815c5701f39a4a5e101dbaf36b.sol(3)


