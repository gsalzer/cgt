Processing contract: /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol:AltcoinToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol:HodlerExchange
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'HodlerExchange':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(242)

[33mWarning[0m for LockedEther in contract 'HodlerExchange':
    |}
    |
  > |contract HodlerExchange is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(67)

[31mViolation[0m for TODAmount in contract 'HodlerExchange':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(242)

[31mViolation[0m for TODReceiver in contract 'HodlerExchange':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(242)

[33mWarning[0m for UnhandledException in contract 'HodlerExchange':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(235)

[33mWarning[0m for UnhandledException in contract 'HodlerExchange':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(242)

[33mWarning[0m for UnhandledException in contract 'HodlerExchange':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(257)

[33mWarning[0m for UnhandledException in contract 'HodlerExchange':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(258)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HodlerExchange':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(235)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HodlerExchange':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(242)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HodlerExchange':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(257)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HodlerExchange':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |        require( totalDistributed < totalSupply );
    |        
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |        
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |        
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'HodlerExchange':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(160)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @title SafeMath
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x8bf22ad8b6c2f8c6492dabb99d3c896a3f9f7bf3.sol(6)


