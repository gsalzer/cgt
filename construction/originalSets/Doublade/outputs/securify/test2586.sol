Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:CrowdsaleExt
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:FinalizeAgent
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:FractionalERC20Ext
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:Haltable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:MintableTokenExt
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:MintedTokenCappedCrowdsaleExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:PricingStrategy
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:SafeMathLibExt
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Haltable':
    | * Originally envisioned in FirstBlood ICO contract.
    | */
  > |contract Haltable is Ownable {
    |  bool public halted;
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    | */
    |contract Haltable is Ownable {
  > |  bool public halted;
    |
    |  modifier stopInEmergency {
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on emergency, triggers stopped state
  > |  function halt() external onlyOwner {
    |    halted = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'Haltable':
    |
    |  // called by the owner on end of emergency, returns to normal state
  > |  function unhalt() external onlyOwner onlyInEmergency {
    |    halted = false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'Haltable':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(216)

[33mWarning[0m for LockedEther in contract 'MintableTokenExt':
    | *
    | */
  > |contract MintableTokenExt is StandardToken, Ownable {
    |
    |  using SafeMathLibExt for uint;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1037)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(993)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1003)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1020)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |  /** List of agents that are allowed to create new tokens */
  > |  mapping (address => bool) public mintAgents;
    |
    |  event MintingAgentChanged(address addr, bool state  );
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1044)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  mapping (address => ReservedTokensData) public reservedTokensList;
    |  address[] public reservedTokensDestinations;
    |  uint public reservedTokensDestinationsLen = 0;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1061)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function finalizeReservedAddress(address addr) public onlyMintAgent canMint {
    |    ReservedTokensData storage reservedTokensData = reservedTokensList[addr];
    |    reservedTokensData.isDistributed = true;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1080)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function isAddressReserved(address addr) public constant returns (bool isReserved) {
    |    return reservedTokensList[addr].isReserved;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1085)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function areTokensDistributedForAddress(address addr) public constant returns (bool isDistributed) {
    |    return reservedTokensList[addr].isDistributed;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1089)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function getReservedTokens(address addr) public constant returns (uint inTokens) {
    |    return reservedTokensList[addr].inTokens;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1093)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function getReservedPercentageUnit(address addr) public constant returns (uint inPercentageUnit) {
    |    return reservedTokensList[addr].inPercentageUnit;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1097)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function getReservedPercentageDecimals(address addr) public constant returns (uint inPercentageDecimals) {
    |    return reservedTokensList[addr].inPercentageDecimals;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1101)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function setReservedTokensListMultiple(
    |    address[] addrs, 
    |    uint[] inTokens, 
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1105)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * Only callably by a crowdsale contract (mint agent).
    |   */
  > |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1128)

[31mViolation[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * Owner can allow a crowdsale contract to mint new tokens.
    |   */
  > |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
    |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1140)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) public constant returns (uint256);
    |  function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(982)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  using SafeMathLibExt for uint;
    |
  > |  bool public mintingFinished = false;
    |
    |  /** List of agents that are allowed to create new tokens */
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1041)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |
    |  mapping (address => ReservedTokensData) public reservedTokensList;
  > |  address[] public reservedTokensDestinations;
    |  uint public reservedTokensDestinationsLen = 0;
    |  bool reservedTokensDestinationsAreSet = false;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1062)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  mapping (address => ReservedTokensData) public reservedTokensList;
    |  address[] public reservedTokensDestinations;
  > |  uint public reservedTokensDestinationsLen = 0;
    |  bool reservedTokensDestinationsAreSet = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1063)

