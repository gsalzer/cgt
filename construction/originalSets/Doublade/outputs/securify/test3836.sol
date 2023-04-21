Processing contract: /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol:SXR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'SXR':
    |        }
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(241)

[33mWarning[0m for DAOConstantGas in contract 'SXR':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(297)

[33mWarning[0m for DAOConstantGas in contract 'SXR':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(302)

[33mWarning[0m for LockedEther in contract 'SXR':
    |}
    |
  > |contract SXR is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(67)

[31mViolation[0m for TODAmount in contract 'SXR':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(297)

[33mWarning[0m for TODAmount in contract 'SXR':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(302)

[31mViolation[0m for TODReceiver in contract 'SXR':
    |        }
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(241)

[31mViolation[0m for TODReceiver in contract 'SXR':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(297)

[31mViolation[0m for TODReceiver in contract 'SXR':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(302)

[33mWarning[0m for UnhandledException in contract 'SXR':
    |        }
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(241)

[33mWarning[0m for UnhandledException in contract 'SXR':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(290)

[33mWarning[0m for UnhandledException in contract 'SXR':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(297)

[33mWarning[0m for UnhandledException in contract 'SXR':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(302)

[33mWarning[0m for UnhandledException in contract 'SXR':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(323)

[33mWarning[0m for UnhandledException in contract 'SXR':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(324)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SXR':
    |        }
    |        //here we will send all wei to your address
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SXR':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(290)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SXR':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SXR':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SXR':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(324)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SXR':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(302)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |        require( _amount > 0 );      
    |        require( totalDistributed < totalSupply );
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |        require( totalDistributed < totalSupply );
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |            if (Claimed[investor] == false && progress0drop <= target0drop ) {
    |                distr(investor, valdrop);
  > |                Claimed[investor] = true;
    |                progress0drop++;
    |            }else{
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |                distr(investor, valdrop);
    |                Claimed[investor] = true;
  > |                progress0drop++;
    |            }else{
    |                require( msg.value >= requestMinimum );
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        //here we will send all wei to your address
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(310)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |    function add(uint256 _value) onlyOwner public {
    |        uint256 counter = totalSupply.add(_value);
  > |        totalSupply = counter; 
    |        emit Add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'SXR':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(174)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @title etest
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xfcdae8771f8d28e3b9027ab58f4a20749767a097.sol(6)


