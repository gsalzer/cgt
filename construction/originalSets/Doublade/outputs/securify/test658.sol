Processing contract: /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol:CrowdsaleMortgage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol:MortgageEthereumToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic {
    |    
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(74)

[33mWarning[0m for LockedEther in contract 'CrowdsaleMortgage':
    |
    |
  > |contract CrowdsaleMortgage {
    |    
    |    address owner;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleMortgage':
    |    address owner;
    |    
  > |    MortgageEthereumToken public token = new MortgageEthereumToken();
    |    
    |    uint start = 1505260800;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'CrowdsaleMortgage':
    |    uint period = 31;
    |    
  > |    function Crowdsale() {
    |        owner = msg.sender;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'CrowdsaleMortgage':
    |    
    |    function Crowdsale() {
  > |        owner = msg.sender;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(254)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |    
    |  event Mint(address indexed to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(225)

[33mWarning[0m for LockedEther in contract 'MortgageEthereumToken':
    |}
    |
  > |contract MortgageEthereumToken is MintableToken {
    |    
    |    string public constant name = "Mortgage Ethereum Token";
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'MortgageEthereumToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'MortgageEthereumToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'MortgageEthereumToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'MortgageEthereumToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MortgageEthereumToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'MortgageEthereumToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'MortgageEthereumToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MortgageEthereumToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'MortgageEthereumToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'MortgageEthereumToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(225)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(182)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(30)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2a27877ae9a92d899fdf47e709095866c52d98ac.sol(134)


