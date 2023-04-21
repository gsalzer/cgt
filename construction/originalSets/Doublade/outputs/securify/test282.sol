Processing contract: /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol:EmpireCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol:EmpireToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(62)

[33mWarning[0m for DAOConstantGas in contract 'EmpireCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(444)

[33mWarning[0m for LockedEther in contract 'EmpireCrowdsale':
    | * as they arrive.
    | */
  > |contract EmpireCrowdsale is Ownable, Pausable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(343)

[33mWarning[0m for UnhandledException in contract 'EmpireCrowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(435)

[33mWarning[0m for UnhandledException in contract 'EmpireCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(444)

[33mWarning[0m for UnhandledException in contract 'EmpireCrowdsale':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    return token.finishMinting();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(452)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmpireCrowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(435)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmpireCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EmpireCrowdsale':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    return token.finishMinting();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireCrowdsale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireCrowdsale':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireCrowdsale':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireCrowdsale':
    |    // check if soft cap was reached, and for redefinition
    |    if ((weiRaised >= softCap * 1 ether) && gracePeriodStart == 0) 
  > |      gracePeriodStart = block.timestamp;
    |
    |    uint256 weiAmount = msg.value;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(425)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireCrowdsale':
    |    
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(433)

[33mWarning[0m for LockedEther in contract 'EmpireToken':
    | */
    |
  > |contract EmpireToken is StandardToken, Ownable {
    |
    |  string public name = 'Empire Token';
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(292)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(317)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'EmpireToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(328)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(268)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(279)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(189)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(187)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(235)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1389d3485a6d440f23855e538e3656230cf25d0f.sol(138)


