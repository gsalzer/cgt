Processing contract: /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol:EthereumBlock
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EthereumBlock':
    |	function Payexchange(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(251)

[33mWarning[0m for DAOConstantGas in contract 'EthereumBlock':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(257)

[33mWarning[0m for LockedEther in contract 'EthereumBlock':
    |}
    |
  > |contract EthereumBlock is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(72)

[31mViolation[0m for TODAmount in contract 'EthereumBlock':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(257)

[33mWarning[0m for TODAmount in contract 'EthereumBlock':
    |	function Payexchange(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(251)

[31mViolation[0m for TODReceiver in contract 'EthereumBlock':
    |	function Payexchange(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(251)

[31mViolation[0m for TODReceiver in contract 'EthereumBlock':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(257)

[33mWarning[0m for UnhandledException in contract 'EthereumBlock':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(245)

[33mWarning[0m for UnhandledException in contract 'EthereumBlock':
    |	function Payexchange(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(251)

[33mWarning[0m for UnhandledException in contract 'EthereumBlock':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(257)

[33mWarning[0m for UnhandledException in contract 'EthereumBlock':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(274)

[33mWarning[0m for UnhandledException in contract 'EthereumBlock':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumBlock':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(245)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumBlock':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(257)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumBlock':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(274)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumBlock':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EthereumBlock':
    |	function Payexchange(uint256 _wdamount) onlyOwner public {
    |        uint256 wantAmount = _wdamount;
  > |        owner.transfer(wantAmount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |        require( totalDistributed < totalSupply );
    |        
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |        
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'EthereumBlock':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(168)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | **/
    | 
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xc9c370692607a99136111cd03cb6d6378fc24200.sol(11)


