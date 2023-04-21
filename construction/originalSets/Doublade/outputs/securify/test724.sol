Processing contract: /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol:SocialMediaIncomeCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol:SocialMediaIncomeCrowdsaleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(296)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(476)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(235)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(121)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |        //send tokens to beneficiary.
  > |        token.mint(beneficiary, tokens);
    |
    |        //send same amount of tokens to owner.
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(197)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |        //send same amount of tokens to owner.
  > |        token.mint(wallet, tokens);
    |
    |        TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(200)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(235)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |        //send tokens to beneficiary.
  > |        token.mint(beneficiary, tokens);
    |
    |        //send same amount of tokens to owner.
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |        //send same amount of tokens to owner.
  > |        token.mint(wallet, tokens);
    |
    |        TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |        // update state
  > |        weiRaised = weiRaised.add(weiAmount);
    |
    |        //send tokens to beneficiary.
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(194)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(449)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(53)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(69)

[33mWarning[0m for DAOConstantGas in contract 'SocialMediaIncomeCrowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(235)

[33mWarning[0m for LockedEther in contract 'SocialMediaIncomeCrowdsale':
    | * to ensure that subcontracts works together as intended.
    | */
  > |contract SocialMediaIncomeCrowdsale is Crowdsale {
    |
    |    function SocialMediaIncomeCrowdsale(uint256 _preIcoStartTime, uint256 _preIcoEndTime, uint256 _preIcoRate, uint256 _icoStartTime, uint256 _icoEndTime, uint256 _icoRate, address _wallet) public
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(506)

[33mWarning[0m for UnhandledException in contract 'SocialMediaIncomeCrowdsale':
    |
    |        //send tokens to beneficiary.
  > |        token.mint(beneficiary, tokens);
    |
    |        //send same amount of tokens to owner.
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(197)

[33mWarning[0m for UnhandledException in contract 'SocialMediaIncomeCrowdsale':
    |
    |        //send same amount of tokens to owner.
  > |        token.mint(wallet, tokens);
    |
    |        TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(200)

[33mWarning[0m for UnhandledException in contract 'SocialMediaIncomeCrowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(235)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SocialMediaIncomeCrowdsale':
    |
    |        //send tokens to beneficiary.
  > |        token.mint(beneficiary, tokens);
    |
    |        //send same amount of tokens to owner.
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(197)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SocialMediaIncomeCrowdsale':
    |
    |        //send same amount of tokens to owner.
  > |        token.mint(wallet, tokens);
    |
    |        TokenPurchase(msg.sender, beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SocialMediaIncomeCrowdsale':
    |    // override to create custom fund forwarding mechanisms
    |    function forwardFunds() internal {
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsale':
    |
    |        // update state
  > |        weiRaised = weiRaised.add(weiAmount);
    |
    |        //send tokens to beneficiary.
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(194)

[33mWarning[0m for LockedEther in contract 'SocialMediaIncomeCrowdsaleToken':
    | * It is meant to be used in a crowdsale contract.
    | */
  > |contract SocialMediaIncomeCrowdsaleToken is MintableToken, BurnableToken {
    |
    |    string public constant name = "Social Media Income"; // solium-disable-line uppercase
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(489)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |    // SafeMath.sub will throw if there is not enough balance.
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(297)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(338)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    Mint(_to, _amount);
    |    Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |    address burner = msg.sender;
    |    balances[burner] = balances[burner].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(477)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'SocialMediaIncomeCrowdsaleToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(449)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(399)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2dddc7b5d10d996e02984573f2cfde81e3e6bcb3.sol(401)


