Processing contract: /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol:Database
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol:DatabaseInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Database':
    |// File: contracts/platform/database/Database.sol
    |
  > |contract Database is Ownable, DatabaseInterface {
    |	event StorageModified(address indexed contractAddress, bool allowed);
    |
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'Database':
    |pragma solidity ^0.4.24;
    |
  > |// File: contracts/lib/ownership/Ownable.sol
    |
    |contract Ownable {
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Database':
    |// File: contracts/platform/database/Database.sol
    |
  > |contract Database is Ownable, DatabaseInterface {
    |	event StorageModified(address indexed contractAddress, bool allowed);
    |
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'Database':
    |
    |	function setBytes32(bytes32 key, bytes32 value) external storageOnly  {
  > |		data_bytes32[key] = value;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'Database':
    |
    |	function setNumber(bytes32 key, uint256 value) external storageOnly {
  > |		data_bytes32[key] = bytes32(value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'Database':
    |
    |	function pushBytesArray(bytes32 key, bytes32 value) external {
  > |		data_bytesArray[key].push(value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'Database':
    |
    |	function setBytesArrayIndex(bytes32 key, uint256 index, bytes32 value) external storageOnly {
  > |		data_bytesArray[key][index] = value;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'Database':
    |
    |	function pushIntArray(bytes32 key, int value) external {
  > |		data_intArray[key].push(value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(168)

[31mViolation[0m for UnrestrictedWrite in contract 'Database':
    |
    |	function setIntArrayIndex(bytes32 key, uint256 index, int value) external storageOnly {
  > |		data_intArray[key][index] = value;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'Database':
    |
    |	function pushAddressArray(bytes32 key, address value) external {
  > |		data_addressArray[key].push(value);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(193)

[31mViolation[0m for UnrestrictedWrite in contract 'Database':
    |
    |	function setAddressArrayIndex(bytes32 key, uint256 index, address value) external storageOnly {
  > |		data_addressArray[key][index] = value;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Database':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'Database':
    |	function setStorageContract(address _storageContract, bool _allowed) public onlyOwner {
    |		require(_storageContract != address(0), "Error: Address zero is invalid storage contract");
  > |		allowed[_storageContract] = _allowed;
    |		emit StorageModified(_storageContract, _allowed);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(89)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |// File: contracts/lib/ownership/Ownable.sol
    |
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    /// @dev Allows the current owner to transfer control of the contract to a newOwner.
    |    /// @param newOwner The address to transfer ownership to.
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x02647d32b2633cf89434d8f371658b6a74d55bf9.sol(23)