[33mWarning[0m for MissingInputValidation in contract 'MintableTokenExt':
    |  }
    |
  > |  function setReservedTokensList(address addr, uint inTokens, uint inPercentageUnit, uint inPercentageDecimals) private canMint onlyOwner {
    |    assert(addr != address(0));
    |    if (!isAddressReserved(addr)) {
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1145)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
  > |// Created using Token Wizard https://github.com/poanetwork/token-wizard by POA Network 
    |// Temporarily have SafeMath here until all contracts have been migrated to SafeMathLib version from OpenZeppelin
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(987)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(988)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(996)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(997)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(998)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function finalizeReservedAddress(address addr) public onlyMintAgent canMint {
    |    ReservedTokensData storage reservedTokensData = reservedTokensList[addr];
  > |    reservedTokensData.isDistributed = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1082)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |      }
    |    }
  > |    reservedTokensDestinationsAreSet = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1120)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |   */
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
  > |    totalSupply = totalSupply.plus(amount);
    |    balances[receiver] = balances[receiver].plus(amount);
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1129)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |  function mint(address receiver, uint amount) onlyMintAgent canMint public {
    |    totalSupply = totalSupply.plus(amount);
  > |    balances[receiver] = balances[receiver].plus(amount);
    |
    |    // This will make the mint transaction apper in EtherScan.io
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1130)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    assert(addr != address(0));
    |    if (!isAddressReserved(addr)) {
  > |      reservedTokensDestinations.push(addr);
    |      reservedTokensDestinationsLen++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1148)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    if (!isAddressReserved(addr)) {
    |      reservedTokensDestinations.push(addr);
  > |      reservedTokensDestinationsLen++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1149)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    }
    |
  > |    reservedTokensList[addr] = ReservedTokensData({
    |      inTokens: inTokens, 
    |      inPercentageUnit: inPercentageUnit, 
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1152)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1015)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
  > |// Created using Token Wizard https://github.com/poanetwork/token-wizard by POA Network 
    |// Temporarily have SafeMath here until all contracts have been migrated to SafeMathLib version from OpenZeppelin
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |   */
    |  function setMintAgent(address addr, bool state) onlyOwner canMint public {
  > |    mintAgents[addr] = state;
    |    MintingAgentChanged(addr, state);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1141)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    assert(addr != address(0));
    |    if (!isAddressReserved(addr)) {
  > |      reservedTokensDestinations.push(addr);
    |      reservedTokensDestinationsLen++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1148)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    if (!isAddressReserved(addr)) {
    |      reservedTokensDestinations.push(addr);
  > |      reservedTokensDestinationsLen++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1149)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableTokenExt':
    |    }
    |
  > |    reservedTokensList[addr] = ReservedTokensData({
    |      inTokens: inTokens, 
    |      inPercentageUnit: inPercentageUnit, 
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1152)

[31mViolation[0m for TODReceiver in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |
    |    if (isWhiteListed) {
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(590)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    // Account presale sales separately, so that they do not count against pricing tranches
  > |    uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised, tokensSold, msg.sender, token.decimals());
    |
    |    if(tokenAmount == 0) {
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(542)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |      }
    |    } else {
  > |      if(tokenAmount < token.minCap() && tokenAmountOf[receiver] == 0) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(564)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    // Pocket the money
  > |    if(!multisigWallet.send(weiAmount)) throw;
    |
    |    if (isWhiteListed) {
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(590)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != address(0)) {
  > |      finalizeAgent.distributeReservedTokens(reservedTokensDistributionBatch);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(624)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |  function areReservedTokensDistributed() public constant returns (bool) {
  > |    return finalizeAgent.reservedTokensAreDistributed();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(629)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |  function canDistributeReservedTokens() public constant returns(bool) {
    |    CrowdsaleExt lastTierCntrct = CrowdsaleExt(getLastTier());
  > |    if ((lastTierCntrct.getState() == State.Success) && !lastTierCntrct.halted() && !lastTierCntrct.finalized() && !lastTierCntrct.areReservedTokensDistributed()) return true;
    |    return false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(634)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != address(0)) {
  > |      finalizeAgent.finalizeCrowdsale();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(652)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    // Don't allow setting bad agent
  > |    if(!finalizeAgent.isFinalizeAgent()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(669)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |    for (uint8 j = tierPosition; j < joinedCrowdsalesLen; j++) {
    |      CrowdsaleExt crowdsale = CrowdsaleExt(joinedCrowdsales[j]);
  > |      crowdsale.updateEarlyParticipantWhitelist(msg.sender, tokensBought);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(713)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    CrowdsaleExt lastTierCntrct = CrowdsaleExt(getLastTier());
  > |    if (lastTierCntrct.finalized()) throw;
    |
    |    uint8 tierPosition = getTierPosition(this);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(777)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |    for (uint8 j = 0; j < tierPosition; j++) {
    |      CrowdsaleExt crowdsale = CrowdsaleExt(joinedCrowdsales[j]);
  > |      assert(time >= crowdsale.endsAt());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(784)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    CrowdsaleExt lastTierCntrct = CrowdsaleExt(getLastTier());
  > |    if (lastTierCntrct.finalized()) throw;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(809)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |    for (uint8 j = tierPosition + 1; j < joinedCrowdsalesLen; j++) {
    |      CrowdsaleExt crowdsale = CrowdsaleExt(joinedCrowdsales[j]);
  > |      assert(time <= crowdsale.startsAt());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(816)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    // Don't allow setting bad agent
  > |    if(!pricingStrategy.isPricingStrategy()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(834)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |   */
    |  function isFinalizerSane() public constant returns (bool sane) {
  > |    return finalizeAgent.isSane();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(867)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |   */
    |  function isPricingSane() public constant returns (bool sane) {
  > |    return pricingStrategy.isSane(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(874)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |    if(finalized) return State.Finalized;
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
  > |    else if (!finalizeAgent.isSane()) return State.Preparing;
    |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(885)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
    |    else if (!finalizeAgent.isSane()) return State.Preparing;
  > |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
    |    else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(886)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    CrowdsaleExt lastTierCntrct = CrowdsaleExt(getLastTier());
  > |    assert(!lastTierCntrct.finalized());
    |
    |    maximumSellableTokens = tokens;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1214)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    CrowdsaleExt lastTierCntrct = CrowdsaleExt(getLastTier());
  > |    assert(!lastTierCntrct.finalized());
    |
    |    pricingStrategy.updateRate(newOneTokenInWei);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1226)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |    assert(!lastTierCntrct.finalized());
    |
  > |    pricingStrategy.updateRate(newOneTokenInWei);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1228)

[33mWarning[0m for UnhandledException in contract 'MintedTokenCappedCrowdsaleExt':
    |  function assignTokens(address receiver, uint tokenAmount) private {
    |    MintableTokenExt mintableToken = MintableTokenExt(token);
  > |    mintableToken.mint(receiver, tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1236)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    // Account presale sales separately, so that they do not count against pricing tranches
  > |    uint tokenAmount = pricingStrategy.calculatePrice(weiAmount, weiRaised, tokensSold, msg.sender, token.decimals());
    |
    |    if(tokenAmount == 0) {
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(542)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |      }
    |    } else {
  > |      if(tokenAmount < token.minCap() && tokenAmountOf[receiver] == 0) {
    |        throw;
    |      }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(564)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != address(0)) {
  > |      finalizeAgent.distributeReservedTokens(reservedTokensDistributionBatch);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(624)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |  function areReservedTokensDistributed() public constant returns (bool) {
  > |    return finalizeAgent.reservedTokensAreDistributed();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(629)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |  function canDistributeReservedTokens() public constant returns(bool) {
    |    CrowdsaleExt lastTierCntrct = CrowdsaleExt(getLastTier());
  > |    if ((lastTierCntrct.getState() == State.Success) && !lastTierCntrct.halted() && !lastTierCntrct.finalized() && !lastTierCntrct.areReservedTokensDistributed()) return true;
    |    return false;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(634)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |    // Finalizing is optional. We only call it if we are given a finalizing agent.
    |    if(address(finalizeAgent) != address(0)) {
  > |      finalizeAgent.finalizeCrowdsale();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(652)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    // Don't allow setting bad agent
  > |    if(!finalizeAgent.isFinalizeAgent()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(669)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |    for (uint8 j = tierPosition; j < joinedCrowdsalesLen; j++) {
    |      CrowdsaleExt crowdsale = CrowdsaleExt(joinedCrowdsales[j]);
  > |      crowdsale.updateEarlyParticipantWhitelist(msg.sender, tokensBought);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(713)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    CrowdsaleExt lastTierCntrct = CrowdsaleExt(getLastTier());
  > |    if (lastTierCntrct.finalized()) throw;
    |
    |    uint8 tierPosition = getTierPosition(this);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(777)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |    for (uint8 j = 0; j < tierPosition; j++) {
    |      CrowdsaleExt crowdsale = CrowdsaleExt(joinedCrowdsales[j]);
  > |      assert(time >= crowdsale.endsAt());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(784)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    CrowdsaleExt lastTierCntrct = CrowdsaleExt(getLastTier());
  > |    if (lastTierCntrct.finalized()) throw;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(809)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |    for (uint8 j = tierPosition + 1; j < joinedCrowdsalesLen; j++) {
    |      CrowdsaleExt crowdsale = CrowdsaleExt(joinedCrowdsales[j]);
  > |      assert(time <= crowdsale.startsAt());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(816)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    // Don't allow setting bad agent
  > |    if(!pricingStrategy.isPricingStrategy()) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(834)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |   */
    |  function isFinalizerSane() public constant returns (bool sane) {
  > |    return finalizeAgent.isSane();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(867)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |   */
    |  function isPricingSane() public constant returns (bool sane) {
  > |    return pricingStrategy.isSane(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(874)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |    if(finalized) return State.Finalized;
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
  > |    else if (!finalizeAgent.isSane()) return State.Preparing;
    |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(885)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |    else if (address(finalizeAgent) == 0) return State.Preparing;
    |    else if (!finalizeAgent.isSane()) return State.Preparing;
  > |    else if (!pricingStrategy.isSane(address(this))) return State.Preparing;
    |    else if (block.timestamp < startsAt) return State.PreFunding;
    |    else if (block.timestamp <= endsAt && !isCrowdsaleFull()) return State.Funding;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(886)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    CrowdsaleExt lastTierCntrct = CrowdsaleExt(getLastTier());
  > |    assert(!lastTierCntrct.finalized());
    |
    |    maximumSellableTokens = tokens;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    CrowdsaleExt lastTierCntrct = CrowdsaleExt(getLastTier());
  > |    assert(!lastTierCntrct.finalized());
    |
    |    pricingStrategy.updateRate(newOneTokenInWei);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |    assert(!lastTierCntrct.finalized());
    |
  > |    pricingStrategy.updateRate(newOneTokenInWei);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MintedTokenCappedCrowdsaleExt':
    |  function assignTokens(address receiver, uint tokenAmount) private {
    |    MintableTokenExt mintableToken = MintableTokenExt(token);
  > |    mintableToken.mint(receiver, tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1236)

[31mViolation[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    // Update totals
  > |    weiRaised = weiRaised.plus(weiAmount);
    |    tokensSold = tokensSold.plus(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(579)

[31mViolation[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    // Update totals
    |    weiRaised = weiRaised.plus(weiAmount);
  > |    tokensSold = tokensSold.plus(tokenAmount);
    |
    |    // Check that we did not bust the cap
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(580)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
  > |// Created using Token Wizard https://github.com/poanetwork/token-wizard by POA Network 
    |// Temporarily have SafeMath here until all contracts have been migrated to SafeMathLib version from OpenZeppelin
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    // Update investor
  > |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
    |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    // Update investor
    |    investedAmountOf[receiver] = investedAmountOf[receiver].plus(weiAmount);
  > |    tokenAmountOf[receiver] = tokenAmountOf[receiver].plus(tokenAmount);
    |
    |    // Update totals
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(576)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    uint newMaxCap = earlyParticipantWhitelist[addr].maxCap;
    |    newMaxCap = newMaxCap.minus(tokensBought);
  > |    earlyParticipantWhitelist[addr] = WhiteListData({status:earlyParticipantWhitelist[addr].status, minCap:0, maxCap:newMaxCap});
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(726)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    assert(joinedCrowdsalesLen <= joinedCrowdsalesLenMax);
    |    assert(!isTierJoined(addr));
  > |    joinedCrowdsales.push(addr);
    |    joinedCrowdsaleState[addr] = JoinedCrowdsaleStatus({
    |      isJoined: true,
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(752)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    assert(!isTierJoined(addr));
    |    joinedCrowdsales.push(addr);
  > |    joinedCrowdsaleState[addr] = JoinedCrowdsaleStatus({
    |      isJoined: true,
    |      position: joinedCrowdsalesLen
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(753)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |      position: joinedCrowdsalesLen
    |    });
  > |    joinedCrowdsalesLen++;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(757)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
  > |// Created using Token Wizard https://github.com/poanetwork/token-wizard by POA Network 
    |// Temporarily have SafeMath here until all contracts have been migrated to SafeMathLib version from OpenZeppelin
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |  // called by the owner on emergency, triggers stopped state
    |  function halt() external onlyOwner {
  > |    halted = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |  // called by the owner on end of emergency, returns to normal state
    |  function unhalt() external onlyOwner onlyInEmergency {
  > |    halted = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(216)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    }
    |
  > |    finalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(655)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    assert(address(addr) != address(0));
    |    assert(address(finalizeAgent) == address(0));
  > |    finalizeAgent = addr;
    |
    |    // Don't allow setting bad agent
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(666)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |
    |    if (earlyParticipantWhitelist[addr].maxCap == 0) {
  > |      whitelistedParticipants.push(addr);
    |      Whitelisted(addr, status, minCap, maxCap);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(685)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    }
    |
  > |    earlyParticipantWhitelist[addr] = WhiteListData({status:status, minCap:minCap, maxCap:maxCap});
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(691)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    assert(address(_pricingStrategy) != address(0));
    |    assert(address(pricingStrategy) == address(0));
  > |    pricingStrategy = _pricingStrategy;
    |
    |    // Don't allow setting bad agent
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(831)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    }
    |
  > |    multisigWallet = addr;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(853)

[33mWarning[0m for UnrestrictedWrite in contract 'MintedTokenCappedCrowdsaleExt':
    |    assert(!lastTierCntrct.finalized());
    |
  > |    maximumSellableTokens = tokens;
    |    MaximumSellableTokensChanged(maximumSellableTokens);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1216)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(106)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(10)

[33mWarning[0m for LockedEther in contract 'SafeMathLibExt':
    | *
    | */
  > |library SafeMathLibExt {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |library SafeMathLibExt {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function divides(uint a, uint b) returns (uint) {
    |    assert(b > 0);
    |    uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLibExt':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(164)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, SafeMath {
    |
    |  /* Token supply got increased and a new owner received these tokens */
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(970)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) returns (bool success) {
    |    uint _allowance = allowed[_from][msg.sender];
    |
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(993)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1003)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1020)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20Basic {
  > |  uint256 public totalSupply;
    |  function balanceOf(address who) public constant returns (uint256);
    |  function transfer(address to, uint256 value) public returns (bool);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  /* Interface declaration */
  > |  function isToken() public constant returns (bool weAre) {
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(982)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function transfer(address _to, uint _value) returns (bool success) {
  > |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(987)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint _value) returns (bool success) {
    |    balances[msg.sender] = safeSub(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(988)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(996)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSub(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(997)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSub(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSub(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(998)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if ((_value != 0) && (allowed[msg.sender][_spender] != 0)) throw;
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa963e00c442b2ef8daf89af65bc0fab8650af4c1.sol(1015)


