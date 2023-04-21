Processing contract: /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol:NePayReborn
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'NePayReborn':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(202)

[33mWarning[0m for LockedEther in contract 'NePayReborn':
    |}
    |
  > |contract NePayReborn is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(52)

[31mViolation[0m for TODAmount in contract 'NePayReborn':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(202)

[31mViolation[0m for TODReceiver in contract 'NePayReborn':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(202)

[33mWarning[0m for UnhandledException in contract 'NePayReborn':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(196)

[33mWarning[0m for UnhandledException in contract 'NePayReborn':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(202)

[33mWarning[0m for UnhandledException in contract 'NePayReborn':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(217)

[33mWarning[0m for UnhandledException in contract 'NePayReborn':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NePayReborn':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NePayReborn':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = address(this).balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NePayReborn':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(217)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NePayReborn':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'NePayReborn':
    |    function getTokens() payable canDistr onlyWhitelist public {
    |        if (value > totalRemaining) {
  > |            value = totalRemaining;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);
  > |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |        
    |        if (toGive > 0) {
  > |            blacklist[investor] = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |        }
    |        
  > |        value = value.div(100000).mul(99999);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'NePayReborn':
    |    
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(107)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.22;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6d009ecf0cb74554f1460fdf9ec7b24fd577d3f3.sol(3)


