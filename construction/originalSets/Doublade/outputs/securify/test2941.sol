Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:BasicCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:ClosableCrowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:MaxContributionCrowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:MintedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:WhitelistedBasicCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol:WhitelistedCrowdsale
[33mWarning[0m for DAOConstantGas in contract 'BasicCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(266)

[33mWarning[0m for LockedEther in contract 'BasicCrowdsale':
    |}
    |
  > |contract BasicCrowdsale is MintedCrowdsale, CappedCrowdsale, ClosableCrowdsale {
    |    uint256 public startingTime;
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(601)

[33mWarning[0m for UnhandledException in contract 'BasicCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(266)

[33mWarning[0m for UnhandledException in contract 'BasicCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    require(MintableToken(token).mint(_beneficiary, _tokenAmount));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(503)

[33mWarning[0m for UnhandledException in contract 'BasicCrowdsale':
    |
    |    function getMaxContributionAmount() public view returns(uint256) {
  > |        return MaxContributionCrowdsale(maxContributionAmountContract).getMaxContributionAmount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(646)

[33mWarning[0m for UnhandledException in contract 'BasicCrowdsale':
    |
    |    function createBountyToken(address beneficiary, uint256 amount) public onlyOwner onlyOpenCrowdsale returns (bool) {
  > |        MintableToken(token).mint(beneficiary, amount);
    |        LogBountyTokenMinted(msg.sender, beneficiary, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(693)

[33mWarning[0m for UnhandledException in contract 'BasicCrowdsale':
    |
    |    function close() internal {
  > |        MintableToken(token).transferOwnership(owner);
    |        super.close();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(699)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BasicCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BasicCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    require(MintableToken(token).mint(_beneficiary, _tokenAmount));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(503)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BasicCrowdsale':
    |
    |    function getMaxContributionAmount() public view returns(uint256) {
  > |        return MaxContributionCrowdsale(maxContributionAmountContract).getMaxContributionAmount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(646)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BasicCrowdsale':
    |
    |    function createBountyToken(address beneficiary, uint256 amount) public onlyOwner onlyOpenCrowdsale returns (bool) {
  > |        MintableToken(token).mint(beneficiary, amount);
    |        LogBountyTokenMinted(msg.sender, beneficiary, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(693)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BasicCrowdsale':
    |
    |    function close() internal {
  > |        MintableToken(token).transferOwnership(owner);
    |        super.close();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(699)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicCrowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicCrowdsale':
    |        emit Closed();
    |
  > |        isClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicCrowdsale':
    |
    |    function setMaxContributionCrowdsaleAddress(address _maxContributionAmountContractAddress) public onlyOwner {
  > |        maxContributionAmountContract = _maxContributionAmountContractAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(642)

[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(312)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(335)

[33mWarning[0m for LockedEther in contract 'ClosableCrowdsale':
    |}
    |
  > |contract ClosableCrowdsale is Ownable {
    |
    |    bool public isClosed = false;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(560)

[33mWarning[0m for UnrestrictedWrite in contract 'ClosableCrowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ClosableCrowdsale':
    |        emit Closed();
    |
  > |        isClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(579)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(266)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * behavior.
    | */
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(124)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(232)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(232)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(187)

[33mWarning[0m for LockedEther in contract 'MaxContributionCrowdsale':
    |}
    |
  > |contract MaxContributionCrowdsale {
    |
    |    function getMaxContributionAmount() public view returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(592)

[33mWarning[0m for MissingInputValidation in contract 'MaxContributionCrowdsale':
    |contract MaxContributionCrowdsale {
    |
  > |    function getMaxContributionAmount() public view returns (uint256) {
    |        // ToDo: Change value to real before deploy
    |        return 15 ether;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(594)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(375)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(376)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(439)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function mint(address _to, uint256 _amount) onlyOwner canMint public returns (bool) {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() onlyOwner canMint public returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(484)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(84)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(439)

[33mWarning[0m for DAOConstantGas in contract 'WhitelistedBasicCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(266)

[33mWarning[0m for UnhandledException in contract 'WhitelistedBasicCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(266)

[33mWarning[0m for UnhandledException in contract 'WhitelistedBasicCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    require(MintableToken(token).mint(_beneficiary, _tokenAmount));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(503)

[33mWarning[0m for UnhandledException in contract 'WhitelistedBasicCrowdsale':
    |
    |    function getMaxContributionAmount() public view returns(uint256) {
  > |        return MaxContributionCrowdsale(maxContributionAmountContract).getMaxContributionAmount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(646)

[33mWarning[0m for UnhandledException in contract 'WhitelistedBasicCrowdsale':
    |
    |    function createBountyToken(address beneficiary, uint256 amount) public onlyOwner onlyOpenCrowdsale returns (bool) {
  > |        MintableToken(token).mint(beneficiary, amount);
    |        LogBountyTokenMinted(msg.sender, beneficiary, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(693)

[33mWarning[0m for UnhandledException in contract 'WhitelistedBasicCrowdsale':
    |
    |    function close() internal {
  > |        MintableToken(token).transferOwnership(owner);
    |        super.close();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(699)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedBasicCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(266)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedBasicCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    require(MintableToken(token).mint(_beneficiary, _tokenAmount));
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(503)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedBasicCrowdsale':
    |
    |    function getMaxContributionAmount() public view returns(uint256) {
  > |        return MaxContributionCrowdsale(maxContributionAmountContract).getMaxContributionAmount();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(646)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedBasicCrowdsale':
    |
    |    function createBountyToken(address beneficiary, uint256 amount) public onlyOwner onlyOpenCrowdsale returns (bool) {
  > |        MintableToken(token).mint(beneficiary, amount);
    |        LogBountyTokenMinted(msg.sender, beneficiary, amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(693)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WhitelistedBasicCrowdsale':
    |
    |    function close() internal {
  > |        MintableToken(token).transferOwnership(owner);
    |        super.close();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(699)

[31mViolation[0m for UnrestrictedWrite in contract 'WhitelistedBasicCrowdsale':
    |  function addManyToWhitelist(address[] _beneficiaries) external onlyOwner {
    |    for (uint256 i = 0; i < _beneficiaries.length; i++) {
  > |      whitelist[_beneficiaries[i]] = true;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedBasicCrowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedBasicCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedBasicCrowdsale':
    |   */
    |  function addToWhitelist(address _beneficiary) external onlyOwner {
  > |    whitelist[_beneficiary] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(528)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedBasicCrowdsale':
    |   */
    |  function removeFromWhitelist(address _beneficiary) external onlyOwner {
  > |    whitelist[_beneficiary] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(546)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedBasicCrowdsale':
    |        emit Closed();
    |
  > |        isClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'WhitelistedBasicCrowdsale':
    |
    |    function setMaxContributionCrowdsaleAddress(address _maxContributionAmountContractAddress) public onlyOwner {
  > |        maxContributionAmountContract = _maxContributionAmountContractAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc169bfeb368462b3325e3918c9f370d132a880d6.sol(642)


