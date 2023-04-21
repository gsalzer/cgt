Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:CanReclaimToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:Escrow
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:HasNoEther
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:MDAPP
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:MDAPPSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:MDAPPToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:PullPayment
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:SafeMath16
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(426)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(449)

[33mWarning[0m for LockedEther in contract 'CanReclaimToken':
    | * This will prevent any accidental loss of tokens.
    | */
  > |contract CanReclaimToken is Ownable {
    |  using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(394)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(201)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(402)

[33mWarning[0m for UnrestrictedWrite in contract 'CanReclaimToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'CanReclaimToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(128)

[33mWarning[0m for DAOConstantGas in contract 'Escrow':
    |    deposits[_payee] = 0;
    |
  > |    _payee.transfer(payment);
    |
    |    emit Withdrawn(_payee, payment);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(273)

[33mWarning[0m for LockedEther in contract 'Escrow':
    | * deposit and withdraw.
    | */
  > |contract Escrow is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(240)

[33mWarning[0m for TODReceiver in contract 'Escrow':
    |    deposits[_payee] = 0;
    |
  > |    _payee.transfer(payment);
    |
    |    emit Withdrawn(_payee, payment);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(273)

[33mWarning[0m for UnhandledException in contract 'Escrow':
    |    deposits[_payee] = 0;
    |
  > |    _payee.transfer(payment);
    |
    |    emit Withdrawn(_payee, payment);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(273)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Escrow':
    |    deposits[_payee] = 0;
    |
  > |    _payee.transfer(payment);
    |
    |    emit Withdrawn(_payee, payment);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(273)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |  function deposit(address _payee) public onlyOwner payable {
    |    uint256 amount = msg.value;
  > |    deposits[_payee] = deposits[_payee].add(amount);
    |
    |    emit Deposited(_payee, amount);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'Escrow':
    |    assert(address(this).balance >= payment);
    |
  > |    deposits[_payee] = 0;
    |
    |    _payee.transfer(payment);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(271)

[33mWarning[0m for DAOConstantGas in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(377)

[33mWarning[0m for LockedEther in contract 'HasNoEther':
    | * mining directly to the contract address
    | */
  > |contract HasNoEther is Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(354)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * @dev Transfer all Ether held by the contract to the owner.
    |   */
  > |  function reclaimEther() external onlyOwner {
    |    owner.transfer(address(this).balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(376)

[31mViolation[0m for TODAmount in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(377)

[31mViolation[0m for TODReceiver in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(377)

[33mWarning[0m for UnhandledException in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(377)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(377)

[31mViolation[0m for UnrestrictedWrite in contract 'HasNoEther':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(128)

[33mWarning[0m for DAOConstantGas in contract 'MDAPP':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(377)

[33mWarning[0m for LockedEther in contract 'MDAPP':
    | * @title MDAPP
    | */
  > |contract MDAPP is Ownable, HasNoEther, CanReclaimToken {
    |  using SafeMath for uint256;
    |  using SafeMath16 for uint16;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(778)

[31mViolation[0m for TODAmount in contract 'MDAPP':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(377)

[31mViolation[0m for TODReceiver in contract 'MDAPP':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(377)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(201)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(377)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(402)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |
    |  modifier enoughTokens(uint16 _width, uint16 _height) {
  > |    require(uint16(token.unlockedTokensOf(msg.sender)) >= _width.mul(_height), "Not enough unlocked tokens available.");
    |
    |    _;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(888)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |      presales[_beneficiary] = presales[_beneficiary].add(uint16(_tokenAmount));
    |    }
  > |    token.mint(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(951)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |  // Proxy function to pass finishMinting() from sale contract to token contract.
    |  function finishMinting() onlySale external {
  > |    token.finishMinting();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(956)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |    internal returns (uint id)
    |  {
  > |    token.lockToken(msg.sender, _rect.width.mul(_rect.height));
    |
    |    // Check affected pixelblocks.
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(976)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |      presales[msg.sender] = presales[msg.sender].add(tokens);
    |    }
  > |    token.unlockToken(msg.sender, tokens);
    |
    |    emit Release(_id, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1031)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |  // Allow transfer of tokens even if minting is not yet finished.
    |  function allowTransfer() onlyOwner external {
  > |    token.allowTransfer();
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1073)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(201)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(377)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |
    |  modifier enoughTokens(uint16 _width, uint16 _height) {
  > |    require(uint16(token.unlockedTokensOf(msg.sender)) >= _width.mul(_height), "Not enough unlocked tokens available.");
    |
    |    _;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(888)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |      presales[_beneficiary] = presales[_beneficiary].add(uint16(_tokenAmount));
    |    }
  > |    token.mint(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(951)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |  // Proxy function to pass finishMinting() from sale contract to token contract.
    |  function finishMinting() onlySale external {
  > |    token.finishMinting();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(956)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |    internal returns (uint id)
    |  {
  > |    token.lockToken(msg.sender, _rect.width.mul(_rect.height));
    |
    |    // Check affected pixelblocks.
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(976)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |      presales[msg.sender] = presales[msg.sender].add(tokens);
    |    }
  > |    token.unlockToken(msg.sender, tokens);
    |
    |    emit Release(_id, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1031)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |  // Allow transfer of tokens even if minting is not yet finished.
    |  function allowTransfer() onlyOwner external {
  > |    token.allowTransfer();
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1073)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |
    |/**
  > | * @title SafeMath
    | * @dev Math operations with safety checks that throw on error
    | */
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    | * @title MDAPP
    | */
  > |contract MDAPP is Ownable, HasNoEther, CanReclaimToken {
    |  using SafeMath for uint256;
    |  using SafeMath16 for uint16;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(778)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |      require(presales[msg.sender] >= tokens, "Not enough unlocked presale tokens available.");
    |
  > |      presales[msg.sender] = presales[msg.sender].sub(tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(902)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |  function setMDAPPSale(address _mdappSale) onlyOwner external {
    |    require(sale == address(0));
  > |    sale = _mdappSale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(937)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |  function mint(address _beneficiary, uint256 _tokenAmount, bool isPresale) onlySale external {
    |    if (isPresale) {
  > |      presales[_beneficiary] = presales[_beneficiary].add(uint16(_tokenAmount));
    |    }
    |    token.mint(_beneficiary, _tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(949)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |
    |        // Mark block as claimed.
  > |        grid[x][y] = true;
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(989)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |
    |        // Mark block as unclaimed.
  > |        grid[x][y] = false;
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1011)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |
    |    // Delete ad
  > |    delete ads[_id];
    |    // Reorganize index array and map
    |    uint256 key = adIdToIndex[_id];
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1016)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    uint256 key = adIdToIndex[_id];
    |    // Fill gap with last element of adIds
  > |    adIds[key] = adIds[adIds.length - 1];
    |    // Update adIdToIndex
    |    adIdToIndex[adIds[key]] = key;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1020)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    adIds[key] = adIds[adIds.length - 1];
    |    // Update adIdToIndex
  > |    adIdToIndex[adIds[key]] = key;
    |    // Decrease length of adIds array by 1
    |    adIds.length--;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1022)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    if (now < allAdStart) {
    |      // The ad must have locked presale tokens.
  > |      presales[msg.sender] = presales[msg.sender].add(tokens);
    |    }
    |    token.unlockToken(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1029)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |  function createPlaceholderAd(Rect _rect) internal returns (uint id) {
    |    Ad memory ad = Ad(msg.sender, _rect);
  > |    id = ads.push(ad) - 1;
    |    uint256 key = adIds.push(id) - 1;
    |    adIdToIndex[id] = key;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1049)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    Ad memory ad = Ad(msg.sender, _rect);
    |    id = ads.push(ad) - 1;
  > |    uint256 key = adIds.push(id) - 1;
    |    adIdToIndex[id] = key;
    |    return id;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1050)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    id = ads.push(ad) - 1;
    |    uint256 key = adIds.push(id) - 1;
  > |    adIdToIndex[id] = key;
    |    return id;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1051)

[31mViolation[0m for DAO in contract 'MDAPPSale':
    |  */
    |  function asyncTransfer(address _dest, uint256 _amount) internal {
  > |    escrow.deposit.value(_amount)(_dest);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(315)

[33mWarning[0m for DAO in contract 'MDAPPSale':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(timestamp, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1230)

[33mWarning[0m for DAO in contract 'MDAPPSale':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1235)

[33mWarning[0m for DAOConstantGas in contract 'MDAPPSale':
    |    oracleActive = false;
    |    emit OracleFundsWithdraw(address(this).balance);
  > |    owner.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2329)

[33mWarning[0m for LockedEther in contract 'MDAPPSale':
    | * as they arrive.
    | */
  > |contract MDAPPSale is Ownable, PullPayment, usingOraclize {
    |//contract MDAPPSale is Ownable, PullPayment {
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2135)

[31mViolation[0m for TODAmount in contract 'MDAPPSale':
    |  */
    |  function asyncTransfer(address _dest, uint256 _amount) internal {
  > |    escrow.deposit.value(_amount)(_dest);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(315)

[31mViolation[0m for TODAmount in contract 'MDAPPSale':
    |    oracleActive = false;
    |    emit OracleFundsWithdraw(address(this).balance);
  > |    owner.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2329)

[31mViolation[0m for TODReceiver in contract 'MDAPPSale':
    |    oracleActive = false;
    |    emit OracleFundsWithdraw(address(this).balance);
  > |    owner.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2329)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |  function withdrawPayments() public {
    |    address payee = msg.sender;
  > |    escrow.withdraw(payee);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(298)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |  */
    |  function payments(address _dest) public view returns (uint256) {
  > |    return escrow.depositsOf(_dest);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(306)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |  */
    |  function asyncTransfer(address _dest, uint256 _amount) internal {
  > |    escrow.deposit.value(_amount)(_dest);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(315)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1151)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1152)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |
    |    function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |        return oraclize.getPrice(datasource);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1210)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(timestamp, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1228)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(timestamp, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1230)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1233)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
  > |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
    |    }
    |    function oraclize_query(string datasource, string arg1, string arg2) oraclizeAPI internal returns (bytes32 id){
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1235)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1591)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |    }
    |    function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |        return oraclize.setCustomGasPrice(gasPrice);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1597)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |    oracleActive = false;
    |    emit OracleFundsWithdraw(address(this).balance);
  > |    owner.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2329)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |    // Mint tokens.
    |    bool isPresale = endTimePresale >= now ? true : false;
  > |    mdapp.mint(_beneficiary, _tokenAmount, isPresale);
    |    emit TokenPurchase(msg.sender, _beneficiary, msg.value, _tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2384)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |    if (supply == maxSupply) {
    |      soldOut = true;
  > |      mdapp.finishMinting();
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2390)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |    // Mint tokens.
    |    bool isPresale = endTimePresale >= now ? true : false;
  > |    mdapp.mint(_beneficiary, _tokenAmount, isPresale);
    |
    |    // Stop minting once we reach max supply.
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2404)

[33mWarning[0m for UnhandledException in contract 'MDAPPSale':
    |    if (supply == maxSupply) {
    |      soldOut = true;
  > |      mdapp.finishMinting();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2409)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |  function withdrawPayments() public {
    |    address payee = msg.sender;
  > |    escrow.withdraw(payee);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(298)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |  */
    |  function payments(address _dest) public view returns (uint256) {
  > |    return escrow.depositsOf(_dest);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |            oraclize_setNetwork(networkID_auto);
    |
  > |        if(address(oraclize) != OAR.getAddress())
    |            oraclize = OraclizeI(OAR.getAddress());
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1151)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |
    |    function oraclize_getPrice(string datasource) oraclizeAPI internal returns (uint){
  > |        return oraclize.getPrice(datasource);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |    }
    |    function oraclize_query(uint timestamp, string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(timestamp, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |    }
    |    function oraclize_query(string datasource, string arg, uint gaslimit) oraclizeAPI internal returns (bytes32 id){
  > |        uint price = oraclize.getPrice(datasource, gaslimit);
    |        if (price > 1 ether + tx.gasprice*gaslimit) return 0; // unexpectedly high price
    |        return oraclize.query_withGasLimit.value(price)(0, datasource, arg, gaslimit);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1233)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |
    |    function oraclize_cbAddress() oraclizeAPI internal returns (address){
  > |        return oraclize.cbAddress();
    |    }
    |    function oraclize_setProof(byte proofP) oraclizeAPI internal {
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1591)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |    }
    |    function oraclize_setCustomGasPrice(uint gasPrice) oraclizeAPI internal {
  > |        return oraclize.setCustomGasPrice(gasPrice);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1597)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |    oracleActive = false;
    |    emit OracleFundsWithdraw(address(this).balance);
  > |    owner.transfer(address(this).balance);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2329)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |    // Mint tokens.
    |    bool isPresale = endTimePresale >= now ? true : false;
  > |    mdapp.mint(_beneficiary, _tokenAmount, isPresale);
    |    emit TokenPurchase(msg.sender, _beneficiary, msg.value, _tokenAmount);
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2384)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |    if (supply == maxSupply) {
    |      soldOut = true;
  > |      mdapp.finishMinting();
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2390)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |    // Mint tokens.
    |    bool isPresale = endTimePresale >= now ? true : false;
  > |    mdapp.mint(_beneficiary, _tokenAmount, isPresale);
    |
    |    // Stop minting once we reach max supply.
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2404)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPPSale':
    |    if (supply == maxSupply) {
    |      soldOut = true;
  > |      mdapp.finishMinting();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2409)

[31mViolation[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1152)

[31mViolation[0m for UnrestrictedWrite in contract 'MDAPPSale':
    | * as they arrive.
    | */
  > |contract MDAPPSale is Ownable, PullPayment, usingOraclize {
    |//contract MDAPPSale is Ownable, PullPayment {
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2135)

[31mViolation[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |    if (oracleActive && !soldOut) {
    |      if (oraclize_getPrice("URL") > address(this).balance) {
  > |        oracleActive = false;
    |      } else {
    |        if (_delay == 0) {
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2261)

[31mViolation[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |    if (msg.sender != oraclize_cbAddress()) revert();
    |    ethusdLast = ethusd;
  > |    ethusd = parseInt(result, 2);
    |    oracleLastUpdate = now;
    |    emit LogPriceUpdated(ethusd);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2278)

[31mViolation[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |    ethusdLast = ethusd;
    |    ethusd = parseInt(result, 2);
  > |    oracleLastUpdate = now;
    |    emit LogPriceUpdated(ethusd);
    |    requestEthUsd(oracleInterval);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2279)

[31mViolation[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |
    |    // Update supply.
  > |    supply += _tokenAmount;
    |    require(supply <= maxSupply, "Not enough tokens available.");
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2366)

[31mViolation[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |
    |    if (_recruiter == address(0)) {
  > |      weiRaised = weiRaised.add(msg.value);
    |      asyncTransfer(wallet, msg.value);
    |    } else {
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2370)

[31mViolation[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |      uint256 tenPercent = msg.value.div(10);
    |      uint256 ninetyPercent = msg.value.sub(tenPercent);
  > |      weiRaised = weiRaised.add(ninetyPercent);
    |      asyncTransfer(wallet, ninetyPercent);
    |      asyncTransfer(_recruiter, tenPercent);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2376)

[31mViolation[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |    // Stop minting once we reach max supply.
    |    if (supply == maxSupply) {
  > |      soldOut = true;
    |      mdapp.finishMinting();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2389)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |
    |        if(address(oraclize) != OAR.getAddress())
  > |            oraclize = OraclizeI(OAR.getAddress());
    |
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1152)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |    function oraclize_setNetwork() internal returns(bool){
    |        if (getCodeSize(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed)>0){ //mainnet
  > |            OAR = OraclizeAddrResolverI(0x1d3B2638a7cC9f2CB3D298A3DA7a90B67E5506ed);
    |            oraclize_setNetworkName("eth_mainnet");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1167)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |        }
    |        if (getCodeSize(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1)>0){ //ropsten testnet
  > |            OAR = OraclizeAddrResolverI(0xc03A2615D5efaf5F49F60B7BB6583eaec212fdf1);
    |            oraclize_setNetworkName("eth_ropsten3");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1172)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |        }
    |        if (getCodeSize(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e)>0){ //kovan testnet
  > |            OAR = OraclizeAddrResolverI(0xB7A07BcF2Ba2f2703b24C0691b5278999C59AC7e);
    |            oraclize_setNetworkName("eth_kovan");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1177)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |        }
    |        if (getCodeSize(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48)>0){ //rinkeby testnet
  > |            OAR = OraclizeAddrResolverI(0x146500cfd35B22E4A392Fe0aDc06De1a1368Ed48);
    |            oraclize_setNetworkName("eth_rinkeby");
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1182)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |        }
    |        if (getCodeSize(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475)>0){ //ethereum-bridge
  > |            OAR = OraclizeAddrResolverI(0x6f485C8BF6fc43eA212E93BBF8ce046C7f1cb475);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1187)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |        }
    |        if (getCodeSize(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF)>0){ //ether.camp ide
  > |            OAR = OraclizeAddrResolverI(0x20e12A1F859B3FeaE5Fb2A0A32C18F5a65555bBF);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1191)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |        }
    |        if (getCodeSize(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA)>0){ //browser-solidity
  > |            OAR = OraclizeAddrResolverI(0x51efaF4c8B3C9AfBD5aB9F4bbC82784Ab6ef8fAA);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1195)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    | * as they arrive.
    | */
  > |contract MDAPPSale is Ownable, PullPayment, usingOraclize {
    |//contract MDAPPSale is Ownable, PullPayment {
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2135)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |  function __callback(bytes32 myid, string result) public {
    |    if (msg.sender != oraclize_cbAddress()) revert();
  > |    ethusdLast = ethusd;
    |    ethusd = parseInt(result, 2);
    |    oracleLastUpdate = now;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2277)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |  // Activate ethusd oracle
    |  function activateOracle() onlyOwner external payable {
  > |    oracleActive = true;
    |    requestEthUsd(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2286)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |    require(_gasPrice > 0, "Gas price must be a positive number.");
    |    oraclize_setCustomGasPrice(_gasPrice);
  > |    oracleGasPrice = _gasPrice;
    |    emit OracleGasPriceChange(_gasPrice);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2293)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |  function setOracleGasLimit(uint256 _gasLimit) onlyOwner external {
    |    require(_gasLimit > 0, "Gas limit must be a positive number.");
  > |    oracleGasLimit = _gasLimit;
    |    emit OracleGasLimitChange(_gasLimit);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2299)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |  function setOracleInterval(uint256 _interval) onlyOwner external {
    |    require(_interval > 0, "Interval must be > 0");
  > |    oracleInterval = _interval;
    |    emit OracleIntervalChange(_interval);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2305)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |  function setEthUsd(uint256 _ethusd) onlyOwner external {
    |    require(_ethusd > 0, "ETHUSD must be > 0");
  > |    ethusd = _ethusd;
    |    emit ETHUSDSet(_ethusd);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2319)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |   */
    |  function withdrawOracleFunds() onlyOwner external {
  > |    oracleActive = false;
    |    emit OracleFundsWithdraw(address(this).balance);
    |    owner.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2327)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |
    |    // Update supply.
  > |    supply += _tokenAmount;
    |    require(supply <= maxSupply, "Not enough tokens available.");
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2399)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPSale':
    |    // Stop minting once we reach max supply.
    |    if (supply == maxSupply) {
  > |      soldOut = true;
    |      mdapp.finishMinting();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(2408)

[33mWarning[0m for LockedEther in contract 'MDAPPToken':
    | * @dev Owned by MDAPP.sol
    | */
  > |contract MDAPPToken is MintableToken {
    |  using SafeMath16 for uint16;
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(658)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(501)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(578)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(580)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(629)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |  function lockToken(address _account, uint16 _value) onlyOwner hasUnlocked(_account, _value) public {
  > |    locked[_account] = locked[_account].add(_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(712)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |  function unlockToken(address _account, uint16 _value) onlyOwner hasLocked(_account, _value) public {
  > |    locked[_account] = locked[_account].sub(_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(716)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(640)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(forceTransferEnable == false, 'Transfer already force-allowed.');
    |
  > |    forceTransferEnable = true;
    |    emit AllowTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(767)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(596)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(500)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(501)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(578)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(580)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(628)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(629)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(640)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(128)

[33mWarning[0m for LockedEther in contract 'PullPayment':
    | * contract and use asyncTransfer instead of send or transfer.
    | */
  > |contract PullPayment {
    |  Escrow private escrow;
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(286)

[31mViolation[0m for MissingInputValidation in contract 'PullPayment':
    |  * @param _dest The creditor's address.
    |  */
  > |  function payments(address _dest) public view returns (uint256) {
    |    return escrow.depositsOf(_dest);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(305)

[33mWarning[0m for MissingInputValidation in contract 'PullPayment':
    |  * @dev Withdraw accumulated balance, called by payee.
    |  */
  > |  function withdrawPayments() public {
    |    address payee = msg.sender;
    |    escrow.withdraw(payee);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(296)

[33mWarning[0m for UnhandledException in contract 'PullPayment':
    |  function withdrawPayments() public {
    |    address payee = msg.sender;
  > |    escrow.withdraw(payee);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(298)

[33mWarning[0m for UnhandledException in contract 'PullPayment':
    |  */
    |  function payments(address _dest) public view returns (uint256) {
  > |    return escrow.depositsOf(_dest);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullPayment':
    |  function withdrawPayments() public {
    |    address payee = msg.sender;
  > |    escrow.withdraw(payee);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(298)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PullPayment':
    |  */
    |  function payments(address _dest) public view returns (uint256) {
  > |    return escrow.depositsOf(_dest);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(306)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(
    |    ERC20Basic _token,
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(193)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(8)

[33mWarning[0m for LockedEther in contract 'SafeMath16':
    |
    |
  > |library SafeMath16 {
    |  function mul(uint16 a, uint16 b) internal pure returns (uint16) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(133)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(449)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(501)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(516)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(578)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(580)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    |    function getAddress() public returns (address _addr);
    |}
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xeeedac8686ae12183129e80e632e922dd8daecc4.sol(1128)


