Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:AllowanceCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:CappedCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:Certifiable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:Certifier
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:EDUCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:EDUToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:ERC827
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:ERC827Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:KYCToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol:TimedCrowdsale
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |}
    |
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(397)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(420)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    |}
    |
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(653)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(421)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(670)

[33mWarning[0m for LockedEther in contract 'Certifiable':
    |}
    |
  > |contract Certifiable is Ownable {
    |    Certifier public certifier;
    |    event CertifierChanged(address indexed newCertifier);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Certifiable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Certifiable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Certifiable':
    |
    |contract Certifiable is Ownable {
  > |    Certifier public certifier;
    |    event CertifierChanged(address indexed newCertifier);
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Certifiable':
    |    }
    |
  > |    function updateCertifier(address _address) public onlyOwner returns (bool success) {
    |        require(_address != address(0));
    |        emit CertifierChanged(_address);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Certifiable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Certifiable':
    |        require(_address != address(0));
    |        emit CertifierChanged(_address);
  > |        certifier = Certifier(_address);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(91)

[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(284)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(142)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(250)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(284)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(250)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(205)

[33mWarning[0m for DAOConstantGas in contract 'EDUCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(284)

[33mWarning[0m for LockedEther in contract 'EDUCrowdsale':
    |}
    |
  > |contract EDUCrowdsale is AllowanceCrowdsale, CappedCrowdsale, TimedCrowdsale, Ownable, Certifiable {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(753)

[31mViolation[0m for TODReceiver in contract 'EDUCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(284)

[33mWarning[0m for UnhandledException in contract 'EDUCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(284)

[33mWarning[0m for UnhandledException in contract 'EDUCrowdsale':
    |   */
    |  function remainingTokens() public view returns (uint256) {
  > |    return token.allowance(tokenWallet, this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(356)

[33mWarning[0m for UnhandledException in contract 'EDUCrowdsale':
    |
    |    function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |        if (certifier.certified(_beneficiary)) {
    |            token.transferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(784)

[33mWarning[0m for UnhandledException in contract 'EDUCrowdsale':
    |    function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
    |        if (certifier.certified(_beneficiary)) {
  > |            token.transferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |        } else {
    |            token.delayedTransferFrom(tokenWallet, _beneficiary, _tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(785)

[33mWarning[0m for UnhandledException in contract 'EDUCrowdsale':
    |            token.transferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |        } else {
  > |            token.delayedTransferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(787)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EDUCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(284)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EDUCrowdsale':
    |   */
    |  function remainingTokens() public view returns (uint256) {
  > |    return token.allowance(tokenWallet, this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(356)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EDUCrowdsale':
    |
    |    function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |        if (certifier.certified(_beneficiary)) {
    |            token.transferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(784)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EDUCrowdsale':
    |    function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
    |        if (certifier.certified(_beneficiary)) {
  > |            token.transferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |        } else {
    |            token.delayedTransferFrom(tokenWallet, _beneficiary, _tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(785)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EDUCrowdsale':
    |            token.transferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |        } else {
  > |            token.delayedTransferFrom(tokenWallet, _beneficiary, _tokenAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(787)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUCrowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUCrowdsale':
    |        require(_address != address(0));
    |        emit CertifierChanged(_address);
  > |        certifier = Certifier(_address);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUCrowdsale':
    |    function changeTokenWallet(address _tokenWallet) external onlyOwner {
    |        require(_tokenWallet != address(0x0));
  > |        tokenWallet = _tokenWallet;
    |        emit TokenWalletChanged(_tokenWallet);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(831)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUCrowdsale':
    |    function changeWallet(address _wallet) external onlyOwner {
    |        require(_wallet != address(0x0));
  > |        wallet = _wallet;
    |        emit WalletChanged(_wallet);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(837)

[33mWarning[0m for DAO in contract 'EDUToken':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(550)

[33mWarning[0m for DAO in contract 'EDUToken':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(571)

[33mWarning[0m for DAO in contract 'EDUToken':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(599)

[33mWarning[0m for DAO in contract 'EDUToken':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(622)

[33mWarning[0m for DAO in contract 'EDUToken':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(646)

[33mWarning[0m for LockedEther in contract 'EDUToken':
    |}
    |
  > |contract EDUToken is BurnableToken, KYCToken, ERC827Token {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(677)

[33mWarning[0m for UnhandledException in contract 'EDUToken':
    |
    |    modifier isKnownCustomer(address _address) {
  > |        require(!kycPending[_address] || certifier.certified(_address));
    |        if (kycPending[_address]) {
    |            kycPending[_address] = false;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(109)

[33mWarning[0m for UnhandledException in contract 'EDUToken':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(550)

[33mWarning[0m for UnhandledException in contract 'EDUToken':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(571)

[33mWarning[0m for UnhandledException in contract 'EDUToken':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(599)

[33mWarning[0m for UnhandledException in contract 'EDUToken':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(622)

[33mWarning[0m for UnhandledException in contract 'EDUToken':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(646)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EDUToken':
    |
    |    modifier isKnownCustomer(address _address) {
  > |        require(!kycPending[_address] || certifier.certified(_address));
    |        if (kycPending[_address]) {
    |            kycPending[_address] = false;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'EDUToken':
    |        require(!kycPending[_address] || certifier.certified(_address));
    |        if (kycPending[_address]) {
  > |            kycPending[_address] = false;
    |        }
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |        require(!kycPending[_address] || certifier.certified(_address));
    |        if (kycPending[_address]) {
  > |            kycPending[_address] = false;
    |        }
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(421)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |    require(_value <= allowed[_from][msg.sender]);
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(454)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(517)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |    // sender's balance is greater than the totalSupply, which *should* be an assertion failure
    |
  > |    balances[_who] = balances[_who].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(670)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |
    |    balances[_who] = balances[_who].sub(_value);
  > |    totalSupply_ = totalSupply_.sub(_value);
    |    emit Burn(_who, _value);
    |    emit Transfer(_who, address(0), _value);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(671)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |    function delayedTransferFrom(address _tokenWallet, address _to, uint256 _value) public onlyManager returns (bool) {
    |        transferFrom(_tokenWallet, _to, _value);
  > |        kycPending[_to] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(714)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |        require(_address != address(0));
    |        emit CertifierChanged(_address);
  > |        certifier = Certifier(_address);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |
    |    function addManager(address _address) external onlyOwner {
  > |        managers[_address] = true;
    |        emit ManagerAdded(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'EDUToken':
    |
    |    function removeManager(address _address) external onlyOwner {
  > |        managers[_address] = false;
    |        emit ManagerRemoved(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(127)

[33mWarning[0m for DAO in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(550)

[33mWarning[0m for DAO in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(571)

[33mWarning[0m for DAO in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(599)

[33mWarning[0m for DAO in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(622)

[33mWarning[0m for DAO in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(646)

[33mWarning[0m for LockedEther in contract 'ERC827Token':
    |}
    |
  > |contract ERC827Token is ERC827, StandardToken {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(525)

[33mWarning[0m for UnhandledException in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(550)

[33mWarning[0m for UnhandledException in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(571)

[33mWarning[0m for UnhandledException in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_to.call.value(msg.value)(_data));
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(599)

[33mWarning[0m for UnhandledException in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(622)

[33mWarning[0m for UnhandledException in contract 'ERC827Token':
    |
    |    // solium-disable-next-line security/no-call-value
  > |    require(_spender.call.value(msg.value)(_data));
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(646)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC827Token':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(517)

[33mWarning[0m for LockedEther in contract 'KYCToken':
    |}
    |
  > |contract KYCToken is Certifiable {
    |    mapping(address => bool) public kycPending;
    |    mapping(address => bool) public managers;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'KYCToken':
    |
    |contract KYCToken is Certifiable {
  > |    mapping(address => bool) public kycPending;
    |    mapping(address => bool) public managers;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'KYCToken':
    |contract KYCToken is Certifiable {
    |    mapping(address => bool) public kycPending;
  > |    mapping(address => bool) public managers;
    |
    |    event ManagerAdded(address indexed newManager);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'KYCToken':
    |    }
    |
  > |    function addManager(address _address) external onlyOwner {
    |        managers[_address] = true;
    |        emit ManagerAdded(_address);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'KYCToken':
    |    }
    |
  > |    function removeManager(address _address) external onlyOwner {
    |        managers[_address] = false;
    |        emit ManagerRemoved(_address);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'KYCToken':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'KYCToken':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'KYCToken':
    |
    |contract Certifiable is Ownable {
  > |    Certifier public certifier;
    |    event CertifierChanged(address indexed newCertifier);
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'KYCToken':
    |    }
    |
  > |    function updateCertifier(address _address) public onlyOwner returns (bool success) {
    |        require(_address != address(0));
    |        emit CertifierChanged(_address);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'KYCToken':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'KYCToken':
    |        require(_address != address(0));
    |        emit CertifierChanged(_address);
  > |        certifier = Certifier(_address);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'KYCToken':
    |
    |    function addManager(address _address) external onlyOwner {
  > |        managers[_address] = true;
    |        emit ManagerAdded(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'KYCToken':
    |
    |    function removeManager(address _address) external onlyOwner {
  > |        managers[_address] = false;
    |        emit ManagerRemoved(_address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(127)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(75)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.13;
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(455)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(497)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(515)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2f55045439c0361ac971686e06d5b698952f89c1.sol(517)


