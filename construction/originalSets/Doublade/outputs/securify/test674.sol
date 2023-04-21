Processing contract: /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol:MindLink
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken. 
    | */
  > |contract BasicToken is ERC20Basic {
    |    
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(73)

[33mWarning[0m for LockedEther in contract 'MindLink':
    |}
    |
  > |contract MindLink is MintableToken {
    |    
    |    string public constant name = "MindLink";
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'MindLink':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'MindLink':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'MindLink':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'MindLink':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'MindLink':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MindLink':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'MindLink':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(203)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |    
    |  event Mint(address indexed to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint256 _value) public returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(192)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(203)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(161)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(29)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) public returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2af83e1f6545510135e191aa9cdaca9bc65dd0e3.sol(113)


