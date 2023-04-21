Processing contract: /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol:Arbiter
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol:ArbiterInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol:BondageInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol:DatabaseInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol:Destructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol:Upgradable
Processing contract: /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol:ZapCoordinatorInterface
[31mViolation[0m for LockedEther in contract 'Arbiter':
    |
    |
  > |contract Arbiter is Destructible, ArbiterInterface, Upgradable {
    |    // Called when a data purchase is initiated
    |    event DataPurchase(
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(147)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |
    |    function _updateDependencies() internal {
  > |        bondageAddress = coordinator.getContract("BONDAGE");
    |        bondage = BondageInterface(bondageAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(187)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |        bondage = BondageInterface(bondageAddress);
    |
  > |        address databaseAddress = coordinator.getContract("DATABASE");
    |        db = DatabaseInterface(databaseAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(190)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |
    |        // Escrow the necessary amount of dots
  > |        bondage.escrowDots(msg.sender, providerAddress, endpoint, blocks);
    |        
    |        // Initiate the subscription struct
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(225)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |
    |            // Transfer the earned dots to the provider
  > |            bondage.releaseDots(
    |                subscriberAddress,
    |                providerAddress,
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(313)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |            );
    |            //  Transfer the returned dots to the subscriber
  > |            bondage.returnDots(
    |                subscriberAddress,
    |                providerAddress,
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(320)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |        } else {
    |            // Transfer all the dots
  > |            bondage.releaseDots(
    |                subscriberAddress,
    |                providerAddress,
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(328)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |        returns (uint64)
    |    {
  > |        return uint64(db.getNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(353)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |        returns (uint96)
    |    {
  > |        return uint96(db.getNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(366)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |        returns (uint96)
    |    {
  > |        return uint96(db.getNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(379)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |        private
    |    {
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), dots);
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(blockStart));
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(preBlockEnd));
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(395)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |    {
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), dots);
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(blockStart));
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(preBlockEnd));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(396)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), dots);
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(blockStart));
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(preBlockEnd));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(397)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |        private
    |    {
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), 0);
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(0));
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(0));
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(410)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |    {
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), 0);
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(0));
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(0));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(411)

[33mWarning[0m for UnhandledException in contract 'Arbiter':
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), 0);
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(0));
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(0));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |
    |    function _updateDependencies() internal {
  > |        bondageAddress = coordinator.getContract("BONDAGE");
    |        bondage = BondageInterface(bondageAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |        bondage = BondageInterface(bondageAddress);
    |
  > |        address databaseAddress = coordinator.getContract("DATABASE");
    |        db = DatabaseInterface(databaseAddress);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |
    |        // Escrow the necessary amount of dots
  > |        bondage.escrowDots(msg.sender, providerAddress, endpoint, blocks);
    |        
    |        // Initiate the subscription struct
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(225)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |
    |            // Transfer the earned dots to the provider
  > |            bondage.releaseDots(
    |                subscriberAddress,
    |                providerAddress,
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |            );
    |            //  Transfer the returned dots to the subscriber
  > |            bondage.returnDots(
    |                subscriberAddress,
    |                providerAddress,
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |        } else {
    |            // Transfer all the dots
  > |            bondage.releaseDots(
    |                subscriberAddress,
    |                providerAddress,
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(328)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |        returns (uint64)
    |    {
  > |        return uint64(db.getNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(353)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |        returns (uint96)
    |    {
  > |        return uint96(db.getNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(366)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |        returns (uint96)
    |    {
  > |        return uint96(db.getNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd'))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(379)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |        private
    |    {
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), dots);
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(blockStart));
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(preBlockEnd));
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(395)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |    {
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), dots);
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(blockStart));
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(preBlockEnd));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(396)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), dots);
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(blockStart));
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(preBlockEnd));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(397)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |        private
    |    {
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), 0);
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(0));
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(0));
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(410)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |    {
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), 0);
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(0));
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(0));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Arbiter':
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'dots')), 0);
    |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'blockStart')), uint256(0));
  > |        db.setNumber(keccak256(abi.encodePacked('subscriptions', providerAddress, subscriberAddress, endpoint, 'preBlockEnd')), uint256(0));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(412)

[33mWarning[0m for UnrestrictedWrite in contract 'Arbiter':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'Arbiter':
    |
    |    function _updateDependencies() internal {
  > |        bondageAddress = coordinator.getContract("BONDAGE");
    |        bondage = BondageInterface(bondageAddress);
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'Arbiter':
    |    function _updateDependencies() internal {
    |        bondageAddress = coordinator.getContract("BONDAGE");
  > |        bondage = BondageInterface(bondageAddress);
    |
    |        address databaseAddress = coordinator.getContract("DATABASE");
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'Arbiter':
    |
    |        address databaseAddress = coordinator.getContract("DATABASE");
  > |        db = DatabaseInterface(databaseAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(191)

[33mWarning[0m for LockedEther in contract 'Destructible':
    |// File: contracts/lib/lifecycle/Destructible.sol
    |
  > |contract Destructible is Ownable {
    |	function selfDestruct() public onlyOwner {
    |		selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(23)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |// File: contracts/lib/ownership/Ownable.sol
    |
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    /// @dev Allows the current owner to transfer control of the contract to a newOwner.
    |    /// @param newOwner The address to transfer ownership to.
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |       require(newOwner != address(0));
    |       emit OwnershipTransferred(owner, newOwner);
  > |       owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x131e22ae3e90f0eeb1fb739eaa62ea0290c3fbe1.sol(23)


