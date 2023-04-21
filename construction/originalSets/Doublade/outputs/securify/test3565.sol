Processing contract: /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol:Linkmanagement
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'Linkmanagement':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(210)

[33mWarning[0m for LockedEther in contract 'Linkmanagement':
    |}
    |
  > |contract Linkmanagement is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(60)

[31mViolation[0m for TODAmount in contract 'Linkmanagement':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(210)

[31mViolation[0m for TODReceiver in contract 'Linkmanagement':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(210)

[33mWarning[0m for UnhandledException in contract 'Linkmanagement':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(204)

[33mWarning[0m for UnhandledException in contract 'Linkmanagement':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(210)

[33mWarning[0m for UnhandledException in contract 'Linkmanagement':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(225)

[33mWarning[0m for UnhandledException in contract 'Linkmanagement':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Linkmanagement':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(204)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Linkmanagement':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Linkmanagement':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Linkmanagement':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |    function getTokens() payable canDistr onlyWhitelist public {
    |        if (value > totalRemaining) {
  > |            value = totalRemaining;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);
  > |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |        
    |        if (toGive > 0) {
  > |            blacklist[investor] = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |        }
    |        
  > |        value = value.div(100000).mul(99999);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Linkmanagement':
    |    
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(115)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.22;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe99ddae9181957e91b457e4c79a1b577e55a5742.sol(11)


