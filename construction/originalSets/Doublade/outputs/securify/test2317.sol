Processing contract: /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol:DiscountCoins
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] = balances[_from].sub(_value);
    |        // Add the same to the recipient
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(102)

[33mWarning[0m for DAOConstantGas in contract 'DiscountCoins':
    |        require(address(this).balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount * 10 ** uint256(decimals));              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(236)

[33mWarning[0m for LockedEther in contract 'DiscountCoins':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract DiscountCoins is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(147)

[33mWarning[0m for TODAmount in contract 'DiscountCoins':
    |        require(address(this).balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount * 10 ** uint256(decimals));              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(236)

[33mWarning[0m for TODReceiver in contract 'DiscountCoins':
    |        require(address(this).balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount * 10 ** uint256(decimals));              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(236)

[33mWarning[0m for UnhandledException in contract 'DiscountCoins':
    |        require(address(this).balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount * 10 ** uint256(decimals));              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(236)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DiscountCoins':
    |        require(address(this).balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount * 10 ** uint256(decimals));              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'DiscountCoins':
    |  
    |  function setPrices(uint256 newSellPrice, uint256 newBuyPrice) public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'DiscountCoins':
    |  function setPrices(uint256 newSellPrice, uint256 newBuyPrice) public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscountCoins':
    |        uint previousBalances = balances[_from] + balances[_to];
    |        // Subtract from the sender
  > |        balances[_from] = balances[_from].sub(_value);
    |        // Add the same to the recipient
    |        balances[_to] = balances[_to].add(_value);
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscountCoins':
    |        balances[_from] = balances[_from].sub(_value);
    |        // Add the same to the recipient
  > |        balances[_to] = balances[_to].add(_value);
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscountCoins':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscountCoins':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscountCoins':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'DiscountCoins':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(201)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x96ef34ba488dd40c4bfc313c2694eab5a02509c3.sol(9)


