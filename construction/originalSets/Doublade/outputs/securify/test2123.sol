Processing contract: /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol:ETHERLIBERTY
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ETHERLIBERTY':
    |        
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(240)

[33mWarning[0m for DAOConstantGas in contract 'ETHERLIBERTY':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(296)

[33mWarning[0m for DAOConstantGas in contract 'ETHERLIBERTY':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(301)

[33mWarning[0m for LockedEther in contract 'ETHERLIBERTY':
    |}
    |
  > |contract ETHERLIBERTY is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(67)

[31mViolation[0m for TODAmount in contract 'ETHERLIBERTY':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(296)

[33mWarning[0m for TODAmount in contract 'ETHERLIBERTY':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(301)

[31mViolation[0m for TODReceiver in contract 'ETHERLIBERTY':
    |        
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(240)

[31mViolation[0m for TODReceiver in contract 'ETHERLIBERTY':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(296)

[31mViolation[0m for TODReceiver in contract 'ETHERLIBERTY':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(301)

[33mWarning[0m for UnhandledException in contract 'ETHERLIBERTY':
    |        
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(240)

[33mWarning[0m for UnhandledException in contract 'ETHERLIBERTY':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(289)

[33mWarning[0m for UnhandledException in contract 'ETHERLIBERTY':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(296)

[33mWarning[0m for UnhandledException in contract 'ETHERLIBERTY':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(301)

[33mWarning[0m for UnhandledException in contract 'ETHERLIBERTY':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(322)

[33mWarning[0m for UnhandledException in contract 'ETHERLIBERTY':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHERLIBERTY':
    |        
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(240)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHERLIBERTY':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHERLIBERTY':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHERLIBERTY':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHERLIBERTY':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ETHERLIBERTY':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |        require( _amount > 0 );      
    |        require( totalDistributed < totalSupply );
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |        require( totalDistributed < totalSupply );
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |            if (Claimed[investor] == false && progress0drop <= target0drop ) {
    |                distr(investor, valdrop);
  > |                Claimed[investor] = true;
    |                progress0drop++;
    |            }else{
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |                distr(investor, valdrop);
    |                Claimed[investor] = true;
  > |                progress0drop++;
    |            }else{
    |                require( msg.value >= requestMinimum );
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |    function add(uint256 _value) onlyOwner public {
    |        uint256 counter = totalSupply.add(_value);
  > |        totalSupply = counter; 
    |        emit Add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERLIBERTY':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(173)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @title ETHERLIBERTY   Project
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x8a9c3c53cc3bedf90fb925e19a1480fa7e5f790f.sol(6)


