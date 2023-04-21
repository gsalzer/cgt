Processing contract: /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol:MBEToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol:Token
[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is StandardToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(201)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
    |    require(_to != address(0));
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |      address burner = msg.sender;
  > |      balances[burner] = balances[burner].sub(_value);
    |      totalSupply = totalSupply.sub(_value);
    |      Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(68)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(68)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |    
    |  uint public constant startPreICO = 1521072000; // 15'th March
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Pausable is Ownable {
    |    
  > |  uint public constant startPreICO = 1521072000; // 15'th March
    |  uint public constant endPreICO = startPreICO + 31 days;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    
    |  uint public constant startPreICO = 1521072000; // 15'th March
  > |  uint public constant endPreICO = startPreICO + 31 days;
    |
    |  uint public constant startICOStage1 = 1526342400; // 15'th May
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  uint public constant endPreICO = startPreICO + 31 days;
    |
  > |  uint public constant startICOStage1 = 1526342400; // 15'th May
    |  uint public constant endICOStage1 = startICOStage1 + 3 days;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  uint public constant startICOStage1 = 1526342400; // 15'th May
  > |  uint public constant endICOStage1 = startICOStage1 + 3 days;
    |
    |  uint public constant startICOStage2 = 1526688000; // 19'th May
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  uint public constant endICOStage1 = startICOStage1 + 3 days;
    |
  > |  uint public constant startICOStage2 = 1526688000; // 19'th May
    |  uint public constant endICOStage2 = startICOStage2 + 5 days;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  uint public constant startICOStage2 = 1526688000; // 19'th May
  > |  uint public constant endICOStage2 = startICOStage2 + 5 days;
    |
    |  uint public constant startICOStage3 = 1527206400; // 25'th May
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  uint public constant endICOStage2 = startICOStage2 + 5 days;
    |
  > |  uint public constant startICOStage3 = 1527206400; // 25'th May
    |  uint public constant endICOStage3 = endICOStage2 + 6 days;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  uint public constant startICOStage3 = 1527206400; // 25'th May
  > |  uint public constant endICOStage3 = endICOStage2 + 6 days;
    |
    |  uint public constant startICOStage4 = 1527811200; // 1'st June
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  uint public constant endICOStage3 = endICOStage2 + 6 days;
    |
  > |  uint public constant startICOStage4 = 1527811200; // 1'st June
    |  uint public constant endICOStage4 = startICOStage4 + 7 days;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  uint public constant startICOStage4 = 1527811200; // 1'st June
  > |  uint public constant endICOStage4 = startICOStage4 + 7 days;
    |
    |  uint public constant startICOStage5 = 1528502400;
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  uint public constant endICOStage4 = startICOStage4 + 7 days;
    |
  > |  uint public constant startICOStage5 = 1528502400;
    |  uint public endICOStage5 = startICOStage5 + 11 days;
    |
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |  uint public constant startICOStage5 = 1528502400;
  > |  uint public endICOStage5 = startICOStage5 + 11 days;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(68)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token, Pausable {
    |  using SafeMath for uint256;
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
    |    require(_to != address(0));
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(190)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8a46126dc294a8f1bf94ca2ce9019e4642083c64.sol(68)


