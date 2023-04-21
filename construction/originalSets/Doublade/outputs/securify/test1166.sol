Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:CappedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:MintedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:TaxiCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol:TaxiToken
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
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(136)

[33mWarning[0m for LockedEther in contract 'CappedToken':
    | * @dev Mintable token with a token cap.
    | */
  > |contract CappedToken is MintableToken {
    |
    |  uint256 public cap;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'CappedToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(287)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(552)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(415)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(518)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(552)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(518)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(552)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(478)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(287)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(38)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(327)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(331)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(353)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(362)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |  function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(362)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(65)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(242)

[31mViolation[0m for DAOConstantGas in contract 'TaxiCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(552)

[33mWarning[0m for LockedEther in contract 'TaxiCrowdsale':
    |  it can finalized meaning all left tokens will be assigned to owner wallet
    |*/
  > |contract TaxiCrowdsale is MintedCrowdsale, Pausable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(576)

[33mWarning[0m for UnhandledException in contract 'TaxiCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(552)

[33mWarning[0m for UnhandledException in contract 'TaxiCrowdsale':
    |  */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    require(MintableToken(token).mint(_beneficiary, _tokenAmount));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(565)

[33mWarning[0m for UnhandledException in contract 'TaxiCrowdsale':
    |    TaxiToken taxiToken = TaxiToken(token);
    |    // mint all leftovers
  > |    require(taxiToken.mint(wallet, leftovers));
    |
    |    // mint all the dedicated tokens to wallet
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(697)

[33mWarning[0m for UnhandledException in contract 'TaxiCrowdsale':
    |
    |    // mint all the dedicated tokens to wallet
  > |    require(taxiToken.mint(wallet, 200 * 10**24));
    |
    |    require(taxiToken.finishMinting());
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(700)

[33mWarning[0m for UnhandledException in contract 'TaxiCrowdsale':
    |    require(taxiToken.mint(wallet, 200 * 10**24));
    |
  > |    require(taxiToken.finishMinting());
    |    taxiToken.transferOwnership(wallet);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(702)

[33mWarning[0m for UnhandledException in contract 'TaxiCrowdsale':
    |
    |    require(taxiToken.finishMinting());
  > |    taxiToken.transferOwnership(wallet);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(703)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaxiCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(552)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaxiCrowdsale':
    |  */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    require(MintableToken(token).mint(_beneficiary, _tokenAmount));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(565)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaxiCrowdsale':
    |    TaxiToken taxiToken = TaxiToken(token);
    |    // mint all leftovers
  > |    require(taxiToken.mint(wallet, leftovers));
    |
    |    // mint all the dedicated tokens to wallet
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(697)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaxiCrowdsale':
    |
    |    // mint all the dedicated tokens to wallet
  > |    require(taxiToken.mint(wallet, 200 * 10**24));
    |
    |    require(taxiToken.finishMinting());
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(700)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaxiCrowdsale':
    |    require(taxiToken.mint(wallet, 200 * 10**24));
    |
  > |    require(taxiToken.finishMinting());
    |    taxiToken.transferOwnership(wallet);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(702)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TaxiCrowdsale':
    |
    |    require(taxiToken.finishMinting());
  > |    taxiToken.transferOwnership(wallet);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(703)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(478)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |    uint256 _tokens = _weiAmount.mul(rate);
    |    if (toSellTillNextStep > _tokens && leftovers > _tokens) {
  > |      toSellTillNextStep = toSellTillNextStep.sub(_tokens);
    |      leftovers = leftovers.sub(_tokens);
    |      return _tokens;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(613)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |    if (toSellTillNextStep > _tokens && leftovers > _tokens) {
    |      toSellTillNextStep = toSellTillNextStep.sub(_tokens);
  > |      leftovers = leftovers.sub(_tokens);
    |      return _tokens;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(614)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |      if (toSellTillNextStep < _tokens) {
    |          _stepTokens = toSellTillNextStep;
  > |          toSellTillNextStep = TOKENS_RATE_CHANGE_STEP;
    |          _weiReq = _stepTokens.div(rate);
    |          _weiAmount = _weiAmount.sub(_weiReq);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(626)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |            _stepTokens = _tokens;
    |          }
  > |          toSellTillNextStep = toSellTillNextStep.sub(_stepTokens);
    |          _weiReq = _stepTokens.div(rate);
    |          _weiAmount = _weiAmount.sub(_weiReq);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(635)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |      }
    |      _tokensToSend = _tokensToSend.add(_stepTokens);
  > |      leftovers = leftovers.sub(_stepTokens);
    |
    |      _tokens = _weiAmount.mul(rate);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(640)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |    super._postValidatePurchase(_beneficiary, _weiAmount);
    |    if (overflowAmount > 0) {
  > |      weiRaised = weiRaised.sub(overflowAmount);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(659)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |
    |  function _calcNextRate() internal {
  > |      rate = rate.sub(RATE_STEP);
    |      if (rate < MIN_RATE) {
    |        rate = MIN_RATE;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(664)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |      rate = rate.sub(RATE_STEP);
    |      if (rate < MIN_RATE) {
  > |        rate = MIN_RATE;
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(666)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |  function _assignOverlfowData(uint256 _weiAmount) internal {
    |      require(leftovers <= 0);
  > |      overflowOwner = msg.sender;
    |      overflowAmount = _weiAmount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(677)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |      require(leftovers <= 0);
    |      overflowOwner = msg.sender;
  > |      overflowAmount = _weiAmount;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(678)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiCrowdsale':
    |    Finalized();
    |
  > |    isFinalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(691)

[33mWarning[0m for LockedEther in contract 'TaxiToken':
    |  while your ico is not over.
    |*/
  > |contract TaxiToken is CappedToken, PausableToken {
    |
    |  uint256 private constant TOKEN_CAP = 500 * 10**24;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(402)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'TaxiToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x49dc07a8516e1da8f9409dce0d456f3c1f559296.sol(362)


