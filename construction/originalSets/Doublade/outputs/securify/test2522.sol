Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:Destructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:TestTokenA
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol:TestTokenAICO1
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(251)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  // @return true if the transaction can buy tokens
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(146)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |  // The token being sold
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(79)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |//    tokenAddr.call(methodId, beneficiary, tokens);
    |    testTokenA = TestTokenA(tokenAddr);
  > |    testTokenA.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(139)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  // @return true if the transaction can buy tokens
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |//    tokenAddr.call(methodId, beneficiary, tokens);
    |    testTokenA = TestTokenA(tokenAddr);
  > |    testTokenA.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  // @return true if the transaction can buy tokens
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    uint256 tokens = weiAmount.mul(rate);
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |//    token.mint(beneficiary, tokens);
    |//    bytes4 methodId = bytes4(keccak256("mint(address,uint256)"));
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |//    bytes4 methodId = bytes4(keccak256("mint(address,uint256)"));
    |//    tokenAddr.call(methodId, beneficiary, tokens);
  > |    testTokenA = TestTokenA(tokenAddr);
    |    testTokenA.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(138)

[33mWarning[0m for LockedEther in contract 'Destructible':
    | * @dev Base contract that can be destroyed by owner. All funds in contract will be sent to the owner.
    | */
  > |contract Destructible is Ownable {
    |  function Destructible() payable { }
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(42)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(382)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(42)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Pause();
    |  event Unpause();
  > |  bool public paused = false;
    |  /**
    |   * @dev Modifier to make a function callable only when the contract is not paused.
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(206)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(232)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(49)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |  mapping (address => mapping (address => uint256)) allowed;
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(343)

[33mWarning[0m for LockedEther in contract 'TestTokenA':
    |  }
    |}
  > |contract TestTokenA is MintableToken {
    |  string public constant name = "TestTokenA";
    |  string public constant symbol = "ZNX";
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(387)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenA':
    |    require(_to != address(0));
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenA':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenA':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenA':
    |  function increaseApproval (address _spender, uint _addedValue)
    |    returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenA':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(341)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenA':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenA':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenA':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(382)

[33mWarning[0m for DAOConstantGas in contract 'TestTokenAICO1':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  // @return true if the transaction can buy tokens
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(146)

[33mWarning[0m for LockedEther in contract 'TestTokenAICO1':
    |  }
    |}
  > |contract TestTokenAICO1 is CappedCrowdsale, Destructible, Pausable {
    |  function TestTokenAICO1(address _tokenAddress, uint256 _startTime, uint256 _endTime, uint256 _rate, uint256 _cap, address _wallet)
    |    CappedCrowdsale(_cap)
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(400)

[33mWarning[0m for UnhandledException in contract 'TestTokenAICO1':
    |//    tokenAddr.call(methodId, beneficiary, tokens);
    |    testTokenA = TestTokenA(tokenAddr);
  > |    testTokenA.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(139)

[33mWarning[0m for UnhandledException in contract 'TestTokenAICO1':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  // @return true if the transaction can buy tokens
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TestTokenAICO1':
    |//    tokenAddr.call(methodId, beneficiary, tokens);
    |    testTokenA = TestTokenA(tokenAddr);
  > |    testTokenA.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TestTokenAICO1':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  // @return true if the transaction can buy tokens
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenAICO1':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenAICO1':
    |    uint256 tokens = weiAmount.mul(rate);
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |//    token.mint(beneficiary, tokens);
    |//    bytes4 methodId = bytes4(keccak256("mint(address,uint256)"));
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenAICO1':
    |//    bytes4 methodId = bytes4(keccak256("mint(address,uint256)"));
    |//    tokenAddr.call(methodId, beneficiary, tokens);
  > |    testTokenA = TestTokenA(tokenAddr);
    |    testTokenA.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenAICO1':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(225)

[33mWarning[0m for UnrestrictedWrite in contract 'TestTokenAICO1':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa515f59ca4be22e9f082d7c56056037514f8481d.sol(232)


