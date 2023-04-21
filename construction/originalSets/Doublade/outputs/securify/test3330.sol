Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol:coinScheduleReferral
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(53)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Token supply got increased and a new owner received these tokens */
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20 {
  > |  uint public totalSupply;
    |  function balanceOf(address who) constant returns (uint);
    |  function allowance(address owner, address spender) constant returns (uint);
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'coinScheduleReferral':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'coinScheduleReferral':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'coinScheduleReferral':
    |contract coinScheduleReferral is SafeMath {
    |    
  > |    uint256 public weiRaised = 0; //Holding the number of wei invested through this referral contract
    |    address public wwamICOcontractAddress = 0x59a048d31d72b98dfb10f91a8905aecda7639f13;
    |    address public pricingStrategyAddress = 0xe4b9b539f047f08991a231cc1b01eb0fa1849946;
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(168)

[33mWarning[0m for MissingInputValidation in contract 'coinScheduleReferral':
    |    
    |    uint256 public weiRaised = 0; //Holding the number of wei invested through this referral contract
  > |    address public wwamICOcontractAddress = 0x59a048d31d72b98dfb10f91a8905aecda7639f13;
    |    address public pricingStrategyAddress = 0xe4b9b539f047f08991a231cc1b01eb0fa1849946;
    |    address public tokenAddress = 0xf13f1023cfD796FF7909e770a8DDB12d33CADC08;
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'coinScheduleReferral':
    |    uint256 public weiRaised = 0; //Holding the number of wei invested through this referral contract
    |    address public wwamICOcontractAddress = 0x59a048d31d72b98dfb10f91a8905aecda7639f13;
  > |    address public pricingStrategyAddress = 0xe4b9b539f047f08991a231cc1b01eb0fa1849946;
    |    address public tokenAddress = 0xf13f1023cfD796FF7909e770a8DDB12d33CADC08;
    |
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'coinScheduleReferral':
    |    address public wwamICOcontractAddress = 0x59a048d31d72b98dfb10f91a8905aecda7639f13;
    |    address public pricingStrategyAddress = 0xe4b9b539f047f08991a231cc1b01eb0fa1849946;
  > |    address public tokenAddress = 0xf13f1023cfD796FF7909e770a8DDB12d33CADC08;
    |
    |    function() payable {
  at /home/jiaming/mavs_srcs/contract@0xdb2c47230ff7bd408bd9b07ef6dd58f331e24a3f.sol(171)


