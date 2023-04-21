Processing contract: /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol:DIZOOL
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'DIZOOL':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    function burn(uint256 _value) onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(179)

[33mWarning[0m for LockedEther in contract 'DIZOOL':
    |    event Approval(address indexed owner, address indexed spender, uint256 value);
    |}
  > |contract DIZOOL is ERC20 {
    |    using SafeMath for uint256;
    |    address owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(41)

[31mViolation[0m for TODAmount in contract 'DIZOOL':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    function burn(uint256 _value) onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(179)

[31mViolation[0m for TODReceiver in contract 'DIZOOL':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    function burn(uint256 _value) onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(179)

[33mWarning[0m for UnhandledException in contract 'DIZOOL':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(173)

[33mWarning[0m for UnhandledException in contract 'DIZOOL':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    function burn(uint256 _value) onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(179)

[33mWarning[0m for UnhandledException in contract 'DIZOOL':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(191)

[33mWarning[0m for UnhandledException in contract 'DIZOOL':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(192)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DIZOOL':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(173)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DIZOOL':
    |        address myAddress = this;
    |        uint256 etherBalance = myAddress.balance;
  > |        owner.transfer(etherBalance);
    |    }
    |    function burn(uint256 _value) onlyOwner public {
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DIZOOL':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DIZOOL':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |    }
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
  > |        totalDistributed = totalDistributed.add(_amount);        
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |    function distr(address _to, uint256 _amount) canDistr private returns (bool) {
    |        totalDistributed = totalDistributed.add(_amount);        
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Distr(_to, _amount);
    |        emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |        require(_amount > 0);      
    |        require(totalDistributed < totalSupply);
  > |        balances[_participant] = balances[_participant].add(_amount);
    |        totalDistributed = totalDistributed.add(_amount);
    |        if (totalDistributed >= totalSupply) {
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |        require(totalDistributed < totalSupply);
    |        balances[_participant] = balances[_participant].add(_amount);
  > |        totalDistributed = totalDistributed.add(_amount);
    |        if (totalDistributed >= totalSupply) {
    |            distributionFinished = true;
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |        totalDistributed = totalDistributed.add(_amount);
    |        if (totalDistributed >= totalSupply) {
  > |            distributionFinished = true;
    |        }
    |        emit Airdrop(_participant, _amount, balances[_participant]);
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |        require(_to != address(0));
    |        require(_amount <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |        require(_amount <= balances[msg.sender]);
    |        balances[msg.sender] = balances[msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(msg.sender, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |        require(_amount <= balances[_from]);
    |        require(_amount <= allowed[_from][msg.sender]);
  > |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |        require(_amount <= allowed[_from][msg.sender]);
    |        balances[_from] = balances[_from].sub(_amount);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
    |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |        balances[_from] = balances[_from].sub(_amount);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
  > |        balances[_to] = balances[_to].add(_amount);
    |        emit Transfer(_from, _to, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        if (_value != 0 && allowed[msg.sender][_spender] != 0) { return false; }
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        emit Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |    }
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        emit DistrFinished();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'DIZOOL':
    |    }
    |    function updateTokensPerEth(uint _tokensPerEth) public onlyOwner {        
  > |        tokensPerEth = _tokensPerEth;
    |        emit TokensPerEthUpdated(_tokensPerEth);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(108)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.25;
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x8acd3047ed84be43f5555b40f946278f68887c1a.sol(3)


