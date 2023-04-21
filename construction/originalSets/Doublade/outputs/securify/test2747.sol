Processing contract: /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol:BasicKNOW
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol:KNOW
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicKNOW':
    |}
    |
  > |contract BasicKNOW is ERC223 {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(70)

[33mWarning[0m for UnhandledException in contract 'BasicKNOW':
    |        if(isContract(_to)) {
    |            ContractReceiver receiver = ContractReceiver(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |            Transfer(msg.sender, _to, _value, _data);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(179)

[33mWarning[0m for UnhandledException in contract 'BasicKNOW':
    |
    |        if(isContract(_to)) {
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(205)

[33mWarning[0m for UnhandledException in contract 'BasicKNOW':
    |    // withdraw any ERC20 token in this contract to owner
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public returns (bool success) {
  > |        return ERC223(tokenAddress).transfer(owner, tokens);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BasicKNOW':
    |        if(isContract(_to)) {
    |            ContractReceiver receiver = ContractReceiver(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |            Transfer(msg.sender, _to, _value, _data);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BasicKNOW':
    |
    |        if(isContract(_to)) {
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BasicKNOW':
    |    // withdraw any ERC20 token in this contract to owner
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public returns (bool success) {
  > |        return ERC223(tokenAddress).transfer(owner, tokens);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicKNOW':
    |        require(_to != 0x0);
    |        balances[msg.sender] = balances[msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicKNOW':
    |        require(_to != 0x0);
    |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
  > |        balances[_to] = balanceOf(_to).add(_value);
    |        Transfer(msg.sender, _to, _value);
    |        if(isContract(_to)) {
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(175)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicKNOW':
    |        require(_to != 0x0);
    |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
  > |        balances[_to] = balanceOf(_to).add(_value);
    |        Transfer(msg.sender, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicKNOW':
    |    returns (bool success) {
    |        require(_to != 0x0);
  > |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicKNOW':
    |        balances[_from] = balances[_from].sub(_value);
    |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  > |        balances[_to] = balances[_to].add(_value);
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicKNOW':
    |    returns (bool success) {
    |        require(_to != 0x0);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicKNOW':
    |    returns (bool success) {
    |        require(_to != 0x0);
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicKNOW':
    |    returns (bool success) {
    |        require(_to != 0x0);
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicKNOW':
    |        require(_to != 0x0);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicKNOW':
    |    public
    |    returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicKNOW':
    |    public
    |    onlyOwner{
  > |        tradable = true;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(261)

[33mWarning[0m for DAOConstantGas in contract 'KNOW':
    |        // submit transfer
    |        Transfer(owner, msg.sender, requestedUnits);
  > |        owner.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(352)

[33mWarning[0m for DAOConstantGas in contract 'KNOW':
    |    public 
    |    returns (bool) {
  > |        return owner.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(446)

[33mWarning[0m for LockedEther in contract 'KNOW':
    |}
    |
  > |contract KNOW is BasicKNOW {
    |
    |    bool public _selling = false;//initial selling
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(265)

[31mViolation[0m for TODAmount in contract 'KNOW':
    |    public 
    |    returns (bool) {
  > |        return owner.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(446)

[31mViolation[0m for TODReceiver in contract 'KNOW':
    |        // submit transfer
    |        Transfer(owner, msg.sender, requestedUnits);
  > |        owner.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(352)

[31mViolation[0m for TODReceiver in contract 'KNOW':
    |    public 
    |    returns (bool) {
  > |        return owner.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(446)

[31mViolation[0m for UnhandledException in contract 'KNOW':
    |    public 
    |    returns (bool) {
  > |        return owner.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(446)

[33mWarning[0m for UnhandledException in contract 'KNOW':
    |        if(isContract(_to)) {
    |            ContractReceiver receiver = ContractReceiver(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |            Transfer(msg.sender, _to, _value, _data);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(179)

[33mWarning[0m for UnhandledException in contract 'KNOW':
    |
    |        if(isContract(_to)) {
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(205)

[33mWarning[0m for UnhandledException in contract 'KNOW':
    |    // withdraw any ERC20 token in this contract to owner
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public returns (bool success) {
  > |        return ERC223(tokenAddress).transfer(owner, tokens);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(253)

[33mWarning[0m for UnhandledException in contract 'KNOW':
    |        // submit transfer
    |        Transfer(owner, msg.sender, requestedUnits);
  > |        owner.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(352)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KNOW':
    |        if(isContract(_to)) {
    |            ContractReceiver receiver = ContractReceiver(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |            Transfer(msg.sender, _to, _value, _data);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KNOW':
    |
    |        if(isContract(_to)) {
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KNOW':
    |    // withdraw any ERC20 token in this contract to owner
    |    function transferAnyERC20Token(address tokenAddress, uint tokens) public returns (bool success) {
  > |        return ERC223(tokenAddress).transfer(owner, tokens);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'KNOW':
    |    public 
    |    returns (bool) {
  > |        return owner.send(this.balance);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(446)

[31mViolation[0m for UnrestrictedWrite in contract 'KNOW':
    |    public {
    |        for (uint256 i = 0; i < newInvestorList.length; i++){
  > |            approvedInvestorList[newInvestorList[i]] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(427)

[31mViolation[0m for UnrestrictedWrite in contract 'KNOW':
    |    public {
    |        for (uint256 i = 0; i < investorList.length; i++){
  > |            approvedInvestorList[investorList[i]] = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |    returns (bool success) {
    |        require(_to != 0x0);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |    returns (bool success) {
    |        require(_to != 0x0);
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |    returns (bool success) {
    |        require(_to != 0x0);
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |        require(_to != 0x0);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |    public
    |    returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |        // prepare transfer data
    |        balances[owner] = balances[owner].sub(requestedUnits);
  > |        balances[msg.sender] = balances[msg.sender].add(requestedUnits);
    |        
    |        // increase total deposit amount
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |        
    |        // increase total deposit amount
  > |        deposit[msg.sender] = deposit[msg.sender].add(msg.value);
    |        
    |        // check total and auto turnOffSale
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |    public
    |    onlyOwner{
  > |        tradable = true;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |    function turnOnSale() onlyOwner 
    |    public {
  > |        _selling = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |    function turnOffSale() onlyOwner 
    |    public {
  > |        _selling = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |    public 
    |    onlyOwner {
  > |        _icoPercent = newIcoPercent;
    |        _icoSupply = (_totalSupply * _icoPercent) / 100;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |    onlyOwner {
    |        _icoPercent = newIcoPercent;
  > |        _icoSupply = (_totalSupply * _icoPercent) / 100;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(379)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |    public 
    |    onlyOwner {
  > |        _maximumBuy = newMaximumBuy;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |    public {
    |        require(newBuyPrice>0);
  > |        _originalBuyPrice = newBuyPrice; // unit
    |        // control _maximumBuy_USD = 10,000 USD, KNOW price is 0.1USD
    |        // maximumBuy_KNOW = 100,000 KNOW = 100,000,0000000000 unit = 10^15
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'KNOW':
    |        // control _maximumBuy_USD = 10,000 USD, KNOW price is 0.1USD
    |        // maximumBuy_KNOW = 100,000 KNOW = 100,000,0000000000 unit = 10^15
  > |        _maximumBuy = (10**18 * 10**15) /_originalBuyPrice;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(399)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Contact: William@kryptono.exchange
    |
  > |library SafeMath {
    |
    |    function add(uint a, uint b) internal pure returns (uint c) {
  at /home/jiaming/mavs_srcs/contract@0xb41f09a973a85c7f497c10b00a939de667b55a78.sol(9)


