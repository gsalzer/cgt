Processing contract: /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol:ExGirlfriendCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'ExGirlfriendCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(263)

[33mWarning[0m for LockedEther in contract 'ExGirlfriendCoin':
    |}
    |
  > |contract ExGirlfriendCoin is ERC20 {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(52)

[31mViolation[0m for TODAmount in contract 'ExGirlfriendCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(263)

[31mViolation[0m for TODReceiver in contract 'ExGirlfriendCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(263)

[33mWarning[0m for UnhandledException in contract 'ExGirlfriendCoin':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(257)

[33mWarning[0m for UnhandledException in contract 'ExGirlfriendCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(263)

[33mWarning[0m for UnhandledException in contract 'ExGirlfriendCoin':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(280)

[33mWarning[0m for UnhandledException in contract 'ExGirlfriendCoin':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(281)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExGirlfriendCoin':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(257)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExGirlfriendCoin':
    |    function withdraw() onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(263)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExGirlfriendCoin':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(280)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExGirlfriendCoin':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(281)

[31mViolation[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |    function enableWhitelist(address[] addresses) onlyOwner public {
    |        for (uint i = 0; i < addresses.length; i++) {
  > |            blacklist[addresses[i]] = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |    function disableWhitelist(address[] addresses) onlyOwner public {
    |        for (uint i = 0; i < addresses.length; i++) {
  > |            blacklist[addresses[i]] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |    
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);
  > |        totalRemaining = totalRemaining.sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Distr(_to, _amount);
    |        Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |	
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |	
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |            
    |            if (totalDistributed >= totalSupply) {
  > |                distributionFinished = true;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |        require(_amount <= balances[msg.sender]);
    |        
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |        
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |        
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |        // mitigates the ERC20 spend/approval race condition
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'ExGirlfriendCoin':
    |
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(123)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xbb3c393e6a053c783ce9cc178865b714a87ad95e.sol(3)


