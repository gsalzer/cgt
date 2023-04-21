Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:AddressUtils
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:ERC165
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:ERC165Support
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:ERC721Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:ERC721BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:ERC721Enumerable
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:ERC721Metadata
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:ERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:ERC721Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:EstateRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:EstateStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:IEstateRegistry
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:LANDRegistry
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:Migratable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol:SafeMath
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
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(200)

[33mWarning[0m for LockedEther in contract 'ERC165Support':
    | * @dev Implements ERC165 returning true for ERC165 interface identifier
    | */
  > |contract ERC165Support is ERC165 {
    |
    |  bytes4 internal constant InterfaceId_ERC165 = 0x01ffc9a7;
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'ERC165Support':
    |   */
    |
  > |  function supportsInterface(bytes4 _interfaceId)
    |    external
    |    view
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'ERC165Support':
    |  }
    |
  > |  function _supportsInterface(bytes4 _interfaceId)
    |    internal
    |    view
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(245)

[33mWarning[0m for LockedEther in contract 'ERC721BasicToken':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721BasicToken is ERC165Support, ERC721Basic {
    |
    |  bytes4 private constant InterfaceId_ERC721 = 0x80ac58cd;
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(260)

[33mWarning[0m for UnhandledException in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      msg.sender, _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(595)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721BasicToken':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      msg.sender, _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    tokenApprovals[_tokenId] = _to;
    |    emit Approval(owner, _to, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(548)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(559)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(560)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(570)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721BasicToken':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(571)

[31mViolation[0m for LockedEther in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is Migratable, ERC165Support, ERC721BasicToken, ERC721 {
    |
    |  bytes4 private constant InterfaceId_ERC721Enumerable = 0x780e9d63;
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(702)

[33mWarning[0m for UnhandledException in contract 'ERC721Token':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      msg.sender, _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(595)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Token':
    |      return true;
    |    }
  > |    bytes4 retval = ERC721Receiver(_to).onERC721Received(
    |      msg.sender, _from, _tokenId, _data);
    |    return (retval == ERC721_RECEIVED);
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |pragma solidity ^0.4.24;
    |
  > |// File: openzeppelin-zos/contracts/introspection/ERC165.sol
    |
    |/**
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    tokenApprovals[_tokenId] = _to;
    |    emit Approval(owner, _to, _tokenId);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(372)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function setApprovalForAll(address _to, bool _approved) public {
    |    require(_to != msg.sender);
  > |    operatorApprovals[msg.sender][_to] = _approved;
    |    emit ApprovalForAll(msg.sender, _to, _approved);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(393)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _owner);
    |    if (tokenApprovals[_tokenId] != address(0)) {
  > |      tokenApprovals[_tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(548)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function addTokenTo(address _to, uint256 _tokenId) internal {
    |    require(tokenOwner[_tokenId] == address(0));
  > |    tokenOwner[_tokenId] = _to;
    |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(559)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(tokenOwner[_tokenId] == address(0));
    |    tokenOwner[_tokenId] = _to;
  > |    ownedTokensCount[_to] = ownedTokensCount[_to].add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(560)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |  function removeTokenFrom(address _from, uint256 _tokenId) internal {
    |    require(ownerOf(_tokenId) == _from);
  > |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
    |    tokenOwner[_tokenId] = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(570)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    require(ownerOf(_tokenId) == _from);
    |    ownedTokensCount[_from] = ownedTokensCount[_from].sub(1);
  > |    tokenOwner[_tokenId] = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(571)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Token is Migratable, ERC165Support, ERC721BasicToken, ERC721 {
    |
    |  bytes4 private constant InterfaceId_ERC721Enumerable = 0x780e9d63;
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(702)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    super.addTokenTo(_to, _tokenId);
    |    uint256 length = ownedTokens[_to].length;
  > |    ownedTokens[_to].push(_tokenId);
    |    ownedTokensIndex[_tokenId] = length;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(840)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 length = ownedTokens[_to].length;
    |    ownedTokens[_to].push(_tokenId);
  > |    ownedTokensIndex[_tokenId] = length;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(841)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    uint256 lastToken = ownedTokens[_from][lastTokenIndex];
    |
  > |    ownedTokens[_from][tokenIndex] = lastToken;
    |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(856)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from][tokenIndex] = lastToken;
  > |    ownedTokens[_from][lastTokenIndex] = 0;
    |    // Note that this will handle single-element arrays. In that case, both tokenIndex and lastTokenIndex are going to
    |    // be zero. Then we can make sure that we will remove _tokenId from the ownedTokens list since we are first swapping
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(857)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |
    |    ownedTokens[_from].length--;
  > |    ownedTokensIndex[_tokenId] = 0;
    |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(863)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Token':
    |    ownedTokens[_from].length--;
    |    ownedTokensIndex[_tokenId] = 0;
  > |    ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(864)

[33mWarning[0m for LockedEther in contract 'EstateStorage':
    |
    |
  > |contract EstateStorage {
    |  bytes4 internal constant InterfaceId_GetMetadata = bytes4(keccak256("getMetadata(uint256)"));
    |  bytes4 internal constant InterfaceId_VerifyFingerprint = bytes4(
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(1005)

[31mViolation[0m for MissingInputValidation in contract 'EstateStorage':
    |
    |  // From Estate to list of owned LAND ids (LANDs)
  > |  mapping(uint256 => uint256[]) public estateLandIds;
    |
    |  // From LAND id (LAND) to its owner Estate id
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(1014)

[31mViolation[0m for MissingInputValidation in contract 'EstateStorage':
    |
    |  // From LAND id (LAND) to its owner Estate id
  > |  mapping(uint256 => uint256) public landIdEstate;
    |
    |  // From Estate id to mapping of LAND id to index on the array above (estateLandIds)
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(1017)

[31mViolation[0m for MissingInputValidation in contract 'EstateStorage':
    |
    |  // From Estate id to mapping of LAND id to index on the array above (estateLandIds)
  > |  mapping(uint256 => mapping(uint256 => uint256)) public estateLandIndex;
    |
    |  // Metadata of the Estate
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(1020)

[31mViolation[0m for MissingInputValidation in contract 'EstateStorage':
    |
    |  // Operator of the Estate
  > |  mapping (uint256 => address) public updateOperator;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(1026)

[33mWarning[0m for MissingInputValidation in contract 'EstateStorage':
    |  );
    |
  > |  LANDRegistry public registry;
    |
    |  // From Estate to list of owned LAND ids (LANDs)
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(1011)

[33mWarning[0m for LockedEther in contract 'Migratable':
    | * See `Initializable` for a simpler version.
    | */
  > |contract Migratable {
    |  /**
    |   * @dev Emitted when the contract applies a migration.
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(617)

[33mWarning[0m for MissingInputValidation in contract 'Migratable':
    |   * For more information see https://github.com/zeppelinos/zos-lib/issues/158.
    |   */
  > |  function initialize() isInitializer("Migratable", "1.2.1") public {
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(681)

[33mWarning[0m for MissingInputValidation in contract 'Migratable':
    |   * @param migrationId Identifier of the migration.
    |   */
  > |  function validateMigrationIsPending(string contractName, string migrationId) private view {
    |    require(!isMigrated(contractName, migrationId), "Requested target migration ID has already been run");
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(689)

[31mViolation[0m for UnrestrictedWrite in contract 'Migratable':
    |    _;
    |    emit Migrated(contractName, migrationId);
  > |    migrated[contractName][migrationId] = true;
    |    migrated[contractName][INITIALIZED_ID] = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(647)

[31mViolation[0m for UnrestrictedWrite in contract 'Migratable':
    |    emit Migrated(contractName, migrationId);
    |    migrated[contractName][migrationId] = true;
  > |    migrated[contractName][INITIALIZED_ID] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(648)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable is Migratable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(916)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * For more information see https://github.com/zeppelinos/zos-lib/issues/158.
    |   */
  > |  function initialize() isInitializer("Migratable", "1.2.1") public {
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(681)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param migrationId Identifier of the migration.
    |   */
  > |  function validateMigrationIsPending(string contractName, string migrationId) private view {
    |    require(!isMigrated(contractName, migrationId), "Requested target migration ID has already been run");
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(689)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable is Migratable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(917)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(942)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    _;
    |    emit Migrated(contractName, migrationId);
  > |    migrated[contractName][migrationId] = true;
    |    migrated[contractName][INITIALIZED_ID] = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(647)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    emit Migrated(contractName, migrationId);
    |    migrated[contractName][migrationId] = true;
  > |    migrated[contractName][INITIALIZED_ID] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(648)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |   */
    |  function initialize(address _sender) public isInitializer("Ownable", "1.9.0") {
  > |    owner = _sender;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(927)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(945)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xae045794a269450e9af1dca6aeffe969c4b64158.sol(153)


