Processing contract: /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol:Elsevier
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'Elsevier':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(272)

[33mWarning[0m for LockedEther in contract 'Elsevier':
    |}
    |
  > |contract Elsevier is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(52)

[31mViolation[0m for TODAmount in contract 'Elsevier':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(272)

[31mViolation[0m for TODReceiver in contract 'Elsevier':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(272)

[33mWarning[0m for UnhandledException in contract 'Elsevier':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(266)

[33mWarning[0m for UnhandledException in contract 'Elsevier':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(272)

[33mWarning[0m for UnhandledException in contract 'Elsevier':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(289)

[33mWarning[0m for UnhandledException in contract 'Elsevier':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(290)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Elsevier':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Elsevier':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Elsevier':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Elsevier':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(290)

[31mViolation[0m for UnrestrictedWrite in contract 'Elsevier':
    |    function enableWhitelist(address[] addresses) onlyOwner public {
    |        for (uint i = 0; i < addresses.length; i++) {
  > |            blacklist[addresses[i]] = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'Elsevier':
    |    function disableWhitelist(address[] addresses) onlyOwner public {
    |        for (uint i = 0; i < addresses.length; i++) {
  > |            blacklist[addresses[i]] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);
  > |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Distr(_to, _amount);
    |        Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |	
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |	
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |            
    |            if (totalDistributed >= totalSupply) {
  > |                distributionFinished = true;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |        
    |        if (toGive > 0) {
  > |            blacklist[investor] = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(247)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(281)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |    
    |     function setParameters (uint256 _value, uint256 _minReq) onlyOwner public {
  > |        value = _value;
    |        minReq = _minReq;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |     function setParameters (uint256 _value, uint256 _minReq) onlyOwner public {
    |        value = _value;
  > |        minReq = _minReq;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'Elsevier':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(129)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x342156c8d3ba54abc67920d35ba1d1e67201ac9c.sol(3)


