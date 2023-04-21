Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol:EZCash
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(81)

[31mViolation[0m for LockedEther in contract 'EZCash':
    |}
    |
  > |contract EZCash is MintableToken {
    |  string public constant name = "eZCash";
    |  string public constant symbol = "EZEC";
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(195)

[31mViolation[0m for UnrestrictedWrite in contract 'EZCash':
    |  function setLockByPass(address[] addresses, bool locked) onlyOwner{
    |    for (uint i = 0; i < addresses.length; i++) {
  > |       _lockByPass[addresses[i]] = locked;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'EZCash':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'EZCash':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'EZCash':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'EZCash':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'EZCash':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'EZCash':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'EZCash':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'EZCash':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'EZCash':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'EZCash':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'EZCash':
    |
    |  function setUnlockTimeStamp(uint _unlockTimeStamp) onlyOwner {
  > |    unlockTimeStamp = _unlockTimeStamp;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(208)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |}
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(189)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0c6c9beeeb5de377210930f09a7ac9a99ff5e981.sol(142)

