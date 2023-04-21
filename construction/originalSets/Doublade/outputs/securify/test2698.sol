Processing contract: /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol:GameLife
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'GameLife':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(248)

[33mWarning[0m for LockedEther in contract 'GameLife':
    |}
    |
  > |contract GameLife is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(68)

[31mViolation[0m for TODAmount in contract 'GameLife':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(248)

[31mViolation[0m for TODReceiver in contract 'GameLife':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(248)

[33mWarning[0m for UnhandledException in contract 'GameLife':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(241)

[33mWarning[0m for UnhandledException in contract 'GameLife':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(248)

[33mWarning[0m for UnhandledException in contract 'GameLife':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(265)

[33mWarning[0m for UnhandledException in contract 'GameLife':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameLife':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameLife':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameLife':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(265)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameLife':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |        require( totalDistributed < totalSupply );
    |        
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |        
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'GameLife':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(164)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xb0315f636e4136dfd43f66b699dcdf43d5d519ad.sol(7)


