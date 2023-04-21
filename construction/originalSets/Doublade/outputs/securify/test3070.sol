Processing contract: /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol:RxEALTestSaleContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol:RxEALTokenContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(83)

[33mWarning[0m for DAOConstantGas in contract 'RxEALTestSaleContract':
    |    // If buyer sends amount of wei that can not be divided to 4 without float point, send all wei to first wallet
    |    if (value.mul(4) != weiAmount) {
  > |      wallet1.transfer(weiAmount);
    |    } else {
    |      wallet1.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(453)

[33mWarning[0m for DAOConstantGas in contract 'RxEALTestSaleContract':
    |      wallet1.transfer(weiAmount);
    |    } else {
  > |      wallet1.transfer(value);
    |      wallet2.transfer(value);
    |      wallet3.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(455)

[33mWarning[0m for DAOConstantGas in contract 'RxEALTestSaleContract':
    |    } else {
    |      wallet1.transfer(value);
  > |      wallet2.transfer(value);
    |      wallet3.transfer(value);
    |      wallet4.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(456)

[33mWarning[0m for DAOConstantGas in contract 'RxEALTestSaleContract':
    |      wallet1.transfer(value);
    |      wallet2.transfer(value);
  > |      wallet3.transfer(value);
    |      wallet4.transfer(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(457)

[33mWarning[0m for DAOConstantGas in contract 'RxEALTestSaleContract':
    |      wallet2.transfer(value);
    |      wallet3.transfer(value);
  > |      wallet4.transfer(value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(458)

[33mWarning[0m for LockedEther in contract 'RxEALTestSaleContract':
    |
    |
  > |contract RxEALTestSaleContract {
    |  // Extend uint256 to use SafeMath functions
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(298)

[33mWarning[0m for TODAmount in contract 'RxEALTestSaleContract':
    |    // If have spare wei, send it back to beneficiary
    |    if (left_wei > 0) {
  > |      beneficiary.transfer(left_wei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(437)

[33mWarning[0m for TODAmount in contract 'RxEALTestSaleContract':
    |    // If buyer sends amount of wei that can not be divided to 4 without float point, send all wei to first wallet
    |    if (value.mul(4) != weiAmount) {
  > |      wallet1.transfer(weiAmount);
    |    } else {
    |      wallet1.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(453)

[33mWarning[0m for TODAmount in contract 'RxEALTestSaleContract':
    |      wallet1.transfer(weiAmount);
    |    } else {
  > |      wallet1.transfer(value);
    |      wallet2.transfer(value);
    |      wallet3.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(455)

[33mWarning[0m for TODAmount in contract 'RxEALTestSaleContract':
    |    } else {
    |      wallet1.transfer(value);
  > |      wallet2.transfer(value);
    |      wallet3.transfer(value);
    |      wallet4.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(456)

[33mWarning[0m for TODAmount in contract 'RxEALTestSaleContract':
    |      wallet1.transfer(value);
    |      wallet2.transfer(value);
  > |      wallet3.transfer(value);
    |      wallet4.transfer(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(457)

[33mWarning[0m for TODAmount in contract 'RxEALTestSaleContract':
    |      wallet2.transfer(value);
    |      wallet3.transfer(value);
  > |      wallet4.transfer(value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(458)

[33mWarning[0m for TODReceiver in contract 'RxEALTestSaleContract':
    |    // If have spare wei, send it back to beneficiary
    |    if (left_wei > 0) {
  > |      beneficiary.transfer(left_wei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(437)

[33mWarning[0m for UnhandledException in contract 'RxEALTestSaleContract':
    |    // If have spare wei, send it back to beneficiary
    |    if (left_wei > 0) {
  > |      beneficiary.transfer(left_wei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(437)

[33mWarning[0m for UnhandledException in contract 'RxEALTestSaleContract':
    |
    |    // Tranfer tokens from vault
  > |    token.transferTokensFromVault(msg.sender, beneficiary, tokens_amount);
    |    TokenPurchase(msg.sender, beneficiary, purchase_wei_amount, tokens_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(441)

[33mWarning[0m for UnhandledException in contract 'RxEALTestSaleContract':
    |    // If buyer sends amount of wei that can not be divided to 4 without float point, send all wei to first wallet
    |    if (value.mul(4) != weiAmount) {
  > |      wallet1.transfer(weiAmount);
    |    } else {
    |      wallet1.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(453)

[33mWarning[0m for UnhandledException in contract 'RxEALTestSaleContract':
    |      wallet1.transfer(weiAmount);
    |    } else {
  > |      wallet1.transfer(value);
    |      wallet2.transfer(value);
    |      wallet3.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(455)

[33mWarning[0m for UnhandledException in contract 'RxEALTestSaleContract':
    |    } else {
    |      wallet1.transfer(value);
  > |      wallet2.transfer(value);
    |      wallet3.transfer(value);
    |      wallet4.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(456)

[33mWarning[0m for UnhandledException in contract 'RxEALTestSaleContract':
    |      wallet1.transfer(value);
    |      wallet2.transfer(value);
  > |      wallet3.transfer(value);
    |      wallet4.transfer(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(457)

[33mWarning[0m for UnhandledException in contract 'RxEALTestSaleContract':
    |      wallet2.transfer(value);
    |      wallet3.transfer(value);
  > |      wallet4.transfer(value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(458)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RxEALTestSaleContract':
    |    // If have spare wei, send it back to beneficiary
    |    if (left_wei > 0) {
  > |      beneficiary.transfer(left_wei);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(437)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RxEALTestSaleContract':
    |
    |    // Tranfer tokens from vault
  > |    token.transferTokensFromVault(msg.sender, beneficiary, tokens_amount);
    |    TokenPurchase(msg.sender, beneficiary, purchase_wei_amount, tokens_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(441)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RxEALTestSaleContract':
    |    // If buyer sends amount of wei that can not be divided to 4 without float point, send all wei to first wallet
    |    if (value.mul(4) != weiAmount) {
  > |      wallet1.transfer(weiAmount);
    |    } else {
    |      wallet1.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(453)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RxEALTestSaleContract':
    |      wallet1.transfer(weiAmount);
    |    } else {
  > |      wallet1.transfer(value);
    |      wallet2.transfer(value);
    |      wallet3.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(455)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RxEALTestSaleContract':
    |    } else {
    |      wallet1.transfer(value);
  > |      wallet2.transfer(value);
    |      wallet3.transfer(value);
    |      wallet4.transfer(value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(456)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RxEALTestSaleContract':
    |      wallet1.transfer(value);
    |      wallet2.transfer(value);
  > |      wallet3.transfer(value);
    |      wallet4.transfer(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(457)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RxEALTestSaleContract':
    |      wallet2.transfer(value);
    |      wallet3.transfer(value);
  > |      wallet4.transfer(value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(458)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTestSaleContract':
    |
    |        // Reset current tier sold tokens
  > |        current_tier_sold_tokens = 0;
    |        // Switch to next tier
    |        current_tier = next_tier;
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTestSaleContract':
    |        current_tier_sold_tokens = 0;
    |        // Switch to next tier
  > |        current_tier = next_tier;
    |      } else {
    |        // If purchase not reached tier cap
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTestSaleContract':
    |        tokens_can_be_sold = tokens_to_be_sold;
    |        // Update current tier sold tokens
  > |        current_tier_sold_tokens = new_tier_sold_tokens;
    |      }
    |
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTestSaleContract':
    |    // Update state of raised wei amount and sold tokens ammount
    |    uint256 purchase_wei_amount = msg.value.sub(left_wei);
  > |    weiRaised = weiRaised.add(purchase_wei_amount);
    |    soldTokens = soldTokens.add(tokens_amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(432)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTestSaleContract':
    |    uint256 purchase_wei_amount = msg.value.sub(left_wei);
    |    weiRaised = weiRaised.add(purchase_wei_amount);
  > |    soldTokens = soldTokens.add(tokens_amount);
    |
    |    // If have spare wei, send it back to beneficiary
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(433)

[33mWarning[0m for LockedEther in contract 'RxEALTokenContract':
    | */
    |
  > |contract RxEALTokenContract is StandardToken {
    |
    |  /* ********** Token Predefined Information ********** */
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(201)

[31mViolation[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |  function grantOwnership(address _owner) onlyOwner public {
    |    require(_owner != address(0));
  > |    owners[_owner] = true;
    |    OwnershipGranted(msg.sender, _owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |  function transferSalesAgentPermissions(address _salesAgent) onlyOwner public {
    |    SalesAgentPermissionsTransferred(salesAgent, _salesAgent);
  > |    salesAgent = _salesAgent;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |  function removeSalesAgent() onlyOwner public {
    |    SalesAgentRemoved(salesAgent);
  > |    salesAgent = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |    // require (_value <= _allowance);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |  function transferTokensFromVault(address _from, address _to, uint256 _amount) public {
    |    require(salesAgent == msg.sender);
  > |    balances[vault] = balances[vault].sub(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |    require(salesAgent == msg.sender);
    |    balances[vault] = balances[vault].sub(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Transfer(_from, _to, _amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |  function burn(uint256 _value) onlyOwner public {
    |    require(_value > 0);
  > |    balances[vault] = balances[vault].sub(_value);
    |    totalSupply = totalSupply.sub(_value);
    |    Burn(_value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(285)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |    require(_value > 0);
    |    balances[vault] = balances[vault].sub(_value);
  > |    totalSupply = totalSupply.sub(_value);
    |    Burn(_value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(286)

[33mWarning[0m for UnrestrictedWrite in contract 'RxEALTokenContract':
    |  function revokeOwnership(address _owner) onlyOwner public {
    |    require(_owner != msg.sender);
  > |    owners[_owner] = false;
    |    OwnershipRevoked(msg.sender, _owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(258)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(26)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc921dc114987cb3b5ee26e1856e4d4db14ce5c8e.sol(179)


