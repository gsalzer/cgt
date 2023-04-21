Processing contract: /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol:AltcoinToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol:FiberStar
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'FiberStar':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(212)

[33mWarning[0m for LockedEther in contract 'FiberStar':
    |}
    |
  > |contract FiberStar is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(51)

[31mViolation[0m for TODAmount in contract 'FiberStar':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(212)

[31mViolation[0m for TODReceiver in contract 'FiberStar':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(212)

[33mWarning[0m for UnhandledException in contract 'FiberStar':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(205)

[33mWarning[0m for UnhandledException in contract 'FiberStar':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(212)

[33mWarning[0m for UnhandledException in contract 'FiberStar':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(217)

[33mWarning[0m for UnhandledException in contract 'FiberStar':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FiberStar':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FiberStar':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FiberStar':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FiberStar':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);   
    |		totalRemaining = totalRemaining.sub(_amount);		
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);   
  > |		totalRemaining = totalRemaining.sub(_amount);		
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        totalDistributed = totalDistributed.add(_amount);   
    |		totalRemaining = totalRemaining.sub(_amount);		
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |			distr(investor, toGive);
    |			
  > |            blacklist[investor] = true;
    |        
    |			valueToGive = valueToGive.div(1000000).mul(999999);
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |            blacklist[investor] = true;
    |        
  > |			valueToGive = valueToGive.div(1000000).mul(999999);
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        require(_value <= balances[_burner]);
    |        
  > |        balances[_burner] = balances[_burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        
    |        balances[_burner] = balances[_burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(_burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |        balances[_burner] = balances[_burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(_burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'FiberStar':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(103)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x77d35a7ab9c3a6a04866e2f901838564c89fcb2a.sol(9)


