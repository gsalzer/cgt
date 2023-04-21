Processing contract: /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol:AltcoinToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol:pokerbox
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @title SafeMath
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(16)

[33mWarning[0m for DAOConstantGas in contract 'pokerbox':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(256)

[33mWarning[0m for LockedEther in contract 'pokerbox':
    |}
    |
  > |contract pokerbox is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(77)

[31mViolation[0m for TODAmount in contract 'pokerbox':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(256)

[31mViolation[0m for TODReceiver in contract 'pokerbox':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(256)

[33mWarning[0m for UnhandledException in contract 'pokerbox':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(249)

[33mWarning[0m for UnhandledException in contract 'pokerbox':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(256)

[33mWarning[0m for UnhandledException in contract 'pokerbox':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(271)

[33mWarning[0m for UnhandledException in contract 'pokerbox':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'pokerbox':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'pokerbox':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(256)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'pokerbox':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'pokerbox':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |        require( totalDistributed < totalSupply );
    |        
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |        
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |        
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'pokerbox':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9d78513d427b6cfb68c1c996b5e924ffc02e4723.sol(174)


