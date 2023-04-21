Processing contract: /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol:Ryancoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Ryancoin':
    |        _totalSold = _totalSold.add(tokens);
    |        
  > |        owner.transfer(msg.value); //transfer ether to contract ower
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(133)

[33mWarning[0m for LockedEther in contract 'Ryancoin':
    |}
    |
  > |contract Ryancoin {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(37)

[31mViolation[0m for TODReceiver in contract 'Ryancoin':
    |        _totalSold = _totalSold.add(tokens);
    |        
  > |        owner.transfer(msg.value); //transfer ether to contract ower
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(133)

[33mWarning[0m for UnhandledException in contract 'Ryancoin':
    |        _totalSold = _totalSold.add(tokens);
    |        
  > |        owner.transfer(msg.value); //transfer ether to contract ower
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Ryancoin':
    |        _totalSold = _totalSold.add(tokens);
    |        
  > |        owner.transfer(msg.value); //transfer ether to contract ower
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        require(balances[msg.sender] >= _value);    // Check if the sender has enough
    |        balances[msg.sender] -= _value;             // Subtract from the sender
  > |        _totalSupply -= _value;                     // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        _transfer(owner, msg.sender, tokens);
    |        Transfer(owner, msg.sender, tokens);
  > |        _totalSold = _totalSold.add(tokens);
    |        
    |        owner.transfer(msg.value); //transfer ether to contract ower
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        uint256 previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] -= _value;
    |        // Set token holder list
    |        setTokenHolders(_to);
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        setTokenHolders(_to);
    |        // Add the same to the recipient
  > |        balances[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |    function setTokenHolders(address _holder) internal {
    |        if (_tokenAccount[_holder]) return;
  > |        tokenHolders.push(_holder) -1;
    |        _tokenAccount[_holder] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        if (_tokenAccount[_holder]) return;
    |        tokenHolders.push(_holder) -1;
  > |        _tokenAccount[_holder] = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        require(_value > 0);
    |        require(balances[msg.sender] >= _value);    // Check if the sender has enough
  > |        balances[msg.sender] -= _value;             // Subtract from the sender
    |        _totalSupply -= _value;                     // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        require(_value <= allowed[_from][msg.sender]);
    |        _transfer(_from, _to, _value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |    function approve(address _spender, uint256 _value) public returns (bool) {
    |        require(_spender != address(0));
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        require(_spender != address(0));
    |        require(_addedValue > 0);
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |        allowed[msg.sender][_spender] = 0;
    |        } else {
    |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        allowed[msg.sender][_spender] = 0;
    |        } else {
  > |        allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != 0x0);
  > |        owner = newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |    
    |    function stopContract() public onlyOwner {
  > |        _contractStatus = false;
    |        UpdateStatus("Contract is stop");
    |    }
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |    
    |    function enableContract() public onlyOwner {
  > |        _contractStatus = true;
    |        UpdateStatus("Contract is enable");
    |    }
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |    function updateRate(uint256 _value) onlyOwner public returns (bool success){
    |        require(_value > 0);
  > |        rate = 1 ether / (_value * (10 ** uint256(decimals)));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        require(_value > 0);
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
  > |        balances[_from] -= _value;                         // Subtract from the targeted balance
    |        _totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        require(balances[_from] >= _value);                // Check if the targeted balance is enough
    |        balances[_from] -= _value;                         // Subtract from the targeted balance
  > |        _totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        require(_target != address(0));
    |        require(_mintedAmount > 0);
  > |        balances[_target] += _mintedAmount;
    |        _totalSupply += _mintedAmount;
    |        setTokenHolders(_target);
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |        require(_mintedAmount > 0);
    |        balances[_target] += _mintedAmount;
  > |        _totalSupply += _mintedAmount;
    |        setTokenHolders(_target);
    |        Transfer(0, owner, _mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'Ryancoin':
    |    function freezeAccount(address _target, bool freeze) onlyOwner public {
    |        require(_target != 0x0);
  > |        _frozenAccount[_target] = freeze;
    |        FrozenFunds(_target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(226)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    | 
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x93765bd8e354192749e40088b3ce765e6e1824c9.sol(8)


