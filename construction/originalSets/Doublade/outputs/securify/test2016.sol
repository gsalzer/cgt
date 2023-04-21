Processing contract: /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol:AltcoinToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol:GrowToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'GrowToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(268)

[33mWarning[0m for LockedEther in contract 'GrowToken':
    |}
    |
  > |contract GrowToken is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(72)

[31mViolation[0m for TODAmount in contract 'GrowToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(268)

[31mViolation[0m for TODReceiver in contract 'GrowToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(268)

[33mWarning[0m for UnhandledException in contract 'GrowToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(261)

[33mWarning[0m for UnhandledException in contract 'GrowToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(268)

[33mWarning[0m for UnhandledException in contract 'GrowToken':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(285)

[33mWarning[0m for UnhandledException in contract 'GrowToken':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(286)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrowToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(261)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrowToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(268)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrowToken':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(285)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrowToken':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |        require( totalDistributed < totalSupply );
    |        
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |        
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |
    |    function startICO() onlyOwner public returns (bool) {
  > |        icoStart = true;
    |        emit StartICO();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |
    |    function resetICO() onlyOwner public returns (bool) {
  > |        icoStart = false;
    |        distributionFinished = false;
    |        emit ResetICO();
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |    function resetICO() onlyOwner public returns (bool) {
    |        icoStart = false;
  > |        distributionFinished = false;
    |        emit ResetICO();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'GrowToken':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(184)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x832ec40433b457028a1d27434f3b9fdf81aaecbe.sol(11)


