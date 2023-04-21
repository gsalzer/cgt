Processing contract: /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol:CryptrustToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'CryptrustToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(252)

[33mWarning[0m for LockedEther in contract 'CryptrustToken':
    |}
    |
  > |contract CryptrustToken is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(72)

[31mViolation[0m for TODAmount in contract 'CryptrustToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(252)

[31mViolation[0m for TODReceiver in contract 'CryptrustToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(252)

[33mWarning[0m for UnhandledException in contract 'CryptrustToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(245)

[33mWarning[0m for UnhandledException in contract 'CryptrustToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(252)

[33mWarning[0m for UnhandledException in contract 'CryptrustToken':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(269)

[33mWarning[0m for UnhandledException in contract 'CryptrustToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(270)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptrustToken':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(245)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptrustToken':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(252)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptrustToken':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptrustToken':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |        require( totalDistributed < totalSupply );
    |        
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |        
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptrustToken':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(168)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * https://www.cryptrust.io
    | */
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0xec51b23fc8145e54ae42feefbf16a92b64e7119d.sol(11)


