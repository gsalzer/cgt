Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:CanReclaimToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:HasNoEther
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:MDAPP
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:MDAPPToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:MintableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:SafeERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:SafeMath16
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(343)

[33mWarning[0m for LockedEther in contract 'CanReclaimToken':
    | * This will prevent any accidental loss of tokens.
    | */
  > |contract CanReclaimToken is Ownable {
    |  using SafeERC20 for ERC20Basic;
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(288)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(149)

[33mWarning[0m for UnhandledException in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CanReclaimToken':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'CanReclaimToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'CanReclaimToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(76)

[33mWarning[0m for DAOConstantGas in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(271)

[33mWarning[0m for LockedEther in contract 'HasNoEther':
    | * mining directly to the contract address
    | */
  > |contract HasNoEther is Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(248)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'HasNoEther':
    |   * @dev Transfer all Ether held by the contract to the owner.
    |   */
  > |  function reclaimEther() external onlyOwner {
    |    owner.transfer(address(this).balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(270)

[31mViolation[0m for TODAmount in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(271)

[31mViolation[0m for TODReceiver in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(271)

[33mWarning[0m for UnhandledException in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HasNoEther':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(271)

[31mViolation[0m for UnrestrictedWrite in contract 'HasNoEther':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'HasNoEther':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(76)

[33mWarning[0m for DAOConstantGas in contract 'MDAPP':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(271)

[33mWarning[0m for LockedEther in contract 'MDAPP':
    | * @title MDAPP
    | */
  > |contract MDAPP is Ownable, HasNoEther, CanReclaimToken {
    |  using SafeMath for uint256;
    |  using SafeMath16 for uint16;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(672)

[31mViolation[0m for TODAmount in contract 'MDAPP':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(271)

[31mViolation[0m for TODReceiver in contract 'MDAPP':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(271)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(149)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(271)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(296)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |
    |  modifier enoughTokens(uint16 _width, uint16 _height) {
  > |    require(uint16(token.unlockedTokensOf(msg.sender)) >= _width.mul(_height), "Not enough unlocked tokens available.");
    |
    |    _;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(782)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |      presales[_beneficiary] = presales[_beneficiary].add(uint16(_tokenAmount));
    |    }
  > |    token.mint(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(845)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |  // Proxy function to pass finishMinting() from sale contract to token contract.
    |  function finishMinting() onlySale external {
  > |    token.finishMinting();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(850)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |    internal returns (uint id)
    |  {
  > |    token.lockToken(msg.sender, _rect.width.mul(_rect.height));
    |
    |    // Check affected pixelblocks.
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(870)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |      presales[msg.sender] = presales[msg.sender].add(tokens);
    |    }
  > |    token.unlockToken(msg.sender, tokens);
    |
    |    emit Release(_id, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(925)

[33mWarning[0m for UnhandledException in contract 'MDAPP':
    |  // Allow transfer of tokens even if minting is not yet finished.
    |  function allowTransfer() onlyOwner external {
  > |    token.allowTransfer();
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(967)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |    internal
    |  {
  > |    require(_token.transfer(_to, _value));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(149)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |   */
    |  function reclaimEther() external onlyOwner {
  > |    owner.transfer(address(this).balance);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |   */
    |  function reclaimToken(ERC20Basic _token) external onlyOwner {
  > |    uint256 balance = _token.balanceOf(this);
    |    _token.safeTransfer(owner, balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(296)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |
    |  modifier enoughTokens(uint16 _width, uint16 _height) {
  > |    require(uint16(token.unlockedTokensOf(msg.sender)) >= _width.mul(_height), "Not enough unlocked tokens available.");
    |
    |    _;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(782)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |      presales[_beneficiary] = presales[_beneficiary].add(uint16(_tokenAmount));
    |    }
  > |    token.mint(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(845)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |  // Proxy function to pass finishMinting() from sale contract to token contract.
    |  function finishMinting() onlySale external {
  > |    token.finishMinting();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(850)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |    internal returns (uint id)
    |  {
  > |    token.lockToken(msg.sender, _rect.width.mul(_rect.height));
    |
    |    // Check affected pixelblocks.
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(870)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |      presales[msg.sender] = presales[msg.sender].add(tokens);
    |    }
  > |    token.unlockToken(msg.sender, tokens);
    |
    |    emit Release(_id, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(925)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MDAPP':
    |  // Allow transfer of tokens even if minting is not yet finished.
    |  function allowTransfer() onlyOwner external {
  > |    token.allowTransfer();
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(967)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |
    |/**
  > | * @title ERC20Basic
    | * @dev Simpler version of ERC20 interface
    | * See https://github.com/ethereum/EIPs/issues/179
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    | * @title MDAPP
    | */
  > |contract MDAPP is Ownable, HasNoEther, CanReclaimToken {
    |  using SafeMath for uint256;
    |  using SafeMath16 for uint16;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(672)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |      require(presales[msg.sender] >= tokens, "Not enough unlocked presale tokens available.");
    |
  > |      presales[msg.sender] = presales[msg.sender].sub(tokens);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(796)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |  function setMDAPPSale(address _mdappSale) onlyOwner external {
    |    require(sale == address(0));
  > |    sale = _mdappSale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(831)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |  function mint(address _beneficiary, uint256 _tokenAmount, bool isPresale) onlySale external {
    |    if (isPresale) {
  > |      presales[_beneficiary] = presales[_beneficiary].add(uint16(_tokenAmount));
    |    }
    |    token.mint(_beneficiary, _tokenAmount);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(843)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |
    |        // Mark block as claimed.
  > |        grid[x][y] = true;
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(883)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |
    |        // Mark block as unclaimed.
  > |        grid[x][y] = false;
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(905)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |
    |    // Delete ad
  > |    delete ads[_id];
    |    // Reorganize index array and map
    |    uint256 key = adIdToIndex[_id];
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(910)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    uint256 key = adIdToIndex[_id];
    |    // Fill gap with last element of adIds
  > |    adIds[key] = adIds[adIds.length - 1];
    |    // Update adIdToIndex
    |    adIdToIndex[adIds[key]] = key;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(914)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    adIds[key] = adIds[adIds.length - 1];
    |    // Update adIdToIndex
  > |    adIdToIndex[adIds[key]] = key;
    |    // Decrease length of adIds array by 1
    |    adIds.length--;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(916)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    if (now < allAdStart) {
    |      // The ad must have locked presale tokens.
  > |      presales[msg.sender] = presales[msg.sender].add(tokens);
    |    }
    |    token.unlockToken(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(923)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |  function createPlaceholderAd(Rect _rect) internal returns (uint id) {
    |    Ad memory ad = Ad(msg.sender, _rect);
  > |    id = ads.push(ad) - 1;
    |    uint256 key = adIds.push(id) - 1;
    |    adIdToIndex[id] = key;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(943)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    Ad memory ad = Ad(msg.sender, _rect);
    |    id = ads.push(ad) - 1;
  > |    uint256 key = adIds.push(id) - 1;
    |    adIdToIndex[id] = key;
    |    return id;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(944)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPP':
    |    id = ads.push(ad) - 1;
    |    uint256 key = adIds.push(id) - 1;
  > |    adIdToIndex[id] = key;
    |    return id;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(945)

[33mWarning[0m for LockedEther in contract 'MDAPPToken':
    | * @dev Owned by MDAPP.sol
    | */
  > |contract MDAPPToken is MintableToken {
    |  using SafeMath16 for uint16;
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(552)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(523)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |  function lockToken(address _account, uint16 _value) onlyOwner hasUnlocked(_account, _value) public {
  > |    locked[_account] = locked[_account].add(_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(606)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |
    |  function unlockToken(address _account, uint16 _value) onlyOwner hasLocked(_account, _value) public {
  > |    locked[_account] = locked[_account].sub(_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(610)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(534)

[33mWarning[0m for UnrestrictedWrite in contract 'MDAPPToken':
    |    require(forceTransferEnable == false, 'Transfer already force-allowed.');
    |
  > |    forceTransferEnable = true;
    |    emit AllowTransfer();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(661)

[33mWarning[0m for LockedEther in contract 'MintableToken':
    | * Based on code by TokenMarketNet: https://github.com/TokenMarketNet/ico/blob/master/contracts/MintableToken.sol
    | */
  > |contract MintableToken is StandardToken, Ownable {
    |  event Mint(address indexed to, uint256 amount);
    |  event MintFinished();
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(490)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[msg.sender] = balances[msg.sender].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_to != address(0));
    |
  > |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |
    |    balances[_from] = balances[_from].sub(_value);
  > |    balances[_to] = balances[_to].add(_value);
    |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(394)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(474)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    returns (bool)
    |  {
  > |    totalSupply_ = totalSupply_.add(_amount);
    |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(522)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  {
    |    totalSupply_ = totalSupply_.add(_amount);
  > |    balances[_to] = balances[_to].add(_amount);
    |    emit Mint(_to, _amount);
    |    emit Transfer(address(0), _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(523)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'MintableToken':
    |   */
    |  function finishMinting() public onlyOwner canMint returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(534)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(76)

[33mWarning[0m for LockedEther in contract 'SafeERC20':
    | * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
    | */
  > |library SafeERC20 {
    |  function safeTransfer(
    |    ERC20Basic _token,
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(141)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(186)

[33mWarning[0m for LockedEther in contract 'SafeMath16':
    |
    |
  > |library SafeMath16 {
    |  function mul(uint16 a, uint16 b) internal pure returns (uint16) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(81)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    require(_to != address(0));
    |
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    emit Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(395)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    emit Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(410)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    returns (bool)
    |  {
  > |    allowed[msg.sender][_spender] = (
    |      allowed[msg.sender][_spender].add(_addedValue));
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint256 oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue >= oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xac4fd2d9ce342bc6fdc7e0ce539f365e4ec1fe4a.sol(474)


