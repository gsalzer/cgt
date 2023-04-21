Processing contract: /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol:AltcoinToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol:DigitalGold
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'DigitalGold':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(246)

[33mWarning[0m for LockedEther in contract 'DigitalGold':
    |}
    |
  > |contract DigitalGold is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(67)

[31mViolation[0m for TODAmount in contract 'DigitalGold':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(246)

[31mViolation[0m for TODReceiver in contract 'DigitalGold':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(246)

[33mWarning[0m for UnhandledException in contract 'DigitalGold':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(239)

[33mWarning[0m for UnhandledException in contract 'DigitalGold':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(246)

[33mWarning[0m for UnhandledException in contract 'DigitalGold':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(261)

[33mWarning[0m for UnhandledException in contract 'DigitalGold':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DigitalGold':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(239)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DigitalGold':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DigitalGold':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(261)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DigitalGold':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |        require( totalDistributed < totalSupply );
    |        
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |        
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |        
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'DigitalGold':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(164)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @title SafeMath
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x991ec6dff2b3ee5431c8bb099c18ccb3131f03bc.sol(6)


