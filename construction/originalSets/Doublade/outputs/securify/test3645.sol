Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:AddressUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:ERC165
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:ERC721Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:ERC721BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:ERC721Enumerable
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:ERC721Metadata
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:ERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:ERC721Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:SpiderStore2018Contributions
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol:SupportsInterfaceWithLookup
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AddressUtils':
    | * Utility library of inline functions on addresses
    | */
  > |library AddressUtils {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(241)

[33mWarning[0m for LockedEther in contract 'ERC721BasicToken':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721BasicToken is SupportsInterfaceWithLookup, ERC721Basic {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(323)

[33mWarning[0m for UnhandledException in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      msg.sender, _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(617)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      msg.sender, _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(617)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    tokenApprovals[_tokenId] = _to;
    |    emit Approval(owner, _to, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(570)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(582)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(592)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(593)

[33mWarning[0m for LockedEther in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is SupportsInterfaceWithLookup, ERC721BasicToken, ERC721 {
    |
    |  // Token name
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(631)

[33mWarning[0m for UnhandledException in contract 'ERC721Token':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      msg.sender, _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(617)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Token':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      msg.sender, _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(617)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |pragma solidity ^0.4.24;
    |
  > |// File: zeppelin-solidity/contracts/introspection/ERC165.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    tokenApprovals[_tokenId] = _to;
    |    emit Approval(owner, _to, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(570)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(582)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(592)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(593)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is SupportsInterfaceWithLookup, ERC721BasicToken, ERC721 {
    |
    |  // Token name
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(631)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    super.addTokenTo(_to, _tokenId);
    |    uint256 length = ownedTokens[_to].length;
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 length = ownedTokens[_to].length;
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(749)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    // This also deletes the contents at the last position of the array
    |    ownedTokens[_from].length--;
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(766)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    // the lastToken to the first position, and then dropping the element placed in the last position of the list
    |
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(774)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(775)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(827)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(828)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(860)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(869)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(877)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(880)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(862)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(880)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(190)

[31mViolation[0m for LockedEther in contract 'SpiderStore2018Contributions':
    |// File: contracts/SpiderStore2018Contributions.sol
    |
  > |contract SpiderStore2018Contributions is ERC721Token, Ownable {
    |    constructor (string _name, string _symbol) public ERC721Token(_name, _symbol)
    |    {
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(886)

[33mWarning[0m for UnhandledException in contract 'SpiderStore2018Contributions':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      msg.sender, _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(617)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SpiderStore2018Contributions':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      msg.sender, _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(617)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |pragma solidity ^0.4.24;
    |
  > |// File: zeppelin-solidity/contracts/introspection/ERC165.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    tokenApprovals[_tokenId] = _to;
    |    emit Approval(owner, _to, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(396)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(570)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(582)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(592)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(593)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |    super.addTokenTo(_to, _tokenId);
    |    uint256 length = ownedTokens[_to].length;
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |    uint256 length = ownedTokens[_to].length;
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(749)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    // This also deletes the contents at the last position of the array
    |    ownedTokens[_from].length--;
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(766)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |    // the lastToken to the first position, and then dropping the element placed in the last position of the list
    |
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(774)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(775)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |    super._mint(_to, _tokenId);
    |
  > |    allTokensIndex[_tokenId] = allTokens.length;
    |    allTokens.push(_tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(787)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |
    |    allTokensIndex[_tokenId] = allTokens.length;
  > |    allTokens.push(_tokenId);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(788)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(862)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(880)

[33mWarning[0m for UnrestrictedWrite in contract 'SpiderStore2018Contributions':
    |// File: contracts/SpiderStore2018Contributions.sol
    |
  > |contract SpiderStore2018Contributions is ERC721Token, Ownable {
    |    constructor (string _name, string _symbol) public ERC721Token(_name, _symbol)
    |    {
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(886)

[33mWarning[0m for LockedEther in contract 'SupportsInterfaceWithLookup':
    | * @dev Implements ERC165 using a lookup table.
    | */
  > |contract SupportsInterfaceWithLookup is ERC165 {
    |
    |  bytes4 public constant InterfaceId_ERC165 = 0x01ffc9a7;
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(272)

[31mViolation[0m for MissingInputValidation in contract 'SupportsInterfaceWithLookup':
    |   * @dev implement supportsInterface(bytes4) using a lookup table
    |   */
  > |  function supportsInterface(bytes4 _interfaceId)
    |    external
    |    view
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(298)

[33mWarning[0m for MissingInputValidation in contract 'SupportsInterfaceWithLookup':
    |contract SupportsInterfaceWithLookup is ERC165 {
    |
  > |  bytes4 public constant InterfaceId_ERC165 = 0x01ffc9a7;
    |  /**
    |   * 0x01ffc9a7 ===
  at /home/jiaming/mavs_srcs/contract@0xee89ba435b69d364dd2adb83bef1764f471c48e1.sol(274)


