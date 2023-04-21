Processing contract: /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol:AltcoinToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol:BrianexToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BrianexToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(246)

[33mWarning[0m for LockedEther in contract 'BrianexToken':
    |}
    |
  > |contract BrianexToken is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(67)

[31mViolation[0m for TODAmount in contract 'BrianexToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(246)

[31mViolation[0m for TODReceiver in contract 'BrianexToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(246)

[33mWarning[0m for UnhandledException in contract 'BrianexToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(239)

[33mWarning[0m for UnhandledException in contract 'BrianexToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(246)

[33mWarning[0m for UnhandledException in contract 'BrianexToken':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(261)

[33mWarning[0m for UnhandledException in contract 'BrianexToken':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BrianexToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(239)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BrianexToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BrianexToken':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(261)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BrianexToken':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |        require( totalDistributed < totalSupply );
    |        
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |        
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |        
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianexToken':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(164)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @title SafeMath
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xf057445d150f6342a6a4e47e2c833a0a0bc9e40e.sol(6)


