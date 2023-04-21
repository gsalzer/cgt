Processing contract: /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol:ElectronicMusic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'ElectronicMusic':
    |        }
    |        
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(228)

[33mWarning[0m for DAOConstantGas in contract 'ElectronicMusic':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(284)

[33mWarning[0m for DAOConstantGas in contract 'ElectronicMusic':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(289)

[33mWarning[0m for LockedEther in contract 'ElectronicMusic':
    |}
    |
  > |contract ElectronicMusic is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(58)

[31mViolation[0m for TODAmount in contract 'ElectronicMusic':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(284)

[33mWarning[0m for TODAmount in contract 'ElectronicMusic':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(289)

[31mViolation[0m for TODReceiver in contract 'ElectronicMusic':
    |        }
    |        
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(228)

[31mViolation[0m for TODReceiver in contract 'ElectronicMusic':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(284)

[31mViolation[0m for TODReceiver in contract 'ElectronicMusic':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(289)

[33mWarning[0m for UnhandledException in contract 'ElectronicMusic':
    |        }
    |        
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(228)

[33mWarning[0m for UnhandledException in contract 'ElectronicMusic':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(277)

[33mWarning[0m for UnhandledException in contract 'ElectronicMusic':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(284)

[33mWarning[0m for UnhandledException in contract 'ElectronicMusic':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(289)

[33mWarning[0m for UnhandledException in contract 'ElectronicMusic':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(310)

[33mWarning[0m for UnhandledException in contract 'ElectronicMusic':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(311)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElectronicMusic':
    |        }
    |        
  > |        multisig.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElectronicMusic':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(277)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElectronicMusic':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(284)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElectronicMusic':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElectronicMusic':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(311)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ElectronicMusic':
    |    function withdraw(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |        require( _amount > 0 );      
    |        require( totalDistributed < totalSupply );
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |        require( totalDistributed < totalSupply );
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |            if (Claimed[investor] == false && progress0drop <= target0drop ) {
    |                distr(investor, valdrop);
  > |                Claimed[investor] = true;
    |                progress0drop++;
    |            }else{
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |                distr(investor, valdrop);
    |                Claimed[investor] = true;
  > |                progress0drop++;
    |            }else{
    |                require( msg.value >= requestMinimum );
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |    function add(uint256 _value) onlyOwner public {
    |        uint256 counter = totalSupply.add(_value);
  > |        totalSupply = counter; 
    |        emit Add(_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(303)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'ElectronicMusic':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(162)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Decimals    : 8
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x03d577ead53c9b7a713229c8ad966f43d8e349d7.sol(10)


