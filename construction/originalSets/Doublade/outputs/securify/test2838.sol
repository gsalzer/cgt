Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:AddressUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:CryptoFlower
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:CryptoFlowerRaiser
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:ERC721Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:ERC721BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:ERC721Enumerable
Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:ERC721Metadata
Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:ERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:ERC721Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AddressUtils':
    | * Utility library of inline functions on addresses
    | */
  > |library AddressUtils {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(172)

[31mViolation[0m for LockedEther in contract 'CryptoFlower':
    | *  @dev rewrites the CanTransfer modifier of OZs' implementation in order to disable transfers
    | */
  > |contract CryptoFlower is ERC721Token, Ownable {
    |
    |    // Disallowing transfers
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(760)

[33mWarning[0m for UnhandledException in contract 'CryptoFlower':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(508)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoFlower':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(508)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |
    |/**
  > | * @title ERC721 Non-Fungible Token Standard basic interface
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |    super.addTokenTo(_to, _tokenId);
    |    uint256 length = ownedTokens[_to].length;
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(633)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |    uint256 length = ownedTokens[_to].length;
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(634)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(649)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(650)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(657)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |    super._mint(_to, _tokenId);
    |
  > |    allTokensIndex[_tokenId] = allTokens.length;
    |    allTokens.push(_tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(669)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |
    |    allTokensIndex[_tokenId] = allTokens.length;
  > |    allTokens.push(_tokenId);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(670)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(742)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(750)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlower':
    | *  @dev rewrites the CanTransfer modifier of OZs' implementation in order to disable transfers
    | */
  > |contract CryptoFlower is ERC721Token, Ownable {
    |
    |    // Disallowing transfers
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(760)

[33mWarning[0m for DAOConstantGas in contract 'CryptoFlowerRaiser':
    |
    |        // forward funds to storage
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(981)

[33mWarning[0m for LockedEther in contract 'CryptoFlowerRaiser':
    | *  @dev Transaction sent with Ether above the pricing point will result in issuing a new unique and semi-random token
    | */
  > |contract CryptoFlowerRaiser {
    |    // address of the token
    |    CryptoFlower public token;
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(887)

[33mWarning[0m for TODReceiver in contract 'CryptoFlowerRaiser':
    |
    |        // forward funds to storage
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(981)

[33mWarning[0m for UnhandledException in contract 'CryptoFlowerRaiser':
    |            }
    |
  > |            bytes32 generator = keccak256(abi.encodePacked(block.coinbase, now, token.getGen(token.lastID())));
    |
    |            // mint tokens
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(971)

[33mWarning[0m for UnhandledException in contract 'CryptoFlowerRaiser':
    |
    |            // mint tokens
  > |            token.mint(beneficiary, generator, karma);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(974)

[33mWarning[0m for UnhandledException in contract 'CryptoFlowerRaiser':
    |
    |        // forward funds to storage
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(981)

[33mWarning[0m for UnhandledException in contract 'CryptoFlowerRaiser':
    |        require(now > endTime);
    |
  > |        token.transferOwnership(owner);
    |
    |        finalized = true;
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(992)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoFlowerRaiser':
    |            }
    |
  > |            bytes32 generator = keccak256(abi.encodePacked(block.coinbase, now, token.getGen(token.lastID())));
    |
    |            // mint tokens
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(971)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoFlowerRaiser':
    |
    |            // mint tokens
  > |            token.mint(beneficiary, generator, karma);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(974)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoFlowerRaiser':
    |
    |        // forward funds to storage
  > |        wallet.transfer(msg.value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(981)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoFlowerRaiser':
    |        require(now > endTime);
    |
  > |        token.transferOwnership(owner);
    |
    |        finalized = true;
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(992)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlowerRaiser':
    |        }
    |
  > |        raised += msg.value; // we don't care about overflows here ;)
    |        emit Donation(beneficiary, msg.value, raised);
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(977)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoFlowerRaiser':
    |        token.transferOwnership(owner);
    |
  > |        finalized = true;
    |        emit Finalized();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(994)

[33mWarning[0m for LockedEther in contract 'ERC721BasicToken':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721BasicToken is ERC721Basic {
    |  using SafeMath for uint256;
    |  using AddressUtils for address;
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(201)

[33mWarning[0m for UnhandledException in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(508)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(508)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(484)

[33mWarning[0m for LockedEther in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is ERC721, ERC721BasicToken {
    |  // Token name
    |  string internal name_;
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(521)

[33mWarning[0m for UnhandledException in contract 'ERC721Token':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(508)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Token':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(508)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |/**
  > | * @title ERC721 Non-Fungible Token Standard basic interface
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    if (getApproved(_tokenId) != address(0) || _to != address(0)) {
  > |      tokenApprovals[_tokenId] = _to;
    |      emit Approval(owner, _to, _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |      emit Approval(_owner, address(0), _tokenId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(483)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(484)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is ERC721, ERC721BasicToken {
    |  // Token name
    |  string internal name_;
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(521)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    super.addTokenTo(_to, _tokenId);
    |    uint256 length = ownedTokens[_to].length;
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(633)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 length = ownedTokens[_to].length;
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(634)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(649)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(650)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(656)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(657)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(708)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(709)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(739)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(742)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(750)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xba248210d2d0d49398e53a3919174d1540ded083.sol(126)


