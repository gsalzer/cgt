Processing contract: /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol:BlockchainAirCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol:BlockchainAirToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(269)

[33mWarning[0m for DAOConstantGas in contract 'BlockchainAirCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(188)

[33mWarning[0m for LockedEther in contract 'BlockchainAirCrowdsale':
    |
    |
  > |contract BlockchainAirCrowdsale is CappedCrowdsale, Ownable {
    |    uint256 public reminder;
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(447)

[33mWarning[0m for UnhandledException in contract 'BlockchainAirCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(188)

[33mWarning[0m for UnhandledException in contract 'BlockchainAirCrowdsale':
    |
    |    function transferTokens(address _to, uint256 _amount) onlyOwner external {
  > |        token.mint(_to, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(458)

[33mWarning[0m for UnhandledException in contract 'BlockchainAirCrowdsale':
    |        weiRaised = weiRaised.add(weiAmount);
    |
  > |        token.mint(beneficiary, tokens);
    |        TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(476)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BlockchainAirCrowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BlockchainAirCrowdsale':
    |
    |    function transferTokens(address _to, uint256 _amount) onlyOwner external {
  > |        token.mint(_to, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(458)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BlockchainAirCrowdsale':
    |        weiRaised = weiRaised.add(weiAmount);
    |
  > |        token.mint(beneficiary, tokens);
    |        TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirCrowdsale':
    |        uint256 tokens = weiAmount.mul(rate).add(weiAmount.mul(reminder).div(100));
    |
  > |        weiRaised = weiRaised.add(weiAmount);
    |
    |        token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirCrowdsale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirCrowdsale':
    |    function setCap(uint256 _cap) onlyOwner external {
    |        require(_cap > 0);
  > |        cap = _cap;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(463)

[33mWarning[0m for LockedEther in contract 'BlockchainAirToken':
    |
    |
  > |contract BlockchainAirToken is MintableToken {
    |    string public constant name = "BlockchainAirToken";
    |    string public constant symbol = "AIR";
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'BlockchainAirToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(428)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(188)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(112)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(179)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    token.mint(beneficiary, tokens);
    |    TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(179)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    token.mint(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(177)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | */
    |
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(328)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(329)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(378)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply = totalSupply.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(416)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply = totalSupply.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(428)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(55)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(70)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(330)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x3de5e73e975e0b99ca920f422f31f234150f31c6.sol(378)


