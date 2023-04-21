Processing contract: /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol:CommonEth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol:ERC721Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol:NFToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CommonEth':
    |
    |
  > |contract CommonEth {
    |
    |    //模式
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(271)

[31mViolation[0m for MissingInputValidation in contract 'CommonEth':
    |    event ContractUpgrade(address newContract);
    |
  > |    function setNewAddress(address _v2Address) external onlyCEO {
    |        newContractAddress = _v2Address;
    |        ContractUpgrade(_v2Address);
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(289)

[33mWarning[0m for MissingInputValidation in contract 'CommonEth':
    |
    |    //合约当前模式
  > |    Modes public mode = Modes.LIVE;
    |
    |    //管理人员列表
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(277)

[33mWarning[0m for MissingInputValidation in contract 'CommonEth':
    |
    |
  > |    address public newContractAddress;
    |
    |    event ContractUpgrade(address newContract);
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(285)

[33mWarning[0m for MissingInputValidation in contract 'CommonEth':
    |
    |    //获取自己的身份
  > |    function staffInfo() public view onlyStaff returns (bool ceo, bool coo, bool cfo, bool qa){
    |        return (msg.sender == ceoAddress, msg.sender == cooAddress, msg.sender == cfoAddress,false);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(332)

[33mWarning[0m for MissingInputValidation in contract 'CommonEth':
    |
    |    //进入测试模式
  > |    function stopLive() public onlyCOO {
    |        mode = Modes.TEST;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(338)

[33mWarning[0m for MissingInputValidation in contract 'CommonEth':
    |
    |    //开启LIVE模式式
  > |    function startLive() public onlyCOO {
    |        mode = Modes.LIVE;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(343)

[33mWarning[0m for MissingInputValidation in contract 'CommonEth':
    |    }
    |
  > |    function getMangers() public view onlyManger returns (address _ceoAddress, address _cooAddress, address _cfoAddress){
    |        return (ceoAddress, cooAddress, cfoAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(347)

[33mWarning[0m for MissingInputValidation in contract 'CommonEth':
    |    }
    |
  > |    function setCEO(address _newCEO) public onlyCEO {
    |        require(_newCEO != address(0));
    |        ceoAddress = _newCEO;
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(351)

[33mWarning[0m for MissingInputValidation in contract 'CommonEth':
    |    }
    |
  > |    function setCFO(address _newCFO) public onlyCEO {
    |        require(_newCFO != address(0));
    |        cfoAddress = _newCFO;
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(356)

[33mWarning[0m for MissingInputValidation in contract 'CommonEth':
    |    }
    |
  > |    function setCOO(address _newCOO) public onlyCEO {
    |        require(_newCOO != address(0));
    |        cooAddress = _newCOO;
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonEth':
    |
    |    function setNewAddress(address _v2Address) external onlyCEO {
  > |        newContractAddress = _v2Address;
    |        ContractUpgrade(_v2Address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonEth':
    |    //进入测试模式
    |    function stopLive() public onlyCOO {
  > |        mode = Modes.TEST;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(339)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonEth':
    |    //开启LIVE模式式
    |    function startLive() public onlyCOO {
  > |        mode = Modes.LIVE;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonEth':
    |    function setCEO(address _newCEO) public onlyCEO {
    |        require(_newCEO != address(0));
  > |        ceoAddress = _newCEO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonEth':
    |    function setCFO(address _newCFO) public onlyCEO {
    |        require(_newCFO != address(0));
  > |        cfoAddress = _newCFO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'CommonEth':
    |    function setCOO(address _newCOO) public onlyCEO {
    |        require(_newCOO != address(0));
  > |        cooAddress = _newCOO;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(363)

[33mWarning[0m for LockedEther in contract 'ERC721Token':
    |
    |
  > |contract ERC721Token is ERC721 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |
  > |contract ERC721Token is ERC721 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(_to != owner);
    |    if (approvedFor(_tokenId) != 0 || _to != 0) {
  > |      tokenApprovals[_tokenId] = _to;
    |      Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function clearApproval(address _owner, uint256 _tokenId) private {
    |    require(ownerOf(_tokenId) == _owner);
  > |    tokenApprovals[_tokenId] = 0;
    |    Approval(_owner, 0, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function addToken(address _to, uint256 _tokenId) private {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    uint256 length = balanceOf(_to);
    |    ownedTokens[_to].push(_tokenId);
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    tokenOwner[_tokenId] = _to;
    |    uint256 length = balanceOf(_to);
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |    totalTokens = totalTokens.add(1);
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 length = balanceOf(_to);
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |    totalTokens = totalTokens.add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
  > |    totalTokens = totalTokens.add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    tokenOwner[_tokenId] = 0;
    |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    tokenOwner[_tokenId] = 0;
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    tokenOwner[_tokenId] = 0;
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |    totalTokens = totalTokens.sub(1);
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |    totalTokens = totalTokens.sub(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(262)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
  > |    totalTokens = totalTokens.sub(1);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(263)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x308df6e60b7dffc2bdee7fa62d41ef53ac5d4e43.sol(4)


