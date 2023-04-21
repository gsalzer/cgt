Processing contract: /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol:WealthBuilderToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(78)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event Burn(address indexed burner, uint value);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(159)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply += _amount;
    |    balances[_to] += _amount;
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply += _amount;
  > |    balances[_to] += _amount;
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function burn(address _addr, uint _amount) onlyOwner public {
    |    require(_amount > 0 && balances[_addr] >= _amount && totalSupply >= _amount);
  > |    balances[_addr] -= _amount;
    |    totalSupply -= _amount;
    |    Burn(_addr, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_amount > 0 && balances[_addr] >= _amount && totalSupply >= _amount);
    |    balances[_addr] -= _amount;
  > |    totalSupply -= _amount;
    |    Burn(_addr, _amount);
    |    Transfer(_addr, address(0), _amount);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(204)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev set `owner` of the contract to the sender
    |   */
  > |  address public owner = msg.sender;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(31)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.19;
    |
  > |library SafeMath {
    |  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    require(b <= a);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(136)

[33mWarning[0m for LockedEther in contract 'WealthBuilderToken':
    |}
    |
  > |contract WealthBuilderToken is MintableToken {
    |    
    |    string public name = "Wealth Builder Token";
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(210)

[31mViolation[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] += _value;
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] += _value;
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply += _amount;
    |    balances[_to] += _amount;
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply += _amount;
  > |    balances[_to] += _amount;
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |  function burn(address _addr, uint _amount) onlyOwner public {
    |    require(_amount > 0 && balances[_addr] >= _amount && totalSupply >= _amount);
  > |    balances[_addr] -= _amount;
    |    totalSupply -= _amount;
    |    Burn(_addr, _amount);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |    require(_amount > 0 && balances[_addr] >= _amount && totalSupply >= _amount);
    |    balances[_addr] -= _amount;
  > |    totalSupply -= _amount;
    |    Burn(_addr, _amount);
    |    Transfer(_addr, address(0), _amount);
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'WealthBuilderToken':
    |
    |    function setRate(uint _rate) onlyOwner public {
  > |        rate = _rate;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xa7cb7f55ece2d1df3379f303f33dd3e1ee593b8f.sol(228)


