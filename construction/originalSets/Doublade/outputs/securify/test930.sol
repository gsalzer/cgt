Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol:ALU
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol:AltcoinToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ALU':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(166)

[33mWarning[0m for LockedEther in contract 'ALU':
    |}
    |
  > |contract ALU is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(45)

[31mViolation[0m for TODAmount in contract 'ALU':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(166)

[31mViolation[0m for TODReceiver in contract 'ALU':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(166)

[33mWarning[0m for UnhandledException in contract 'ALU':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(159)

[33mWarning[0m for UnhandledException in contract 'ALU':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(166)

[33mWarning[0m for UnhandledException in contract 'ALU':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(171)

[33mWarning[0m for UnhandledException in contract 'ALU':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(172)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ALU':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ALU':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(166)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ALU':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(171)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ALU':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |        
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |        require(_value <= balances[_burner]);
    |        
  > |        balances[_burner] = balances[_burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |        
    |        balances[_burner] = balances[_burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(_burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |        balances[_burner] = balances[_burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(_burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'ALU':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(95)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3b2f94c251c2cccb7ad16a68f040a220cc2bdd72.sol(3)


