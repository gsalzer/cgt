Processing contract: /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol:QuadCoreChain
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'QuadCoreChain':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(248)

[33mWarning[0m for LockedEther in contract 'QuadCoreChain':
    |}
    |
  > |contract QuadCoreChain is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(68)

[31mViolation[0m for TODAmount in contract 'QuadCoreChain':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(248)

[31mViolation[0m for TODReceiver in contract 'QuadCoreChain':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(248)

[33mWarning[0m for UnhandledException in contract 'QuadCoreChain':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(241)

[33mWarning[0m for UnhandledException in contract 'QuadCoreChain':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(248)

[33mWarning[0m for UnhandledException in contract 'QuadCoreChain':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(265)

[33mWarning[0m for UnhandledException in contract 'QuadCoreChain':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QuadCoreChain':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QuadCoreChain':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QuadCoreChain':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(265)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QuadCoreChain':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |        require( totalDistributed < totalSupply );
    |        
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |        
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'QuadCoreChain':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(164)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xe0e705c9bff67188a79dc5f59f0b2675031a6055.sol(7)


