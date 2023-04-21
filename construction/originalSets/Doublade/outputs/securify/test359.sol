Processing contract: /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol:CyberChainToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CyberChainToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(257)

[33mWarning[0m for LockedEther in contract 'CyberChainToken':
    |}
    |
  > |contract CyberChainToken is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(77)

[31mViolation[0m for TODAmount in contract 'CyberChainToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(257)

[31mViolation[0m for TODReceiver in contract 'CyberChainToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(257)

[33mWarning[0m for UnhandledException in contract 'CyberChainToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(250)

[33mWarning[0m for UnhandledException in contract 'CyberChainToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(257)

[33mWarning[0m for UnhandledException in contract 'CyberChainToken':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(274)

[33mWarning[0m for UnhandledException in contract 'CyberChainToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CyberChainToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(250)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CyberChainToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(257)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CyberChainToken':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(274)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CyberChainToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |        require( totalDistributed < totalSupply );
    |        
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |        
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'CyberChainToken':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(173)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * 
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x17e16d30a05324b44cf78df847137fa1220448f8.sol(16)


