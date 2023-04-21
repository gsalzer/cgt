Processing contract: /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol:LooqCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol:LooqToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(45)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(148)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(72)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(139)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(137)

[33mWarning[0m for DAOConstantGas in contract 'LooqCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(148)

[33mWarning[0m for LockedEther in contract 'LooqCrowdsale':
    |
    |
  > |contract LooqCrowdsale is Crowdsale {
    |
    |  function LooqCrowdsale() Crowdsale
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(353)

[33mWarning[0m for UnhandledException in contract 'LooqCrowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(139)

[33mWarning[0m for UnhandledException in contract 'LooqCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LooqCrowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LooqCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'LooqCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(137)

[33mWarning[0m for LockedEther in contract 'LooqToken':
    |
    |
  > |contract LooqToken is MintableToken {
    |  string public name = "LOOQ TOKEN";
    |  string public symbol = "LOQ";
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'LooqToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'LooqToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'LooqToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'LooqToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'LooqToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'LooqToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'LooqToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'LooqToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'LooqToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'LooqToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(293)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    |
    |}
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transfer(address _to, uint256 _value) returns (bool) {
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // require (_value <= _allowance);
    |
  > |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_to] = balances[_to].add(_value);
  > |    balances[_from] = balances[_from].sub(_value);
    |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(282)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(283)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(293)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |}
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |}
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(258)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(310)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |  */
    |  function transfer(address _to, uint256 _value) returns (bool) {
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_to] = balances[_to].add(_value);
    |    balances[_from] = balances[_from].sub(_value);
  > |    allowed[_from][msg.sender] = _allowance.sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x026c15fa9fdb63e400e74e4005c3fe76e7afc526.sol(214)


