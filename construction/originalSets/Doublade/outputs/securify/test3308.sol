Processing contract: /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol:Recoverable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol:SafeMathLib
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol:StandardTokenExt
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol:TokenVault
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(220)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(53)

[33mWarning[0m for LockedEther in contract 'Recoverable':
    |
    |
  > |contract Recoverable is Ownable {
    |
    |  /// @dev Empty constructor (for now)
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Recoverable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Recoverable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Recoverable':
    |  /// @dev This will be invoked by the owner, when owner wants to rescue tokens
    |  /// @param token Token which will we rescue to the owner from the contract
  > |  function recoverTokens(ERC20Basic token) onlyOwner public {
    |    token.transfer(owner, tokensToBeReturned(token));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(81)

[33mWarning[0m for UnhandledException in contract 'Recoverable':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(82)

[33mWarning[0m for UnhandledException in contract 'Recoverable':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Recoverable':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(82)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Recoverable':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'Recoverable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(53)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(148)

[33mWarning[0m for LockedEther in contract 'SafeMathLib':
    | *
    | */
  > |library SafeMathLib {
    |
    |  function times(uint a, uint b) returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |library SafeMathLib {
    |
  > |  function times(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function minus(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'SafeMathLib':
    |  }
    |
  > |  function plus(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(123)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(341)

[33mWarning[0m for LockedEther in contract 'StandardTokenExt':
    | *
    | */
  > |contract StandardTokenExt is StandardToken, Recoverable {
    |
    |  /* Interface declaration */
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(358)

[33mWarning[0m for UnhandledException in contract 'StandardTokenExt':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(82)

[33mWarning[0m for UnhandledException in contract 'StandardTokenExt':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(89)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardTokenExt':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(82)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardTokenExt':
    |  /// @return The amount of tokens (in smallest denominator) the contract owns
    |  function tokensToBeReturned(ERC20Basic token) public returns (uint) {
  > |    return token.balanceOf(this);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardTokenExt':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(53)

[33mWarning[0m for DAO in contract 'TokenVault':
    |      return getBalance().minus(tokensAllocatedTotal);
    |    } else {
  > |      return tokenToClaim.balanceOf(this);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(612)

[33mWarning[0m for LockedEther in contract 'TokenVault':
    | *
    | */
  > |contract TokenVault is Ownable, Recoverable {
    |  using SafeMathLib for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(384)

[31mViolation[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** How much we have allocated to the investors invested */
  > |  mapping(address => uint) public balances;
    |
    |  /** How many tokens investors have claimed */
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(400)

[31mViolation[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** How many tokens investors have claimed */
  > |  mapping(address => uint) public claimed;
    |
    |  /** When was the last claim by an investor **/
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(403)

[31mViolation[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** When was the last claim by an investor **/
  > |  mapping(address => uint) public lastClaimedAt;
    |
    |  /** When our claim freeze is over (UNIX timestamp) */
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(406)

[31mViolation[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /// @dev Add a presale participating allocation
  > |  function setInvestor(address investor, uint amount) public onlyOwner {
    |
    |    if(lockedAt > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(481)

[31mViolation[0m for MissingInputValidation in contract 'TokenVault':
    |  /// @param investor Address of the investor
    |  /// @return uint How many tokens the investor can claim now
  > |  function getCurrentlyClaimableAmount(address investor) public constant returns (uint claimableAmount) {
    |    uint maxTokensLeft = balances[investor] - claimed[investor];
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(548)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** How many investors we have now */
  > |  uint public investorCount;
    |
    |  /** Sum from the spreadsheet how much tokens we should get on the contract. If the sum does not match at the time of the lock the vault is faulty and must be recreated.*/
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(388)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** Sum from the spreadsheet how much tokens we should get on the contract. If the sum does not match at the time of the lock the vault is faulty and must be recreated.*/
  > |  uint public tokensToBeAllocated;
    |
    |  /** How many tokens investors have claimed so far */
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(391)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** How many tokens investors have claimed so far */
  > |  uint public totalClaimed;
    |
    |  /** How many tokens our internal book keeping tells us to have at the time of lock() when all investor data has been loaded */
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(394)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** How many tokens our internal book keeping tells us to have at the time of lock() when all investor data has been loaded */
  > |  uint public tokensAllocatedTotal;
    |
    |  /** How much we have allocated to the investors invested */
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(397)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** When our claim freeze is over (UNIX timestamp) */
  > |  uint public freezeEndsAt;
    |
    |  /** When this vault was locked (UNIX timestamp) */
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(409)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** When this vault was locked (UNIX timestamp) */
  > |  uint public lockedAt;
    |
    |  /** defining the tap **/
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(412)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** defining the tap **/
  > |  uint public tokensPerSecond;
    |
    |  /** We can also define our own token, which will override the ICO one ***/
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(415)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /** We can also define our own token, which will override the ICO one ***/
  > |  StandardTokenExt public token;
    |
    |  /** What is our current state.
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(418)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |  ///      - Tokens are transferred on this vault correctly
    |  ///      - Checks are in place to prevent creating a vault that is locked with incorrect token balances.
  > |  function lock() onlyOwner {
    |
    |    if(lockedAt > 0) {
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(508)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /// @dev In the case locking failed, then allow the owner to reclaim the tokens on the contract.
  > |  function recoverFailedLock() onlyOwner {
    |    if(lockedAt > 0) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(530)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |  /// @dev Get the current balance of tokens in the vault
    |  /// @return uint How many tokens there are currently in vault
  > |  function getBalance() public constant returns (uint howManyTokensCurrentlyInVault) {
    |    return token.balanceOf(address(this));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(541)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /// @dev Claim N bought tokens to the investor as the msg sender
  > |  function claim() {
    |
    |    address investor = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(576)

[33mWarning[0m for MissingInputValidation in contract 'TokenVault':
    |
    |  /// @dev Resolve the contract umambigious state
  > |  function getState() public constant returns(State) {
    |    if(lockedAt == 0) {
    |      return State.Loading;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(617)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(82)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |
    |    // Do not lock the vault if the given tokens are not on this contract
  > |    if(token.balanceOf(address(this)) != tokensAllocatedTotal) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(520)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |
    |    // Transfer all tokens on this contract back to the owner
  > |    token.transfer(owner, token.balanceOf(address(this)));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(536)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |  /// @return uint How many tokens there are currently in vault
    |  function getBalance() public constant returns (uint howManyTokensCurrentlyInVault) {
  > |    return token.balanceOf(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(542)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |    totalClaimed += amount;
    |
  > |    token.transfer(investor, amount);
    |
    |    Distributed(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(602)

[33mWarning[0m for UnhandledException in contract 'TokenVault':
    |      return getBalance().minus(tokensAllocatedTotal);
    |    } else {
  > |      return tokenToClaim.balanceOf(this);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(612)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |  /// @param token Token which will we rescue to the owner from the contract
    |  function recoverTokens(ERC20Basic token) onlyOwner public {
  > |    token.transfer(owner, tokensToBeReturned(token));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(82)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |
    |    // Do not lock the vault if the given tokens are not on this contract
  > |    if(token.balanceOf(address(this)) != tokensAllocatedTotal) {
    |      throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(520)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |
    |    // Transfer all tokens on this contract back to the owner
  > |    token.transfer(owner, token.balanceOf(address(this)));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(536)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |  /// @return uint How many tokens there are currently in vault
    |  function getBalance() public constant returns (uint howManyTokensCurrentlyInVault) {
  > |    return token.balanceOf(address(this));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(542)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |    totalClaimed += amount;
    |
  > |    token.transfer(investor, amount);
    |
    |    Distributed(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(602)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenVault':
    |      return getBalance().minus(tokensAllocatedTotal);
    |    } else {
  > |      return tokenToClaim.balanceOf(this);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(612)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenVault':
    |    claimed[investor] += amount;
    |
  > |    totalClaimed += amount;
    |
    |    token.transfer(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(600)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    require (amount > 0);
    |
  > |    lastClaimedAt[investor] = now;
    |
    |    claimed[investor] += amount;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(596)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    lastClaimedAt[investor] = now;
    |
  > |    claimed[investor] += amount;
    |
    |    totalClaimed += amount;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(598)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    }
    |
  > |    balances[investor] = amount;
    |
    |    investorCount++;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(495)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    balances[investor] = amount;
    |
  > |    investorCount++;
    |
    |    tokensAllocatedTotal += amount;
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    investorCount++;
    |
  > |    tokensAllocatedTotal += amount;
    |
    |    Allocated(investor, amount);
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenVault':
    |    }
    |
  > |    lockedAt = now;
    |
    |    Locked();
  at /home/jiaming/mavs_srcs/contract@0xd933cb0333aacb8b5d248c52f194adaf5b7934b0.sol(524)


