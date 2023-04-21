Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:AssetRegistryStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:ERC165
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:ERC721Base
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:ERC721Enumerable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:ERC721Metadata
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:FullAssetRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:IApplication
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:IERC721Base
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:IERC721Enumerable
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:IERC721Metadata
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:IERC721Receiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:IEstateRegistry
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:ILANDRegistry
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:IMetadataHolder
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:LANDRegistry
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:LANDStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:OwnableStorage
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:ProxyStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol:Storage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AssetRegistryStorage':
    |// File: erc821/contracts/AssetRegistryStorage.sol
    |
  > |contract AssetRegistryStorage {
    |
    |  string internal _name;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(28)

[33mWarning[0m for LockedEther in contract 'ERC721Base':
    |// File: erc821/contracts/ERC721Base.sol
    |
  > |contract ERC721Base is AssetRegistryStorage, IERC721Base, ERC165 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(279)

[33mWarning[0m for UnhandledException in contract 'ERC721Base':
    |      // Equals to `bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"))
    |      require(
  > |        IERC721Receiver(to).onERC721Received(
    |          msg.sender, holder, assetId, userData
    |        ) == ERC721_RECEIVED
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(625)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Base':
    |      // Equals to `bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"))
    |      require(
  > |        IERC721Receiver(to).onERC721Received(
    |          msg.sender, holder, assetId, userData
    |        ) == ERC721_RECEIVED
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(625)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |pragma solidity ^0.4.24;
    |
  > |// File: contracts/upgradable/ProxyStorage.sol
    |
    |contract ProxyStorage {
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |// File: erc821/contracts/ERC721Base.sol
    |
  > |contract ERC721Base is AssetRegistryStorage, IERC721Base, ERC165 {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(279)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |
    |    if (_getApprovedAddress(assetId) != operator) {
  > |      _approval[assetId] = operator;
    |      emit Approval(holder, operator, assetId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |
    |  function _addAuthorization(address operator, address holder) private {
  > |    _operators[holder][operator] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |
    |  function _clearAuthorization(address operator, address holder) private {
  > |    _operators[holder][operator] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |
    |  function _addAssetTo(address to, uint256 assetId) internal {
  > |    _holderOf[assetId] = to;
    |
    |    uint256 length = _balanceOf(to);
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |    uint256 length = _balanceOf(to);
    |
  > |    _assetsOf[to].push(assetId);
    |
    |    _indexOfAsset[assetId] = length;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |    _assetsOf[to].push(assetId);
    |
  > |    _indexOfAsset[assetId] = length;
    |
    |    _count = _count.add(1);
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |    _indexOfAsset[assetId] = length;
    |
  > |    _count = _count.add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |    uint256 lastAssetId = _assetsOf[from][lastAssetIndex];
    |
  > |    _holderOf[assetId] = 0;
    |
    |    // Insert the last asset into the position previously occupied by the asset to be removed
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |
    |    // Insert the last asset into the position previously occupied by the asset to be removed
  > |    _assetsOf[from][assetIndex] = lastAssetId;
    |
    |    // Resize the array
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(479)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |
    |    // Resize the array
  > |    _assetsOf[from][lastAssetIndex] = 0;
    |    _assetsOf[from].length--;
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |
    |    // Update the index of positions for the asset
  > |    _indexOfAsset[assetId] = 0;
    |    _indexOfAsset[lastAssetId] = assetIndex;
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |    // Update the index of positions for the asset
    |    _indexOfAsset[assetId] = 0;
  > |    _indexOfAsset[lastAssetId] = assetIndex;
    |
    |    _count = _count.sub(1);
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |    _indexOfAsset[lastAssetId] = assetIndex;
    |
  > |    _count = _count.sub(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Base':
    |  function _clearApproval(address holder, uint256 assetId) internal {
    |    if (_ownerOf(assetId) == holder && _approval[assetId] != 0) {
  > |      _approval[assetId] = 0;
    |      emit Approval(holder, 0, assetId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(499)

[33mWarning[0m for LockedEther in contract 'ERC721Enumerable':
    |// File: erc821/contracts/ERC721Enumerable.sol
    |
  > |contract ERC721Enumerable is AssetRegistryStorage, IERC721Enumerable {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(717)

[33mWarning[0m for LockedEther in contract 'ERC721Metadata':
    |// File: erc821/contracts/ERC721Metadata.sol
    |
  > |contract ERC721Metadata is AssetRegistryStorage, IERC721Metadata {
    |  function name() external view returns (string) {
    |    return _name;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(780)

[31mViolation[0m for MissingInputValidation in contract 'ERC721Metadata':
    |    return _description;
    |  }
  > |  function tokenMetadata(uint256 assetId) external view returns (string) {
    |    return _assetData[assetId];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(790)

[33mWarning[0m for MissingInputValidation in contract 'ERC721Metadata':
    |
    |contract ERC721Metadata is AssetRegistryStorage, IERC721Metadata {
  > |  function name() external view returns (string) {
    |    return _name;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(781)

[33mWarning[0m for MissingInputValidation in contract 'ERC721Metadata':
    |    return _name;
    |  }
  > |  function symbol() external view returns (string) {
    |    return _symbol;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(784)

[33mWarning[0m for MissingInputValidation in contract 'ERC721Metadata':
    |    return _symbol;
    |  }
  > |  function description() external view returns (string) {
    |    return _description;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(787)

[33mWarning[0m for LockedEther in contract 'FullAssetRegistry':
    |// File: erc821/contracts/FullAssetRegistry.sol
    |
  > |contract FullAssetRegistry is ERC721Base, ERC721Enumerable, ERC721Metadata {
    |  constructor() public {
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(800)

[33mWarning[0m for UnhandledException in contract 'FullAssetRegistry':
    |      // Equals to `bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"))
    |      require(
  > |        IERC721Receiver(to).onERC721Received(
    |          msg.sender, holder, assetId, userData
    |        ) == ERC721_RECEIVED
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(625)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FullAssetRegistry':
    |      // Equals to `bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"))
    |      require(
  > |        IERC721Receiver(to).onERC721Received(
    |          msg.sender, holder, assetId, userData
    |        ) == ERC721_RECEIVED
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(625)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |pragma solidity ^0.4.24;
    |
  > |// File: contracts/upgradable/ProxyStorage.sol
    |
    |contract ProxyStorage {
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |
    |    if (_getApprovedAddress(assetId) != operator) {
  > |      _approval[assetId] = operator;
    |      emit Approval(holder, operator, assetId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(442)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |
    |  function _addAuthorization(address operator, address holder) private {
  > |    _operators[holder][operator] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(448)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |
    |  function _clearAuthorization(address operator, address holder) private {
  > |    _operators[holder][operator] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(452)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |
    |  function _addAssetTo(address to, uint256 assetId) internal {
  > |    _holderOf[assetId] = to;
    |
    |    uint256 length = _balanceOf(to);
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |    uint256 length = _balanceOf(to);
    |
  > |    _assetsOf[to].push(assetId);
    |
    |    _indexOfAsset[assetId] = length;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(464)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |    _assetsOf[to].push(assetId);
    |
  > |    _indexOfAsset[assetId] = length;
    |
    |    _count = _count.add(1);
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |    _indexOfAsset[assetId] = length;
    |
  > |    _count = _count.add(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |    uint256 lastAssetId = _assetsOf[from][lastAssetIndex];
    |
  > |    _holderOf[assetId] = 0;
    |
    |    // Insert the last asset into the position previously occupied by the asset to be removed
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(476)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |
    |    // Insert the last asset into the position previously occupied by the asset to be removed
  > |    _assetsOf[from][assetIndex] = lastAssetId;
    |
    |    // Resize the array
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(479)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |
    |    // Resize the array
  > |    _assetsOf[from][lastAssetIndex] = 0;
    |    _assetsOf[from].length--;
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |
    |    // Update the index of positions for the asset
  > |    _indexOfAsset[assetId] = 0;
    |    _indexOfAsset[lastAssetId] = assetIndex;
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |    // Update the index of positions for the asset
    |    _indexOfAsset[assetId] = 0;
  > |    _indexOfAsset[lastAssetId] = assetIndex;
    |
    |    _count = _count.sub(1);
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(492)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |    _indexOfAsset[lastAssetId] = assetIndex;
    |
  > |    _count = _count.sub(1);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(494)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |  function _clearApproval(address holder, uint256 assetId) internal {
    |    if (_ownerOf(assetId) == holder && _approval[assetId] != 0) {
  > |      _approval[assetId] = 0;
    |      emit Approval(holder, 0, assetId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(499)

[33mWarning[0m for UnrestrictedWrite in contract 'FullAssetRegistry':
    |// File: erc821/contracts/FullAssetRegistry.sol
    |
  > |contract FullAssetRegistry is ERC721Base, ERC721Enumerable, ERC721Metadata {
    |  constructor() public {
    |  }
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(800)

[33mWarning[0m for LockedEther in contract 'LANDStorage':
    |// File: contracts/land/LANDStorage.sol
    |
  > |contract LANDStorage {
    |  mapping (address => uint) public latestPing;
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'LANDStorage':
    |
    |contract LANDStorage {
  > |  mapping (address => uint) public latestPing;
    |
    |  uint256 constant clearLow = 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'LANDStorage':
    |  uint256 constant factor = 0x100000000000000000000000000000000;
    |
  > |  mapping (address => bool) public authorizedDeploy;
    |
    |  mapping (uint256 => address) public updateOperator;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'LANDStorage':
    |  mapping (address => bool) public authorizedDeploy;
    |
  > |  mapping (uint256 => address) public updateOperator;
    |
    |  IEstateRegistry public estateRegistry;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'LANDStorage':
    |  mapping (uint256 => address) public updateOperator;
    |
  > |  IEstateRegistry public estateRegistry;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(126)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |// File: contracts/upgradable/Ownable.sol
    |
  > |contract Ownable is Storage {
    |
    |  event OwnerUpdate(address _prevOwner, address _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract LANDStorage {
  > |  mapping (address => uint) public latestPing;
    |
    |  uint256 constant clearLow = 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |  uint256 constant factor = 0x100000000000000000000000000000000;
    |
  > |  mapping (address => bool) public authorizedDeploy;
    |
    |  mapping (uint256 => address) public updateOperator;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |  mapping (address => bool) public authorizedDeploy;
    |
  > |  mapping (uint256 => address) public updateOperator;
    |
    |  IEstateRegistry public estateRegistry;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * Current contract to which we are proxing
    |   */
  > |  address public currentContract;
    |  address public proxyOwner;
    |}
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   */
    |  address public currentContract;
  > |  address public proxyOwner;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract OwnableStorage {
    |
  > |  address public owner;
    |
    |  constructor() internal {
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  mapping (uint256 => address) public updateOperator;
    |
  > |  IEstateRegistry public estateRegistry;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    require(_newOwner != owner, "Cannot transfer to yourself");
    |    owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address _newOwner) public onlyOwner {
    |    require(_newOwner != owner, "Cannot transfer to yourself");
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(147)

[33mWarning[0m for LockedEther in contract 'ProxyStorage':
    |// File: contracts/upgradable/ProxyStorage.sol
    |
  > |contract ProxyStorage {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'ProxyStorage':
    |   * Current contract to which we are proxing
    |   */
  > |  address public currentContract;
    |  address public proxyOwner;
    |}
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'ProxyStorage':
    |   */
    |  address public currentContract;
  > |  address public proxyOwner;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(11)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(163)

[33mWarning[0m for LockedEther in contract 'Storage':
    |// File: contracts/Storage.sol
    |
  > |contract Storage is ProxyStorage, OwnableStorage, AssetRegistryStorage, LANDStorage {
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |
    |contract LANDStorage {
  > |  mapping (address => uint) public latestPing;
    |
    |  uint256 constant clearLow = 0xffffffffffffffffffffffffffffffff00000000000000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |  uint256 constant factor = 0x100000000000000000000000000000000;
    |
  > |  mapping (address => bool) public authorizedDeploy;
    |
    |  mapping (uint256 => address) public updateOperator;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'Storage':
    |  mapping (address => bool) public authorizedDeploy;
    |
  > |  mapping (uint256 => address) public updateOperator;
    |
    |  IEstateRegistry public estateRegistry;
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |   * Current contract to which we are proxing
    |   */
  > |  address public currentContract;
    |  address public proxyOwner;
    |}
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |   */
    |  address public currentContract;
  > |  address public proxyOwner;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |contract OwnableStorage {
    |
  > |  address public owner;
    |
    |  constructor() internal {
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Storage':
    |  mapping (uint256 => address) public updateOperator;
    |
  > |  IEstateRegistry public estateRegistry;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x7623127801542906eaf18e4d32e51b5a331c281a.sol(126)


