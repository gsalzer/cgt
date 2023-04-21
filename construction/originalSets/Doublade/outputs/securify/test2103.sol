Processing contract: /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol:AssetGalorePresale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol:MintedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol:WhitelistedCrowdsale
[33mWarning[0m for DAOConstantGas in contract 'AssetGalorePresale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(554)

[33mWarning[0m for UnhandledException in contract 'AssetGalorePresale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(554)

[33mWarning[0m for UnhandledException in contract 'AssetGalorePresale':
    |    internal
    |  {
  > |    require(MintableToken(token).mint(_beneficiary, _tokenAmount));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(576)

[33mWarning[0m for UnhandledException in contract 'AssetGalorePresale':
    |  function finalize() public onlyOwner {
    |    require(!isFinalized);
  > |    MintableToken(token).transferOwnership(wallet);
    |    isFinalized = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(703)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AssetGalorePresale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(554)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AssetGalorePresale':
    |    internal
    |  {
  > |    require(MintableToken(token).mint(_beneficiary, _tokenAmount));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(576)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AssetGalorePresale':
    |  function finalize() public onlyOwner {
    |    require(!isFinalized);
  > |    MintableToken(token).transferOwnership(wallet);
    |    isFinalized = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(703)

[31mViolation[0m for UnrestrictedWrite in contract 'AssetGalorePresale':
    |  function addManyToWhitelist(address[] _beneficiaries) external onlyOwner {
    |    for (uint256 i = 0; i < _beneficiaries.length; i++) {
  > |      whitelist[_beneficiaries[i]] = true;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(610)

[33mWarning[0m for UnrestrictedWrite in contract 'AssetGalorePresale':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'AssetGalorePresale':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'AssetGalorePresale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'AssetGalorePresale':
    |   */
    |  function addToWhitelist(address _beneficiary) external onlyOwner {
  > |    whitelist[_beneficiary] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(601)

[33mWarning[0m for UnrestrictedWrite in contract 'AssetGalorePresale':
    |   */
    |  function removeFromWhitelist(address _beneficiary) external onlyOwner {
  > |    whitelist[_beneficiary] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(619)

[33mWarning[0m for UnrestrictedWrite in contract 'AssetGalorePresale':
    |  */
    |  function setRate(uint _rate) public onlyOwner {
  > |    rate = _rate;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(672)

[33mWarning[0m for UnrestrictedWrite in contract 'AssetGalorePresale':
    |    require(!isFinalized);
    |    MintableToken(token).transferOwnership(wallet);
  > |    isFinalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(704)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(92)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(554)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * behavior.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(377)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    internal
    |  {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(508)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(554)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    internal
    |  {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(508)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(448)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(315)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(359)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(255)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(256)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(285)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(294)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(302)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(287)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(305)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(19)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8993a31689308578c753dce3bdd41f28b6e56c0e.sol(242)


