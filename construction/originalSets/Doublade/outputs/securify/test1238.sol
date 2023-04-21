Processing contract: /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol:AltcoinToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol:FCC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'FCC':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(206)

[33mWarning[0m for LockedEther in contract 'FCC':
    |}
    |
  > |contract FCC is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(45)

[31mViolation[0m for TODAmount in contract 'FCC':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(206)

[31mViolation[0m for TODReceiver in contract 'FCC':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(206)

[33mWarning[0m for UnhandledException in contract 'FCC':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(199)

[33mWarning[0m for UnhandledException in contract 'FCC':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(206)

[33mWarning[0m for UnhandledException in contract 'FCC':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(211)

[33mWarning[0m for UnhandledException in contract 'FCC':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FCC':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FCC':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FCC':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(211)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FCC':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);   
    |		totalRemaining = totalRemaining.sub(_amount);		
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);   
  > |		totalRemaining = totalRemaining.sub(_amount);		
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        totalDistributed = totalDistributed.add(_amount);   
    |		totalRemaining = totalRemaining.sub(_amount);		
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |			distr(investor, toGive);
    |			
  > |            blacklist[investor] = true;
    |        
    |			valueToGive = valueToGive.div(1000000).mul(999999);
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |            blacklist[investor] = true;
    |        
  > |			valueToGive = valueToGive.div(1000000).mul(999999);
    |		}
    |		
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        require(_value <= balances[_burner]);
    |        
  > |        balances[_burner] = balances[_burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        
    |        balances[_burner] = balances[_burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(_burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |        balances[_burner] = balances[_burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(_burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'FCC':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(97)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x4e67f72bae98f02f5d11f4455427128aa6969e87.sol(3)


