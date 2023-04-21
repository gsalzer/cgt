Processing contract: /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol:UbetCoins
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() public{
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) onlyOwner public{
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner public{
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(30)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) pure internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(36)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
    |    var _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) public constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function approve(address _spender, uint _value) public returns (bool success) {
    |      
    |    allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) public constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) pure internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) pure internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) public constant returns (uint);
    |  function allowance(address owner, address spender) public constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) public returns (bool success) {
    |      
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |      
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // if (_value > _allowance) throw;
    |    
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function approve(address _spender, uint _value) public returns (bool success) {
    |      
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(106)

[33mWarning[0m for DAOConstantGas in contract 'UbetCoins':
    |
    |      /// forward the money to the money wallet
  > |      address(moneyWallet).transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(291)

[33mWarning[0m for LockedEther in contract 'UbetCoins':
    |}
    |
  > |contract UbetCoins is Ownable, StandardToken {
    |
    |    string public name = "Ubet Coins";
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(117)

[31mViolation[0m for TODAmount in contract 'UbetCoins':
    |
    |      /// forward the money to the money wallet
  > |      address(moneyWallet).transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(291)

[31mViolation[0m for TODReceiver in contract 'UbetCoins':
    |
    |      /// forward the money to the money wallet
  > |      address(moneyWallet).transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(291)

[33mWarning[0m for UnhandledException in contract 'UbetCoins':
    |
    |      /// forward the money to the money wallet
  > |      address(moneyWallet).transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UbetCoins':
    |
    |      /// forward the money to the money wallet
  > |      address(moneyWallet).transfer(address(this).balance);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(291)

[31mViolation[0m for UnrestrictedWrite in contract 'UbetCoins':
    |}
    |
  > |contract UbetCoins is Ownable, StandardToken {
    |
    |    string public name = "Ubet Coins";
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'UbetCoins':
    |      UBetCheck.institution = _institution;
    |      UBetCheck.fullName = _fullname;
  > |      UBetCheck.amount = _amount;
    |      UBetCheck.tokens = _tokens;
    |      
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'UbetCoins':
    |      UBetCheck.fullName = _fullname;
    |      UBetCheck.amount = _amount;
  > |      UBetCheck.tokens = _tokens;
    |      
    |      UBetCheck.checkFilePath = _checkFilePath;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(213)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |pragma solidity ^0.4.25;
    |
  > |// ----------------------------------------------------------------------------
    |// 'UBETCOINS' token contract
    |//
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |  function transfer(address _to, uint _value) public returns (bool success) {
    |      
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |      
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |    // if (_value > _allowance) throw;
    |    
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |    
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |  function approve(address _spender, uint _value) public returns (bool success) {
    |      
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |      UBetCheck.digitalCheckFingerPrint = _digitalCheckFingerPrint;
    |      
  > |      totalUBetCheckAmounts = safeAdd(totalUBetCheckAmounts, _amount);
    |      tokenSupplyFromCheck = safeAdd(tokenSupplyFromCheck, _tokens);
    |      
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |      
    |      totalUBetCheckAmounts = safeAdd(totalUBetCheckAmounts, _amount);
  > |      tokenSupplyFromCheck = safeAdd(tokenSupplyFromCheck, _tokens);
    |      
    |      UBetCheckAccts.push(_beneficiary) -1;
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |      tokenSupplyFromCheck = safeAdd(tokenSupplyFromCheck, _tokens);
    |      
  > |      UBetCheckAccts.push(_beneficiary) -1;
    |      
    |      // Issue token when registered UBetCheck is complete to the _beneficiary
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |      
    |      // increase token total supply
  > |      totalSupply = increasedTotalSupply;
    |      // update the beneficiary balance to number of tokens sent
    |      balances[_beneficiary] = safeAdd(balances[_beneficiary], _tokens);
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |      totalSupply = increasedTotalSupply;
    |      // update the beneficiary balance to number of tokens sent
  > |      balances[_beneficiary] = safeAdd(balances[_beneficiary], _tokens);
    |      
    |      emit Transfer(msg.sender, _beneficiary, _tokens);
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |      // event is fired when tokens issued
    |      emit Issue(
  > |                issueIndex++,
    |                _beneficiary,
    |                _tokens
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |  function transferOwnership(address newOwner) onlyOwner public{
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |}
    |
  > |contract UbetCoins is Ownable, StandardToken {
    |
    |    string public name = "Ubet Coins";
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |    /// @param _newOwner The address of the new owner of this contract
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        balances[_newOwner] = balances[owner];
    |        balances[owner] = 0;
    |        Ownable.transferOwnership(_newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |    function transferOwnership(address _newOwner) public onlyOwner {
    |        balances[_newOwner] = balances[owner];
  > |        balances[owner] = 0;
    |        Ownable.transferOwnership(_newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |    /// @param _address new address to received the ether
    |    function setMoneyWallet(address _address) public onlyOwner {
  > |        moneyWallet = _address;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'UbetCoins':
    |    function setRatePerOneEther(uint256 _value) public onlyOwner {
    |      require(_value >= 1);
  > |      ratePerOneEther = _value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x7475e268b2f72f7974cac38d45011c277daf5d90.sol(305)


