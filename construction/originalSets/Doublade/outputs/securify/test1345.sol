Processing contract: /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol:SamsungCryptoPayments
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Samsung Crypto Payments
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(7)

[33mWarning[0m for DAOConstantGas in contract 'SamsungCryptoPayments':
    |        
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(241)

[33mWarning[0m for DAOConstantGas in contract 'SamsungCryptoPayments':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(297)

[33mWarning[0m for DAOConstantGas in contract 'SamsungCryptoPayments':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(302)

[33mWarning[0m for LockedEther in contract 'SamsungCryptoPayments':
    |}
    |
  > |contract SamsungCryptoPayments is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(68)

[31mViolation[0m for TODAmount in contract 'SamsungCryptoPayments':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(297)

[33mWarning[0m for TODAmount in contract 'SamsungCryptoPayments':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(302)

[31mViolation[0m for TODReceiver in contract 'SamsungCryptoPayments':
    |        
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(241)

[31mViolation[0m for TODReceiver in contract 'SamsungCryptoPayments':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(297)

[31mViolation[0m for TODReceiver in contract 'SamsungCryptoPayments':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(302)

[33mWarning[0m for UnhandledException in contract 'SamsungCryptoPayments':
    |        
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(241)

[33mWarning[0m for UnhandledException in contract 'SamsungCryptoPayments':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(290)

[33mWarning[0m for UnhandledException in contract 'SamsungCryptoPayments':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(297)

[33mWarning[0m for UnhandledException in contract 'SamsungCryptoPayments':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(302)

[33mWarning[0m for UnhandledException in contract 'SamsungCryptoPayments':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(322)

[33mWarning[0m for UnhandledException in contract 'SamsungCryptoPayments':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SamsungCryptoPayments':
    |        
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SamsungCryptoPayments':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(290)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SamsungCryptoPayments':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SamsungCryptoPayments':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SamsungCryptoPayments':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SamsungCryptoPayments':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |        require( _amount > 0 );      
    |        require( totalDistributed < totalSupply );
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |        require( totalDistributed < totalSupply );
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |            if (Claimed[investor] == false && progress0drop <= target0drop ) {
    |                distr(investor, valdrop);
  > |                Claimed[investor] = true;
    |                progress0drop++;
    |            }else{
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |                distr(investor, valdrop);
    |                Claimed[investor] = true;
  > |                progress0drop++;
    |            }else{
    |                require( msg.value >= requestMinimum );
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |    function add(uint256 _value) onlyOwner public {
    |        uint256 counter = totalSupply.add(_value);
  > |        totalSupply = counter; 
    |        emit Add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'SamsungCryptoPayments':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x553e3e5ba03e862c93c7834b80ca800018ba4736.sol(174)


