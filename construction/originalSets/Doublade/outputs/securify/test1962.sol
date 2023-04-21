Processing contract: /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol:ForeignToken
Processing contract: /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol:Hadescoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    |
    |
  > |contract ContractReceiver {
    |     
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    
    |    
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |      TKN memory tkn;
    |      tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    |
    |
  > |contract ContractReceiver {
    |     
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(69)

[31mViolation[0m for DAOConstantGas in contract 'Hadescoin':
    |            require(value <= totalRemaining);
    |            distr(investor, value);
  > |            if(!owner.send(etherValue))revert();           
    |
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(388)

[33mWarning[0m for DAOConstantGas in contract 'Hadescoin':
    |    function withdraw(address receiveAddress) onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        if(!receiveAddress.send(etherBalance))revert();   
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(441)

[33mWarning[0m for LockedEther in contract 'Hadescoin':
    |
    |
  > |contract Hadescoin is ERC223  {
    |    
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(104)

[31mViolation[0m for TODAmount in contract 'Hadescoin':
    |    function withdraw(address receiveAddress) onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        if(!receiveAddress.send(etherBalance))revert();   
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(441)

[33mWarning[0m for TODAmount in contract 'Hadescoin':
    |            require(value <= totalRemaining);
    |            distr(investor, value);
  > |            if(!owner.send(etherValue))revert();           
    |
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(388)

[31mViolation[0m for TODReceiver in contract 'Hadescoin':
    |            require(value <= totalRemaining);
    |            distr(investor, value);
  > |            if(!owner.send(etherValue))revert();           
    |
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(388)

[33mWarning[0m for TODReceiver in contract 'Hadescoin':
    |    function withdraw(address receiveAddress) onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        if(!receiveAddress.send(etherBalance))revert();   
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(441)

[33mWarning[0m for UnhandledException in contract 'Hadescoin':
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(185)

[33mWarning[0m for UnhandledException in contract 'Hadescoin':
    |    balances[_to] = balances[_to].add(_value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(248)

[33mWarning[0m for UnhandledException in contract 'Hadescoin':
    |            require(value <= totalRemaining);
    |            distr(investor, value);
  > |            if(!owner.send(etherValue))revert();           
    |
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(388)

[33mWarning[0m for UnhandledException in contract 'Hadescoin':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint256){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint256 bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(435)

[33mWarning[0m for UnhandledException in contract 'Hadescoin':
    |    function withdraw(address receiveAddress) onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        if(!receiveAddress.send(etherBalance))revert();   
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(441)

[33mWarning[0m for UnhandledException in contract 'Hadescoin':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(456)

[33mWarning[0m for UnhandledException in contract 'Hadescoin':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(457)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hadescoin':
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(185)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hadescoin':
    |    balances[_to] = balances[_to].add(_value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(248)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hadescoin':
    |            require(value <= totalRemaining);
    |            distr(investor, value);
  > |            if(!owner.send(etherValue))revert();           
    |
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(388)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hadescoin':
    |    function getTokenBalance(address tokenAddress, address who) constant public returns (uint256){
    |        ForeignToken t = ForeignToken(tokenAddress);
  > |        uint256 bal = t.balanceOf(who);
    |        return bal;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(435)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hadescoin':
    |    function withdraw(address receiveAddress) onlyOwner public {
    |        uint256 etherBalance = this.balance;
  > |        if(!receiveAddress.send(etherBalance))revert();   
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(441)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hadescoin':
    |    function withdrawForeignTokens(address _tokenContract) onlyOwner public returns (bool) {
    |        ForeignToken token = ForeignToken(_tokenContract);
  > |        uint256 amount = token.balanceOf(address(this));
    |        return token.transfer(owner, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Hadescoin':
    |        ForeignToken token = ForeignToken(_tokenContract);
    |        uint256 amount = token.balanceOf(address(this));
  > |        return token.transfer(owner, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(457)

[31mViolation[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        require(addresses.length <= 255);
    |        for (uint8 i = 0; i < addresses.length; i++) {
  > |            blacklist[addresses[i]] = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        require(addresses.length <= 255);
    |        for (uint8 i = 0; i < addresses.length; i++) {
  > |            blacklist[addresses[i]] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(277)

[31mViolation[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        for (uint8 i = 0; i < addresses.length; i++) {
    |            require(_amount[i] <= maxIncrease);
  > |            increase[addresses[i]] = _amount[i];
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(284)

[31mViolation[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        
    |        if (toGiveBase > totalRemaining) {
  > |            toGiveBase = totalRemaining;
    |        }
    |        address investor = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    if(isContract(_to)) {
    |        if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        if (balanceOf(msg.sender) < _value) revert();
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value, _data);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    ContractReceiver receiver = ContractReceiver(_to);
    |    receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        require(totalRemaining >= 0);
    |        require(_amount<=totalRemaining);
  > |        totalDistributed = totalDistributed.add(_amount);
    |        totalRemaining = totalRemaining.sub(_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        require(_amount<=totalRemaining);
    |        totalDistributed = totalDistributed.add(_amount);
  > |        totalRemaining = totalRemaining.sub(_amount);
    |
    |        balances[_to] = balances[_to].add(_amount);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        totalRemaining = totalRemaining.sub(_amount);
    |
  > |        balances[_to] = balances[_to].add(_amount);
    |
    |        Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |  
    |        if (totalDistributed >= totalSupply_) {
  > |            distributionFinished = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |            
    |            if (totalDistributed >= totalSupply_) {
  > |                distributionFinished = true;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |            value=value.add(increase[investor].mul(increaseBase));
    |            value=value.add(toGiveBase);
  > |            increase[investor]+=1;
    |            distr(investor, value);
    |            unlockUnixTime[investor]=now+1 days;
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |            increase[investor]+=1;
    |            distr(investor, value);
  > |            unlockUnixTime[investor]=now+1 days;
    |        }        
    |        if (totalDistributed >= totalSupply_) {
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        }        
    |        if (totalDistributed >= totalSupply_) {
  > |            distributionFinished = true;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(402)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |                && blacklist[_to] == false);
    |
  > |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |
    |        balances[_from] = balances[_from].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |  
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(424)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        require(_value <= balances[msg.sender]);
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply_ = totalSupply_.sub(_value);
    |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply_ = totalSupply_.sub(_value);
  > |        totalDistributed = totalDistributed.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    function changeOwner(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |      }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    }
    |    function finishDistribution() onlyOwner canDistr public returns (bool) {
  > |        distributionFinished = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(288)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    }
    |    function startDistribution() onlyOwner  public returns (bool) {
  > |        distributionFinished = false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    }
    |    function finishFreeGet() onlyOwner canDistr public returns (bool) {
  > |        finishFreeGetToken = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    }
    |    function finishEthGet() onlyOwner canDistr public returns (bool) {
  > |        finishEthGetToken = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    }
    |    function startFreeGet() onlyOwner canDistr public returns (bool) {
  > |        finishFreeGetToken = false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(304)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    }
    |    function startEthGet() onlyOwner canDistr public returns (bool) {
  > |        finishEthGetToken = false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(308)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    }
    |    function startTransfer() onlyOwner  public returns (bool) {
  > |        canTransfer = true;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    }
    |    function stopTransfer() onlyOwner  public returns (bool) {
  > |        canTransfer = false;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(316)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    }
    |    function changeBaseValue(uint256 _toGiveBase,uint256 _increaseBase,uint256 _etherGetBase,uint _maxIncrease) onlyOwner public returns (bool) {
  > |        toGiveBase = _toGiveBase;
    |        increaseBase = _increaseBase;
    |        etherGetBase=_etherGetBase;
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |    function changeBaseValue(uint256 _toGiveBase,uint256 _increaseBase,uint256 _etherGetBase,uint _maxIncrease) onlyOwner public returns (bool) {
    |        toGiveBase = _toGiveBase;
  > |        increaseBase = _increaseBase;
    |        etherGetBase=_etherGetBase;
    |        maxIncrease=_maxIncrease;
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        toGiveBase = _toGiveBase;
    |        increaseBase = _increaseBase;
  > |        etherGetBase=_etherGetBase;
    |        maxIncrease=_maxIncrease;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'Hadescoin':
    |        increaseBase = _increaseBase;
    |        etherGetBase=_etherGetBase;
  > |        maxIncrease=_maxIncrease;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(323)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x7ed172530f9822cd0573b895853e3f745f4108b4.sol(20)


