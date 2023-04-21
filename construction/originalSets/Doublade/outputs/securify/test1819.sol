Processing contract: /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol:AltcoinToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol:BitcoinNext
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'BitcoinNext':
    |        
    |        if (tokens > 0) {
  > |			owner.transfer(msg.value);
    |            distr(investor, tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(175)

[33mWarning[0m for LockedEther in contract 'BitcoinNext':
    |}
    |
  > |contract BitcoinNext is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(64)

[31mViolation[0m for TODReceiver in contract 'BitcoinNext':
    |        
    |        if (tokens > 0) {
  > |			owner.transfer(msg.value);
    |            distr(investor, tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(175)

[33mWarning[0m for UnhandledException in contract 'BitcoinNext':
    |        
    |        if (tokens > 0) {
  > |			owner.transfer(msg.value);
    |            distr(investor, tokens);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(175)

[33mWarning[0m for UnhandledException in contract 'BitcoinNext':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(232)

[33mWarning[0m for UnhandledException in contract 'BitcoinNext':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(241)

[33mWarning[0m for UnhandledException in contract 'BitcoinNext':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(242)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitcoinNext':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        AltcoinToken t = AltcoinToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(232)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitcoinNext':
    |    function withdrawAltcoinTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        AltcoinToken token = AltcoinToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitcoinNext':
    |        AltcoinToken token = AltcoinToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |        require( totalDistributed < totalSupply );
    |        
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |        
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BitcoinNext':
    |
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(156)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x74806fe176d5f508f72a375eafdb4692ccd08687.sol(3)


