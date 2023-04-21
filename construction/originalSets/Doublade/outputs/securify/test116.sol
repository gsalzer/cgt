Processing contract: /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol:Auth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol:EIP20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol:Manage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol:ShinHoDeung
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol:TokenBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Auth':
    |}
    |
  > |contract Auth {
    |    address owner = 0x0;
    |    address admin = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'Auth':
    |    }
    |    
  > |    function setOwner(address _owner) isOwner public {
    |        owner = _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'Auth':
    |    }
    |    
  > |    function setAdmin(address _admin) isOwner public {
    |        admin = _admin;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Auth':
    |    }
    |    
  > |    function getManagers() public view returns (address _owner, address _admin) {
    |        return (owner, admin);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Auth':
    |    
    |    function setOwner(address _owner) isOwner public {
  > |        owner = _owner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Auth':
    |    
    |    function setAdmin(address _admin) isOwner public {
  > |        admin = _admin;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(36)

[33mWarning[0m for LockedEther in contract 'Manage':
    |}
    |
  > |contract Manage is Auth {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'Manage':
    |    }
    |    
  > |    function setOwner(address _owner) isOwner public {
    |        owner = _owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'Manage':
    |    }
    |    
  > |    function setAdmin(address _admin) isOwner public {
    |        admin = _admin;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Manage':
    |    }
    |    
  > |    function getManagers() public view returns (address _owner, address _admin) {
    |        return (owner, admin);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Manage':
    |     *  0 : init, 1 : limited, 2 : running, 3 : finishing
    |     */
  > |    uint8 public status = 0;
    |
    |    modifier isRunning {
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Manage':
    |    }
    |
  > |    function limit() isAdmin public {
    |    	require(status != 1);
    |        status = 1;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Manage':
    |    }
    |    
  > |    function start() isAdmin public {
    |    	require(status != 2);
    |        status = 2;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Manage':
    |    }
    |    
  > |    function close() isAdmin public {
    |    	require(status != 3);
    |        status = 3;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Manage':
    |    
    |    function setOwner(address _owner) isOwner public {
  > |        owner = _owner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'Manage':
    |    
    |    function setAdmin(address _admin) isOwner public {
  > |        admin = _admin;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Manage':
    |    function limit() isAdmin public {
    |    	require(status != 1);
  > |        status = 1;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Manage':
    |    function start() isAdmin public {
    |    	require(status != 2);
  > |        status = 2;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Manage':
    |    function close() isAdmin public {
    |    	require(status != 3);
  > |        status = 3;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(68)

[33mWarning[0m for LockedEther in contract 'Math':
    |pragma solidity 0.4.25;
    |
  > | contract Math {
    |    function add(uint256 x, uint256 y) pure internal returns(uint256) {
    |      uint256 z = x + y;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(3)

[33mWarning[0m for DAOConstantGas in contract 'ShinHoDeung':
    |        require(myAddress.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(299)

[33mWarning[0m for LockedEther in contract 'ShinHoDeung':
    |}
    |
  > |contract ShinHoDeung is TokenBase {
    |    uint256 public sellPrice;
    |    uint256 public buyPrice;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(187)

[33mWarning[0m for TODAmount in contract 'ShinHoDeung':
    |        require(myAddress.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(299)

[33mWarning[0m for TODReceiver in contract 'ShinHoDeung':
    |        require(myAddress.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(299)

[33mWarning[0m for UnhandledException in contract 'ShinHoDeung':
    |        require(myAddress.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShinHoDeung':
    |        require(myAddress.balance >= amount * sellPrice);
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(299)

[31mViolation[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |        balances[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(159)

[31mViolation[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
  > |        balances[_from] -= _value;                         // Subtract from the targeted balance
    |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |        balances[_from] -= _value;                         // Subtract from the targeted balance
    |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(169)

[31mViolation[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |}
    |
  > |contract ShinHoDeung is TokenBase {
    |    uint256 public sellPrice;
    |    uint256 public buyPrice;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(187)

[31mViolation[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |		for (uint i=0; i<arrayLength; i++) {
    |			uint256 frozenBalance = balances[frozenAddresses[i]] * percent / 100;
  > |        	frozenBalances[frozenAddresses[i]] = frozenBalance;
    |		}
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    	deleteFrozenAddresses(target);
    |    
  > |        delete frozenBalances[target];
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(254)

[31mViolation[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |		
    |		address lastAddress = frozenAddresses[frozenAddresses.length-1];
  > |        frozenAddresses[indexToBeDeleted] = lastAddress;
    |        frozenAddresses.length--;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    	uint arrayLength = frozenAddresses.length;
    |		for (uint i=0; i<arrayLength; i++) {
  > |			delete frozenBalances[frozenAddresses[i]];
    |		}
    |        
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |
    | contract Math {
  > |    function add(uint256 x, uint256 y) pure internal returns(uint256) {
    |      uint256 z = x + y;
    |      assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |        require(balances[_to] + _value >= balances[_to]);
    |        uint previousBalances = balances[_from] + balances[_to];
  > |        balances[_from] = Math.subtract(balances[_from], _value);
    |        balances[_to] = Math.add(balances[_to], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        balances[_from] = Math.subtract(balances[_from], _value);
  > |        balances[_to] = Math.add(balances[_to], _value);
    |        emit Transfer(_from, _to, _value);
    |        assert(balances[_from] + balances[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowed[_from][msg.sender]);
  > |        allowed[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    function approve(address _spender, uint256 _value) isRunning public returns (bool success) {
    |        require(_value == 0 || allowed[msg.sender][_spender] == 0);
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    
    |    function increaseApproval(address _spender, uint256 _value) isRunning public returns (bool success) {
  > |   		allowed[msg.sender][_spender] = Math.add(allowed[msg.sender][_spender], _value);
    |   		emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |   		return true;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |	   	uint256 oldValue = allowed[msg.sender][_spender];
    |	   	if (_value >= oldValue) {
  > |	       allowed[msg.sender][_spender] = 0;
    |	   	} else {
    |	       allowed[msg.sender][_spender] = Math.subtract(oldValue, _value);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |	       allowed[msg.sender][_spender] = 0;
    |	   	} else {
  > |	       allowed[msg.sender][_spender] = Math.subtract(oldValue, _value);
    |	   	}
    |	   	emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
  > |        balances[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
    |        balances[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |        require(percent > 0 && percent <= 100);
    |        if(frozenBalances[target] == 0)
  > |        	frozenAddresses.push(target);
    |        
    |        uint256 frozenBalance = balances[target] * percent / 100;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |        
    |        uint256 frozenBalance = balances[target] * percent / 100;
  > |        frozenBalances[target] = frozenBalance;
    |        
    |        emit FrozenBalance(target, frozenBalance);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |
    | contract Math {
  > |    function add(uint256 x, uint256 y) pure internal returns(uint256) {
    |      uint256 z = x + y;
    |      assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    
    |    function setOwner(address _owner) isOwner public {
  > |        owner = _owner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    
    |    function setAdmin(address _admin) isOwner public {
  > |        admin = _admin;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    function limit() isAdmin public {
    |    	require(status != 1);
  > |        status = 1;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    function start() isAdmin public {
    |    	require(status != 2);
  > |        status = 2;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    function close() isAdmin public {
    |    	require(status != 3);
  > |        status = 3;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |        require(_value > 0);
    |        if(frozenBalances[target] == 0)
  > |        	frozenAddresses.push(target);
    |        	
    |        frozenBalances[target] += _value;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |        	frozenAddresses.push(target);
    |        	
  > |        frozenBalances[target] += _value;
    |        emit FrozenBalance(target, frozenBalances[target]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    function decreaseFrozenBalances(address target, uint256 _value) isAdmin public {
    |        require(_value > 0 && frozenBalances[target] >= _value);
  > |        frozenBalances[target] -= _value;
    |        
    |        if(frozenBalances[target] == 0)
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) isAdmin public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |        emit Price(sellPrice, buyPrice);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) isAdmin public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |        emit Price(sellPrice, buyPrice);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'ShinHoDeung':
    |    
    |    function setFreezePercent(uint8 percent) isAdmin public {
  > |    	freezePercent = percent;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(303)

[33mWarning[0m for LockedEther in contract 'TokenBase':
    |}
    |
  > |contract TokenBase is EIP20Interface, Manage, Math {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenBase':
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
    |        balances[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(159)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenBase':
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
  > |        balances[_from] -= _value;                         // Subtract from the targeted balance
    |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenBase':
    |        balances[_from] -= _value;                         // Subtract from the targeted balance
    |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |        require(balances[_to] + _value >= balances[_to]);
    |        uint previousBalances = balances[_from] + balances[_to];
  > |        balances[_from] = Math.subtract(balances[_from], _value);
    |        balances[_to] = Math.add(balances[_to], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowed[_from][msg.sender]);
  > |        allowed[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    function approve(address _spender, uint256 _value) isRunning public returns (bool success) {
    |        require(_value == 0 || allowed[msg.sender][_spender] == 0);
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    
    |    function increaseApproval(address _spender, uint256 _value) isRunning public returns (bool success) {
  > |   		allowed[msg.sender][_spender] = Math.add(allowed[msg.sender][_spender], _value);
    |   		emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |   		return true;
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |	   	uint256 oldValue = allowed[msg.sender][_spender];
    |	   	if (_value >= oldValue) {
  > |	       allowed[msg.sender][_spender] = 0;
    |	   	} else {
    |	       allowed[msg.sender][_spender] = Math.subtract(oldValue, _value);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |	       allowed[msg.sender][_spender] = 0;
    |	   	} else {
  > |	       allowed[msg.sender][_spender] = Math.subtract(oldValue, _value);
    |	   	}
    |	   	emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);   // Check if the sender has enough
  > |        balances[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
    |        balances[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    
    |    function setOwner(address _owner) isOwner public {
  > |        owner = _owner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    
    |    function setAdmin(address _admin) isOwner public {
  > |        admin = _admin;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    function limit() isAdmin public {
    |    	require(status != 1);
  > |        status = 1;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    function start() isAdmin public {
    |    	require(status != 2);
  > |        status = 2;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    function close() isAdmin public {
    |    	require(status != 3);
  > |        status = 3;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x07a5410e4d3ef9680137e0242ccdb78425cb6c43.sol(68)


