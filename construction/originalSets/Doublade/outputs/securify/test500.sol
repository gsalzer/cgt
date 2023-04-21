Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:Address
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:ERC165
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:ERC721
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:ERC721Enumerable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:ERC721Full
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:ERC721Metadata
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:IERC165
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:IERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:IERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:IERC721Enumerable
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:IERC721Metadata
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:IERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:MinterRole
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:Ownable
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:StructureInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:StructuredLinkedList
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:TokenRecover
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:WallOfChainMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol:WallOfChainToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Address':
    | * Utility library of inline functions on addresses
    | */
  > |library Address {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(261)

[33mWarning[0m for LockedEther in contract 'ERC721':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721 is ERC165, IERC721 {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(343)

[33mWarning[0m for UnhandledException in contract 'ERC721':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(643)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(643)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    _tokenApprovals[tokenId] = to;
    |    emit Approval(owner, to, tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721':
    |  function setApprovalForAll(address to, bool approved) public {
    |    require(to != msg.sender);
  > |    _operatorApprovals[msg.sender][to] = approved;
    |    emit ApprovalForAll(msg.sender, to, approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721':
    |  function _addTokenTo(address to, uint256 tokenId) internal {
    |    require(_tokenOwner[tokenId] == address(0));
  > |    _tokenOwner[tokenId] = to;
    |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(604)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721':
    |    require(_tokenOwner[tokenId] == address(0));
    |    _tokenOwner[tokenId] = to;
  > |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(605)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721':
    |  function _removeTokenFrom(address from, uint256 tokenId) internal {
    |    require(ownerOf(tokenId) == from);
  > |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
    |    _tokenOwner[tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(618)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721':
    |    require(ownerOf(tokenId) == from);
    |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
  > |    _tokenOwner[tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(619)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721':
    |    require(ownerOf(tokenId) == owner);
    |    if (_tokenApprovals[tokenId] != address(0)) {
  > |      _tokenApprovals[tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(657)

[33mWarning[0m for LockedEther in contract 'ERC721Enumerable':
    |// File: openzeppelin-solidity/contracts/token/ERC721/ERC721Enumerable.sol
    |
  > |contract ERC721Enumerable is ERC165, ERC721, IERC721Enumerable {
    |  // Mapping from owner to list of owned token IDs
    |  mapping(address => uint256[]) private _ownedTokens;
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(683)

[33mWarning[0m for UnhandledException in contract 'ERC721Enumerable':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(643)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Enumerable':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(643)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |pragma solidity ^0.4.24;
    |
  > |// File: openzeppelin-solidity/contracts/math/SafeMath.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    _tokenApprovals[tokenId] = to;
    |    emit Approval(owner, to, tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |  function setApprovalForAll(address to, bool approved) public {
    |    require(to != msg.sender);
  > |    _operatorApprovals[msg.sender][to] = approved;
    |    emit ApprovalForAll(msg.sender, to, approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |  function _addTokenTo(address to, uint256 tokenId) internal {
    |    require(_tokenOwner[tokenId] == address(0));
  > |    _tokenOwner[tokenId] = to;
    |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(604)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |    require(_tokenOwner[tokenId] == address(0));
    |    _tokenOwner[tokenId] = to;
  > |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(605)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |  function _removeTokenFrom(address from, uint256 tokenId) internal {
    |    require(ownerOf(tokenId) == from);
  > |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
    |    _tokenOwner[tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(618)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |    require(ownerOf(tokenId) == from);
    |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
  > |    _tokenOwner[tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(619)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |    require(ownerOf(tokenId) == owner);
    |    if (_tokenApprovals[tokenId] != address(0)) {
  > |      _tokenApprovals[tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(657)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |// File: openzeppelin-solidity/contracts/token/ERC721/ERC721Enumerable.sol
    |
  > |contract ERC721Enumerable is ERC165, ERC721, IERC721Enumerable {
    |  // Mapping from owner to list of owned token IDs
    |  mapping(address => uint256[]) private _ownedTokens;
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(683)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |    super._addTokenTo(to, tokenId);
    |    uint256 length = _ownedTokens[to].length;
  > |    _ownedTokens[to].push(tokenId);
    |    _ownedTokensIndex[tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(759)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |    uint256 length = _ownedTokens[to].length;
    |    _ownedTokens[to].push(tokenId);
  > |    _ownedTokensIndex[tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(760)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |    uint256 lastToken = _ownedTokens[from][lastTokenIndex];
    |
  > |    _ownedTokens[from][tokenIndex] = lastToken;
    |    // This also deletes the contents at the last position of the array
    |    _ownedTokens[from].length--;
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(780)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |    // the lastToken to the first position, and then dropping the element placed in the last position of the list
    |
  > |    _ownedTokensIndex[tokenId] = 0;
    |    _ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(788)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable':
    |
    |    _ownedTokensIndex[tokenId] = 0;
  > |    _ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(789)

[33mWarning[0m for LockedEther in contract 'ERC721Full':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Full is ERC721, ERC721Enumerable, ERC721Metadata {
    |  constructor(string name, string symbol) ERC721Metadata(name, symbol)
    |    public
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(932)

[33mWarning[0m for UnhandledException in contract 'ERC721Full':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(643)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Full':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(643)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |pragma solidity ^0.4.24;
    |
  > |// File: openzeppelin-solidity/contracts/math/SafeMath.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    _tokenApprovals[tokenId] = to;
    |    emit Approval(owner, to, tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |  function setApprovalForAll(address to, bool approved) public {
    |    require(to != msg.sender);
  > |    _operatorApprovals[msg.sender][to] = approved;
    |    emit ApprovalForAll(msg.sender, to, approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |  function _addTokenTo(address to, uint256 tokenId) internal {
    |    require(_tokenOwner[tokenId] == address(0));
  > |    _tokenOwner[tokenId] = to;
    |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(604)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |    require(_tokenOwner[tokenId] == address(0));
    |    _tokenOwner[tokenId] = to;
  > |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(605)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |  function _removeTokenFrom(address from, uint256 tokenId) internal {
    |    require(ownerOf(tokenId) == from);
  > |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
    |    _tokenOwner[tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(618)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |    require(ownerOf(tokenId) == from);
    |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
  > |    _tokenOwner[tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(619)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |    require(ownerOf(tokenId) == owner);
    |    if (_tokenApprovals[tokenId] != address(0)) {
  > |      _tokenApprovals[tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(657)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |    super._addTokenTo(to, tokenId);
    |    uint256 length = _ownedTokens[to].length;
  > |    _ownedTokens[to].push(tokenId);
    |    _ownedTokensIndex[tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(759)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |    uint256 length = _ownedTokens[to].length;
    |    _ownedTokens[to].push(tokenId);
  > |    _ownedTokensIndex[tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(760)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |    uint256 lastToken = _ownedTokens[from][lastTokenIndex];
    |
  > |    _ownedTokens[from][tokenIndex] = lastToken;
    |    // This also deletes the contents at the last position of the array
    |    _ownedTokens[from].length--;
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(780)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |    // the lastToken to the first position, and then dropping the element placed in the last position of the list
    |
  > |    _ownedTokensIndex[tokenId] = 0;
    |    _ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(788)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    |
    |    _ownedTokensIndex[tokenId] = 0;
  > |    _ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(789)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Full is ERC721, ERC721Enumerable, ERC721Metadata {
    |  constructor(string name, string symbol) ERC721Metadata(name, symbol)
    |    public
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(932)

[33mWarning[0m for LockedEther in contract 'ERC721Metadata':
    |// File: openzeppelin-solidity/contracts/token/ERC721/ERC721Metadata.sol
    |
  > |contract ERC721Metadata is ERC165, ERC721, IERC721Metadata {
    |  // Token name
    |  string private _name;
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(842)

[33mWarning[0m for UnhandledException in contract 'ERC721Metadata':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(643)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Metadata':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(643)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    _tokenApprovals[tokenId] = to;
    |    emit Approval(owner, to, tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata':
    |  function setApprovalForAll(address to, bool approved) public {
    |    require(to != msg.sender);
  > |    _operatorApprovals[msg.sender][to] = approved;
    |    emit ApprovalForAll(msg.sender, to, approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata':
    |  function _addTokenTo(address to, uint256 tokenId) internal {
    |    require(_tokenOwner[tokenId] == address(0));
  > |    _tokenOwner[tokenId] = to;
    |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(604)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata':
    |    require(_tokenOwner[tokenId] == address(0));
    |    _tokenOwner[tokenId] = to;
  > |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(605)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata':
    |  function _removeTokenFrom(address from, uint256 tokenId) internal {
    |    require(ownerOf(tokenId) == from);
  > |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
    |    _tokenOwner[tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(618)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata':
    |    require(ownerOf(tokenId) == from);
    |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
  > |    _tokenOwner[tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(619)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata':
    |    require(ownerOf(tokenId) == owner);
    |    if (_tokenApprovals[tokenId] != address(0)) {
  > |      _tokenApprovals[tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(657)

[33mWarning[0m for LockedEther in contract 'Roles':
    | * @dev Library for managing addresses assigned to a Role.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(75)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(9)

[33mWarning[0m for LockedEther in contract 'StructuredLinkedList':
    | *  It has been updated to add additional functionality and be compatible with solidity 0.4.24 coding patterns.
    | */
  > |library StructuredLinkedList {
    |
    |  uint256 constant NULL = 0;
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1088)

[33mWarning[0m for LockedEther in contract 'TokenRecover':
    | * @dev Allow to recover any ERC20 sent into the contract for error
    | */
  > |contract TokenRecover is Ownable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1057)

[31mViolation[0m for MissingInputValidation in contract 'TokenRecover':
    |   * @param tokenAmount Number of tokens to be sent
    |   */
  > |  function recoverERC20(
    |    address tokenAddress,
    |    uint256 tokenAmount
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1064)

[33mWarning[0m for MissingInputValidation in contract 'TokenRecover':
    |   * @return the address of the owner.
    |   */
  > |  function owner() public view returns(address) {
    |    return _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1001)

[33mWarning[0m for MissingInputValidation in contract 'TokenRecover':
    |   * @return true if `msg.sender` is the owner of the contract.
    |   */
  > |  function isOwner() public view returns(bool) {
    |    return msg.sender == _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1016)

[33mWarning[0m for MissingInputValidation in contract 'TokenRecover':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
    |    _owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1026)

[33mWarning[0m for MissingInputValidation in contract 'TokenRecover':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    _transferOwnership(newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1035)

[33mWarning[0m for MissingInputValidation in contract 'TokenRecover':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address newOwner) internal {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1043)

[33mWarning[0m for UnhandledException in contract 'TokenRecover':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1071)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenRecover':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1071)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenRecover':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1046)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRecover':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1028)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenRecover':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1046)

[33mWarning[0m for DAOConstantGas in contract 'WallOfChainMarket':
    |  function _forwardFunds() internal {
    |    if (msg.value > 0) {
  > |      wallet.transfer(msg.value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1841)

[33mWarning[0m for LockedEther in contract 'WallOfChainMarket':
    |// File: contracts/WallOfChainMarket.sol
    |
  > |contract WallOfChainMarket is TokenRecover {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1623)

[31mViolation[0m for TODReceiver in contract 'WallOfChainMarket':
    |  function _forwardFunds() internal {
    |    if (msg.value > 0) {
  > |      wallet.transfer(msg.value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1841)

[33mWarning[0m for UnhandledException in contract 'WallOfChainMarket':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1071)

[33mWarning[0m for UnhandledException in contract 'WallOfChainMarket':
    |    payable
    |  {
  > |    address tokenOwner = token.ownerOf(_tokenId);
    |    require(msg.sender == tokenOwner, "Sender must be token owner");
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1731)

[33mWarning[0m for UnhandledException in contract 'WallOfChainMarket':
    |    returns (uint256)
    |  {
  > |    return token.newToken(
    |      _beneficiary,
    |      _weiAmount,
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1802)

[33mWarning[0m for UnhandledException in contract 'WallOfChainMarket':
    |    returns (uint256)
    |  {
  > |    return token.editToken(
    |      _tokenId,
    |      _weiAmount,
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1826)

[33mWarning[0m for UnhandledException in contract 'WallOfChainMarket':
    |  function _forwardFunds() internal {
    |    if (msg.value > 0) {
  > |      wallet.transfer(msg.value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1841)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WallOfChainMarket':
    |    onlyOwner
    |  {
  > |    IERC20(tokenAddress).transfer(owner(), tokenAmount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1071)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WallOfChainMarket':
    |    payable
    |  {
  > |    address tokenOwner = token.ownerOf(_tokenId);
    |    require(msg.sender == tokenOwner, "Sender must be token owner");
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1731)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WallOfChainMarket':
    |    returns (uint256)
    |  {
  > |    return token.newToken(
    |      _beneficiary,
    |      _weiAmount,
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1802)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WallOfChainMarket':
    |    returns (uint256)
    |  {
  > |    return token.editToken(
    |      _tokenId,
    |      _weiAmount,
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1826)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'WallOfChainMarket':
    |  function _forwardFunds() internal {
    |    if (msg.value > 0) {
  > |      wallet.transfer(msg.value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1841)

[33mWarning[0m for UnrestrictedWrite in contract 'WallOfChainMarket':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1028)

[33mWarning[0m for UnrestrictedWrite in contract 'WallOfChainMarket':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1046)

[33mWarning[0m for UnrestrictedWrite in contract 'WallOfChainMarket':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    uint256 lastTokenId = _processPurchase(
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1697)

[33mWarning[0m for UnrestrictedWrite in contract 'WallOfChainMarket':
    |    // update state
    |    uint256 weiAmount = msg.value;
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    uint256 currentTokenId = _processEdit(
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1736)

[33mWarning[0m for UnrestrictedWrite in contract 'WallOfChainMarket':
    |    );
    |
  > |    wallet = _newWallet;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x20c69c6831c614d203d844fc45bba503edd06e35.sol(1765)


