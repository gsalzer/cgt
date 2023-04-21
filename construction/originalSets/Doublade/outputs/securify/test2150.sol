Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:AddressUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:CryptoParrots
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:ERC165
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:ERC721Enumerable
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:ERC721Metadata
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:ERC721TokenReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:NFToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:NFTokenEnumerable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:NFTokenMetadata
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol:SupportsInterface
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AddressUtils':
    | * @dev Utility library of inline functions on addresses.
    | */
  > |library AddressUtils {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(327)

[31mViolation[0m for LockedEther in contract 'CryptoParrots':
    | * extensions.
    | */
  > |contract CryptoParrots is NFTokenEnumerable, NFTokenMetadata, Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(1218)

[33mWarning[0m for UnhandledException in contract 'CryptoParrots':
    |
    |    if (_to.isContract()) {
  > |      bytes4 retval = ERC721TokenReceiver(_to).onERC721Received(msg.sender, _from, _tokenId, _data);
    |      require(retval == MAGIC_ON_ERC721_RECEIVED);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(737)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoParrots':
    |
    |    if (_to.isContract()) {
  > |      bytes4 retval = ERC721TokenReceiver(_to).onERC721Received(msg.sender, _from, _tokenId, _data);
    |      require(retval == MAGIC_ON_ERC721_RECEIVED);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(737)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |
    |/**
  > | * @dev Optional enumeration extension for ERC-721 non-fungible token standard.
    | * See https://goo.gl/pc9yoS.
    | */
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    require(_approved != tokenOwner);
    |
  > |    idToApprovals[_tokenId] = _approved;
    |    emit Approval(tokenOwner, _approved, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(657)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |  {
    |    require(_operator != address(0));
  > |    ownerToOperators[msg.sender][_operator] = _approved;
    |    emit ApprovalForAll(msg.sender, _operator, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(675)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    if(idToApprovals[_tokenId] != 0)
    |    {
  > |      delete idToApprovals[_tokenId];
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(817)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    require(idToOwner[_tokenId] == _from);
    |    assert(ownerToNFTokenCount[_from] > 0);
  > |    ownerToNFTokenCount[_from] = ownerToNFTokenCount[_from] - 1;
    |    delete idToOwner[_tokenId];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(835)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    assert(ownerToNFTokenCount[_from] > 0);
    |    ownerToNFTokenCount[_from] = ownerToNFTokenCount[_from] - 1;
  > |    delete idToOwner[_tokenId];
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(836)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    require(idToOwner[_tokenId] == address(0));
    |
  > |    idToOwner[_tokenId] = _to;
    |    ownerToNFTokenCount[_to] = ownerToNFTokenCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(853)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |
    |    idToOwner[_tokenId] = _to;
  > |    ownerToNFTokenCount[_to] = ownerToNFTokenCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(854)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |  {
    |    super._mint(_to, _tokenId);
  > |    uint256 length = tokens.push(_tokenId);
    |    idToIndex[_tokenId] = length - 1;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(911)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    super._mint(_to, _tokenId);
    |    uint256 length = tokens.push(_tokenId);
  > |    idToIndex[_tokenId] = length - 1;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(912)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    uint256 lastToken = tokens[lastTokenIndex];
    |
  > |    tokens[tokenIndex] = lastToken;
    |
    |    tokens.length--;
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(938)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    tokens.length--;
    |    // Consider adding a conditional check for the last token in order to save GAS.
  > |    idToIndex[lastToken] = tokenIndex;
    |    idToIndex[_tokenId] = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(942)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    // Consider adding a conditional check for the last token in order to save GAS.
    |    idToIndex[lastToken] = tokenIndex;
  > |    idToIndex[_tokenId] = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(943)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    uint256 lastToken = ownerToIds[_from][lastTokenIndex];
    |
  > |    ownerToIds[_from][tokenToRemoveIndex] = lastToken;
    |
    |    ownerToIds[_from].length--;
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(965)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    ownerToIds[_from].length--;
    |    // Consider adding a conditional check for the last token in order to save GAS.
  > |    idToOwnerIndex[lastToken] = tokenToRemoveIndex;
    |    idToOwnerIndex[_tokenId] = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(969)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    // Consider adding a conditional check for the last token in order to save GAS.
    |    idToOwnerIndex[lastToken] = tokenToRemoveIndex;
  > |    idToOwnerIndex[_tokenId] = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(970)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    super.addNFToken(_to, _tokenId);
    |
  > |    uint256 length = ownerToIds[_to].push(_tokenId);
    |    idToOwnerIndex[_tokenId] = length - 1;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(987)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |
    |    uint256 length = ownerToIds[_to].push(_tokenId);
  > |    idToOwnerIndex[_tokenId] = length - 1;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(988)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(1085)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoParrots':
    | * extensions.
    | */
  > |contract CryptoParrots is NFTokenEnumerable, NFTokenMetadata, Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(1218)

[33mWarning[0m for LockedEther in contract 'NFToken':
    | * @dev Implementation of ERC-721 non-fungible token standard.
    | */
  > |contract NFToken is
    |  ERC721,
    |  SupportsInterface
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(415)

[33mWarning[0m for UnhandledException in contract 'NFToken':
    |
    |    if (_to.isContract()) {
  > |      bytes4 retval = ERC721TokenReceiver(_to).onERC721Received(msg.sender, _from, _tokenId, _data);
    |      require(retval == MAGIC_ON_ERC721_RECEIVED);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(737)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NFToken':
    |
    |    if (_to.isContract()) {
  > |      bytes4 retval = ERC721TokenReceiver(_to).onERC721Received(msg.sender, _from, _tokenId, _data);
    |      require(retval == MAGIC_ON_ERC721_RECEIVED);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(737)

[33mWarning[0m for UnrestrictedWrite in contract 'NFToken':
    |    require(_approved != tokenOwner);
    |
  > |    idToApprovals[_tokenId] = _approved;
    |    emit Approval(tokenOwner, _approved, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(657)

[33mWarning[0m for UnrestrictedWrite in contract 'NFToken':
    |  {
    |    require(_operator != address(0));
  > |    ownerToOperators[msg.sender][_operator] = _approved;
    |    emit ApprovalForAll(msg.sender, _operator, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(675)

[33mWarning[0m for UnrestrictedWrite in contract 'NFToken':
    |    if(idToApprovals[_tokenId] != 0)
    |    {
  > |      delete idToApprovals[_tokenId];
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(817)

[33mWarning[0m for UnrestrictedWrite in contract 'NFToken':
    |    require(idToOwner[_tokenId] == _from);
    |    assert(ownerToNFTokenCount[_from] > 0);
  > |    ownerToNFTokenCount[_from] = ownerToNFTokenCount[_from] - 1;
    |    delete idToOwner[_tokenId];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(835)

[33mWarning[0m for UnrestrictedWrite in contract 'NFToken':
    |    assert(ownerToNFTokenCount[_from] > 0);
    |    ownerToNFTokenCount[_from] = ownerToNFTokenCount[_from] - 1;
  > |    delete idToOwner[_tokenId];
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(836)

[33mWarning[0m for UnrestrictedWrite in contract 'NFToken':
    |    require(idToOwner[_tokenId] == address(0));
    |
  > |    idToOwner[_tokenId] = _to;
    |    ownerToNFTokenCount[_to] = ownerToNFTokenCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(853)

[33mWarning[0m for UnrestrictedWrite in contract 'NFToken':
    |
    |    idToOwner[_tokenId] = _to;
  > |    ownerToNFTokenCount[_to] = ownerToNFTokenCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(854)

[33mWarning[0m for LockedEther in contract 'NFTokenEnumerable':
    | * @dev Optional enumeration implementation for ERC-721 non-fungible token standard.
    | */
  > |contract NFTokenEnumerable is
    |  NFToken,
    |  ERC721Enumerable
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(862)

[33mWarning[0m for UnhandledException in contract 'NFTokenEnumerable':
    |
    |    if (_to.isContract()) {
  > |      bytes4 retval = ERC721TokenReceiver(_to).onERC721Received(msg.sender, _from, _tokenId, _data);
    |      require(retval == MAGIC_ON_ERC721_RECEIVED);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(737)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NFTokenEnumerable':
    |
    |    if (_to.isContract()) {
  > |      bytes4 retval = ERC721TokenReceiver(_to).onERC721Received(msg.sender, _from, _tokenId, _data);
    |      require(retval == MAGIC_ON_ERC721_RECEIVED);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(737)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |
    |/**
  > | * @dev Optional enumeration extension for ERC-721 non-fungible token standard.
    | * See https://goo.gl/pc9yoS.
    | */
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |    require(_approved != tokenOwner);
    |
  > |    idToApprovals[_tokenId] = _approved;
    |    emit Approval(tokenOwner, _approved, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(657)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |  {
    |    require(_operator != address(0));
  > |    ownerToOperators[msg.sender][_operator] = _approved;
    |    emit ApprovalForAll(msg.sender, _operator, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(675)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |    if(idToApprovals[_tokenId] != 0)
    |    {
  > |      delete idToApprovals[_tokenId];
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(817)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |    require(idToOwner[_tokenId] == _from);
    |    assert(ownerToNFTokenCount[_from] > 0);
  > |    ownerToNFTokenCount[_from] = ownerToNFTokenCount[_from] - 1;
    |    delete idToOwner[_tokenId];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(835)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |    assert(ownerToNFTokenCount[_from] > 0);
    |    ownerToNFTokenCount[_from] = ownerToNFTokenCount[_from] - 1;
  > |    delete idToOwner[_tokenId];
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(836)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |    require(idToOwner[_tokenId] == address(0));
    |
  > |    idToOwner[_tokenId] = _to;
    |    ownerToNFTokenCount[_to] = ownerToNFTokenCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(853)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |
    |    idToOwner[_tokenId] = _to;
  > |    ownerToNFTokenCount[_to] = ownerToNFTokenCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(854)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    | * @dev Optional enumeration implementation for ERC-721 non-fungible token standard.
    | */
  > |contract NFTokenEnumerable is
    |  NFToken,
    |  ERC721Enumerable
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(862)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |    uint256 lastToken = ownerToIds[_from][lastTokenIndex];
    |
  > |    ownerToIds[_from][tokenToRemoveIndex] = lastToken;
    |
    |    ownerToIds[_from].length--;
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(965)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |    ownerToIds[_from].length--;
    |    // Consider adding a conditional check for the last token in order to save GAS.
  > |    idToOwnerIndex[lastToken] = tokenToRemoveIndex;
    |    idToOwnerIndex[_tokenId] = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(969)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |    // Consider adding a conditional check for the last token in order to save GAS.
    |    idToOwnerIndex[lastToken] = tokenToRemoveIndex;
  > |    idToOwnerIndex[_tokenId] = 0;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(970)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |    super.addNFToken(_to, _tokenId);
    |
  > |    uint256 length = ownerToIds[_to].push(_tokenId);
    |    idToOwnerIndex[_tokenId] = length - 1;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(987)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenEnumerable':
    |
    |    uint256 length = ownerToIds[_to].push(_tokenId);
  > |    idToOwnerIndex[_tokenId] = length - 1;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(988)

[33mWarning[0m for LockedEther in contract 'NFTokenMetadata':
    | * @dev Optional metadata implementation for ERC-721 non-fungible token standard.
    | */
  > |contract NFTokenMetadata is
    |  NFToken,
    |  ERC721Metadata
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(1127)

[33mWarning[0m for UnhandledException in contract 'NFTokenMetadata':
    |
    |    if (_to.isContract()) {
  > |      bytes4 retval = ERC721TokenReceiver(_to).onERC721Received(msg.sender, _from, _tokenId, _data);
    |      require(retval == MAGIC_ON_ERC721_RECEIVED);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(737)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NFTokenMetadata':
    |
    |    if (_to.isContract()) {
  > |      bytes4 retval = ERC721TokenReceiver(_to).onERC721Received(msg.sender, _from, _tokenId, _data);
    |      require(retval == MAGIC_ON_ERC721_RECEIVED);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(737)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenMetadata':
    |    require(_approved != tokenOwner);
    |
  > |    idToApprovals[_tokenId] = _approved;
    |    emit Approval(tokenOwner, _approved, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(657)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenMetadata':
    |  {
    |    require(_operator != address(0));
  > |    ownerToOperators[msg.sender][_operator] = _approved;
    |    emit ApprovalForAll(msg.sender, _operator, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(675)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenMetadata':
    |    if(idToApprovals[_tokenId] != 0)
    |    {
  > |      delete idToApprovals[_tokenId];
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(817)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenMetadata':
    |    require(idToOwner[_tokenId] == _from);
    |    assert(ownerToNFTokenCount[_from] > 0);
  > |    ownerToNFTokenCount[_from] = ownerToNFTokenCount[_from] - 1;
    |    delete idToOwner[_tokenId];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(835)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenMetadata':
    |    assert(ownerToNFTokenCount[_from] > 0);
    |    ownerToNFTokenCount[_from] = ownerToNFTokenCount[_from] - 1;
  > |    delete idToOwner[_tokenId];
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(836)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenMetadata':
    |    require(idToOwner[_tokenId] == address(0));
    |
  > |    idToOwner[_tokenId] = _to;
    |    ownerToNFTokenCount[_to] = ownerToNFTokenCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(853)

[33mWarning[0m for UnrestrictedWrite in contract 'NFTokenMetadata':
    |
    |    idToOwner[_tokenId] = _to;
  > |    ownerToNFTokenCount[_to] = ownerToNFTokenCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(854)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * at https://goo.gl/n2ZGVt.
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(1043)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(1044)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(
    |    address _newOwner
    |  )
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(1077)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(1085)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * on the source code at https://goo.gl/iyQsmU.
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(245)

[33mWarning[0m for LockedEther in contract 'SupportsInterface':
    | * @dev Implementation of standard for detect smart contract interfaces.
    | */
  > |contract SupportsInterface is
    |  ERC165
    |{
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(377)

[31mViolation[0m for MissingInputValidation in contract 'SupportsInterface':
    |   * @param _interfaceID Id of the interface.
    |   */
  > |  function supportsInterface(
    |    bytes4 _interfaceID
    |  )
  at /home/jiaming/mavs_srcs/contract@0x8c42668b32eb1fc7201d31c6dba33052142e716f.sol(400)


