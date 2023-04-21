Processing contract: /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol:ReverseRegistrar
Processing contract: /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol:SimpleSaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol:iERC20Token
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    Overflow protected math functions
    |*/
  > |contract SafeMath {
    |    /**
    |        constructor
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(6)

[31mViolation[0m for DAOConstantGas in contract 'SimpleSaleToken':
    |    require(beneficiary != 0);
    |    //beneficiary is most likely a contract...
  > |    if (!beneficiary.call.gas(contractSendGas).value(this.balance)())
    |      revert();
    |    tokensRemaining = 0;
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(231)

[33mWarning[0m for DAOConstantGas in contract 'SimpleSaleToken':
    |    tokensRemaining = safeSub(tokensRemaining, _quantity);
    |    if (_refund > 0)
  > |        msg.sender.transfer(_refund);
    |    PaymentEvent(msg.sender, msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(205)

[33mWarning[0m for LockedEther in contract 'SimpleSaleToken':
    |
    |
  > |contract SimpleSaleToken is iERC20Token, SafeMath {
    |
    |  event PaymentEvent(address indexed from, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(77)

[31mViolation[0m for TODAmount in contract 'SimpleSaleToken':
    |    tokensRemaining = safeSub(tokensRemaining, _quantity);
    |    if (_refund > 0)
  > |        msg.sender.transfer(_refund);
    |    PaymentEvent(msg.sender, msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(205)

[31mViolation[0m for TODAmount in contract 'SimpleSaleToken':
    |    require(beneficiary != 0);
    |    //beneficiary is most likely a contract...
  > |    if (!beneficiary.call.gas(contractSendGas).value(this.balance)())
    |      revert();
    |    tokensRemaining = 0;
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(231)

[31mViolation[0m for TODReceiver in contract 'SimpleSaleToken':
    |    require(beneficiary != 0);
    |    //beneficiary is most likely a contract...
  > |    if (!beneficiary.call.gas(contractSendGas).value(this.balance)())
    |      revert();
    |    tokensRemaining = 0;
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(231)

[33mWarning[0m for TODReceiver in contract 'SimpleSaleToken':
    |    tokensRemaining = safeSub(tokensRemaining, _quantity);
    |    if (_refund > 0)
  > |        msg.sender.transfer(_refund);
    |    PaymentEvent(msg.sender, msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(205)

[33mWarning[0m for UnhandledException in contract 'SimpleSaleToken':
    |    tokensRemaining = safeSub(tokensRemaining, _quantity);
    |    if (_refund > 0)
  > |        msg.sender.transfer(_refund);
    |    PaymentEvent(msg.sender, msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(205)

[33mWarning[0m for UnhandledException in contract 'SimpleSaleToken':
    |    require(beneficiary != 0);
    |    //beneficiary is most likely a contract...
  > |    if (!beneficiary.call.gas(contractSendGas).value(this.balance)())
    |      revert();
    |    tokensRemaining = 0;
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleSaleToken':
    |    require(beneficiary != 0);
    |    //beneficiary is most likely a contract...
  > |    if (!beneficiary.call.gas(contractSendGas).value(this.balance)())
    |      revert();
    |    tokensRemaining = 0;
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(231)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |
    |
  > |contract SimpleSaleToken is iERC20Token, SafeMath {
    |
    |  event PaymentEvent(address indexed from, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |    //prevent wrap
    |    if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  > |      balances[msg.sender] -= _value;
    |      balances[_to] += _value;
    |      TransferEvent(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |      balances[_from] -= _value;
    |      balances[_to] += _value;
  > |      approvals[_from][msg.sender] -= _value;
    |      TransferEvent(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |
    |  function approve(address _spender, uint _value) public onlyPayloadSize(2*32) returns (bool success) {
  > |    approvals[msg.sender][_spender] = _value;
    |    ApprovalEvent(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |    uint _cost = safeMul(_quantity, tokenPrice);
    |    uint _refund = safeSub(msg.value, _cost);
  > |    balances[msg.sender] = safeAdd(balances[msg.sender], _quantity);
    |    tokenSupply = safeAdd(tokenSupply, _quantity);
    |    tokensRemaining = safeSub(tokensRemaining, _quantity);
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |
    |
  > |contract SimpleSaleToken is iERC20Token, SafeMath {
    |
    |  event PaymentEvent(address indexed from, uint amount);
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |  //if decimals = 3, and you want 1 ETH/token, then pass in _tokenPrice = 0.001 * (wei / ether)
    |  function setBeneficiary(address _beneficiary, uint _decimals, uint _tokenPrice, uint _tokensRemaining) public ownerOnly unlockedOnly {
  > |    beneficiary = _beneficiary;
    |    decimals = _decimals;
    |    tokenPrice = _tokenPrice;
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |  function setBeneficiary(address _beneficiary, uint _decimals, uint _tokenPrice, uint _tokensRemaining) public ownerOnly unlockedOnly {
    |    beneficiary = _beneficiary;
  > |    decimals = _decimals;
    |    tokenPrice = _tokenPrice;
    |    tokensRemaining = _tokensRemaining;
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |    beneficiary = _beneficiary;
    |    decimals = _decimals;
  > |    tokenPrice = _tokenPrice;
    |    tokensRemaining = _tokensRemaining;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |    decimals = _decimals;
    |    tokenPrice = _tokenPrice;
  > |    tokensRemaining = _tokensRemaining;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |  function lock() public ownerOnly {
    |    require(beneficiary != 0 && tokenPrice != 0);
  > |    isLocked = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |    if (!beneficiary.call.gas(contractSendGas).value(this.balance)())
    |      revert();
  > |    tokensRemaining = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleSaleToken':
    |
    |  function tune(uint _contractSendGas) public ownerOnly {
  > |    contractSendGas = _contractSendGas;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x96ddcf85c3798f01dae5212c6984f9cc467111f6.sol(237)


