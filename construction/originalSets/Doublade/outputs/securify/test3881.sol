Processing contract: /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol:DatabaseInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol:Upgradable
Processing contract: /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol:ZapCoordinator
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol:ZapCoordinatorInterface
[33mWarning[0m for LockedEther in contract 'Ownable':
    |// File: contracts/lib/ownership/Ownable.sol
    |
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    /// @dev Allows the current owner to transfer control of the contract to a newOwner.
    |    /// @param newOwner The address to transfer ownership to.
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(23)

[31mViolation[0m for LockedEther in contract 'ZapCoordinator':
    |// File: contracts/lib/ownership/ZapCoordinator.sol
    |
  > |contract ZapCoordinator is Ownable, ZapCoordinatorInterface {
    |
    |	event UpdatedContract(string name, address previousAddr, address newAddr);
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(104)

[33mWarning[0m for UnhandledException in contract 'ZapCoordinator':
    |		} else {
    |			// Deauth the old contract
  > |			db.setStorageContract(prev, false);
    |		}
    |		// give new contract database access permission
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(134)

[33mWarning[0m for UnhandledException in contract 'ZapCoordinator':
    |		}
    |		// give new contract database access permission
  > |		db.setStorageContract(newAddress, true);
    |
    |		emit UpdatedContract(contractName, prev, newAddress);
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(137)

[33mWarning[0m for UnhandledException in contract 'ZapCoordinator':
    |		for ( uint i = 0; i < loadedContracts.length; i++ ) {
    |			address c = contracts[loadedContracts[i]];
  > |			Upgradable(c).updateDependencies();
    |			emit UpdatedDependencies(block.timestamp, loadedContracts[i], c);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZapCoordinator':
    |		} else {
    |			// Deauth the old contract
  > |			db.setStorageContract(prev, false);
    |		}
    |		// give new contract database access permission
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZapCoordinator':
    |		}
    |		// give new contract database access permission
  > |		db.setStorageContract(newAddress, true);
    |
    |		emit UpdatedContract(contractName, prev, newAddress);
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ZapCoordinator':
    |		for ( uint i = 0; i < loadedContracts.length; i++ ) {
    |			address c = contracts[loadedContracts[i]];
  > |			Upgradable(c).updateDependencies();
    |			emit UpdatedDependencies(block.timestamp, loadedContracts[i], c);
    |		}
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'ZapCoordinator':
    |// File: contracts/lib/ownership/ZapCoordinator.sol
    |
  > |contract ZapCoordinator is Ownable, ZapCoordinatorInterface {
    |
    |	event UpdatedContract(string name, address previousAddr, address newAddr);
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'ZapCoordinator':
    |		// Create DB object when Database is added to Coordinator
    |		bytes32 hash = keccak256(abi.encodePacked(contractName));
  > |		if(hash == keccak256(abi.encodePacked("DATABASE"))) db = DatabaseInterface(newAddress);
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'ZapCoordinator':
    |pragma solidity ^0.4.24;
    |
  > |// File: contracts/lib/ownership/Ownable.sol
    |
    |contract Ownable {
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ZapCoordinator':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'ZapCoordinator':
    |// File: contracts/lib/ownership/ZapCoordinator.sol
    |
  > |contract ZapCoordinator is Ownable, ZapCoordinatorInterface {
    |
    |	event UpdatedContract(string name, address previousAddr, address newAddr);
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'ZapCoordinator':
    |	function addImmutableContract(string contractName, address newAddress) external onlyOwner {
    |		assert(contracts[contractName] == address(0));
  > |		contracts[contractName] = newAddress;
    |
    |		// Create DB object when Database is added to Coordinator
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'ZapCoordinator':
    |
    |		emit UpdatedContract(contractName, prev, newAddress);
  > |		contracts[contractName] = newAddress;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xfff5d46ef8d13445ab183ede96bfb63da2294fce.sol(140)


