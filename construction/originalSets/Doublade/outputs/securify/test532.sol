Processing contract: /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol:CharityCashCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'CharityCashCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(213)

[33mWarning[0m for LockedEther in contract 'CharityCashCoin':
    |}
    |
  > |contract CharityCashCoin is ERC20 {
    |
    | 
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(56)

[31mViolation[0m for TODAmount in contract 'CharityCashCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(213)

[31mViolation[0m for TODReceiver in contract 'CharityCashCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(213)

[33mWarning[0m for UnhandledException in contract 'CharityCashCoin':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(207)

[33mWarning[0m for UnhandledException in contract 'CharityCashCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(213)

[33mWarning[0m for UnhandledException in contract 'CharityCashCoin':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(228)

[33mWarning[0m for UnhandledException in contract 'CharityCashCoin':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CharityCashCoin':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CharityCashCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(213)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CharityCashCoin':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CharityCashCoin':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |    function getTokens() payable canDistr onlyWhitelist public {
    |        if (value > totalRemaining) {
  > |            value = totalRemaining;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);
  > |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |        
    |        if (toGive > 0) {
  > |            blacklist[investor] = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |        }
    |        
  > |        value = value.div(100000).mul(99999);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'CharityCashCoin':
    |    
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(118)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.22;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x226efc1c4da1263730c9bf407403375913f5bf99.sol(7)


