Processing contract: /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol:Fricacoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol:TheLiquidToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | Basic version of StandardToken, with no allowances. 
    | */
  > |contract BasicToken is ERC20Basic {
    |    
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    | 
    | function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(66)

[33mWarning[0m for LockedEther in contract 'Fricacoin':
    |}
    |    
  > |contract Fricacoin is TheLiquidToken {
    |  string public constant name = "Fricacoin";
    |  string public constant symbol = "FRI";
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    | 
    | function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    | function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    |    // require (_value <= _allowance);
    | 
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    | 
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    | 
    | function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    | function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'Fricacoin':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(192)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    
  > |  address public owner;
    | 
    | 
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(165)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(27)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |  https://github.com/ethereum/EIPs/issues/20
    | */
  > |contract StandardToken is ERC20, BasicToken {
    | 
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    | 
    | function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(122)

[33mWarning[0m for LockedEther in contract 'TheLiquidToken':
    |}
    | 
  > |contract TheLiquidToken is StandardToken, Ownable {
    |    // mint can be finished and token become fixed for forever
    |  event Mint(address indexed to, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    | 
    | function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    | function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |    // require (_value <= _allowance);
    | 
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    | 
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    | 
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    | 
    | function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(181)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    | function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |
    |        address burner = msg.sender;
  > |        balances[burner] = balances[burner].sub(_value);
    |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |        address burner = msg.sender;
    |        balances[burner] = balances[burner].sub(_value);
  > |        totalSupply = totalSupply.sub(_value);
    |        Burn(burner, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'TheLiquidToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf9c135de112772917b4d47c75651114c001489c0.sol(192)


