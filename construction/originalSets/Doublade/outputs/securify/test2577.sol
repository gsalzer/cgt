Processing contract: /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol:OwnedUpgradeabilityProxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol:Proxy
Processing contract: /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol:UpgradeabilityProxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'OwnedUpgradeabilityProxy':
    |    function upgradeToAndCall(address implementation, bytes data) public payable onlyProxyOwner {
    |        upgradeTo(implementation);
  > |        require(address(this).call.value(msg.value)(data), "data is invalid");
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'OwnedUpgradeabilityProxy':
    |    * @return address of the current implementation
    |    */
  > |    function implementation() public view returns (address impl) {
    |        bytes32 position = implementationPosition;
    |        assembly {
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'OwnedUpgradeabilityProxy':
    |    * @param newImplementation address representing the new implementation to be set
    |    */
  > |    function setImplementation(address newImplementation) internal {
    |        bytes32 position = implementationPosition;
    |        assembly {
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'OwnedUpgradeabilityProxy':
    |    * @param newImplementation representing the address of the new implementation to be set
    |    */
  > |    function _upgradeTo(address newImplementation) internal {
    |        address currentImplementation = implementation();
    |        require(currentImplementation != newImplementation, "new address is the same");
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'OwnedUpgradeabilityProxy':
    |    * @return the address of the owner
    |    */
  > |    function proxyOwner() public view returns (address owner) {
    |        bytes32 position = proxyOwnerPosition;
    |        assembly {
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'OwnedUpgradeabilityProxy':
    |    * @dev Sets the address of the owner
    |    */
  > |    function setUpgradeabilityOwner(address newProxyOwner) internal {
    |        bytes32 position = proxyOwnerPosition;
    |        assembly {
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'OwnedUpgradeabilityProxy':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferProxyOwnership(address newOwner) public onlyProxyOwner {
    |        require(newOwner != address(0), "address is invalid");
    |        emit ProxyOwnershipTransferred(proxyOwner(), newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(144)

[33mWarning[0m for UnhandledException in contract 'OwnedUpgradeabilityProxy':
    |    function upgradeToAndCall(address implementation, bytes data) public payable onlyProxyOwner {
    |        upgradeTo(implementation);
  > |        require(address(this).call.value(msg.value)(data), "data is invalid");
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'OwnedUpgradeabilityProxy':
    |        bytes32 position = implementationPosition;
    |        assembly {
  > |            sstore(position, newImplementation)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'OwnedUpgradeabilityProxy':
    |        bytes32 position = proxyOwnerPosition;
    |        assembly {
  > |            sstore(position, newProxyOwner)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedUpgradeabilityProxy':
    |        bytes32 position = proxyOwnerPosition;
    |        assembly {
  > |            sstore(position, newProxyOwner)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'OwnedUpgradeabilityProxy':
    |        bytes32 position = implementationPosition;
    |        assembly {
  > |            sstore(position, newImplementation)
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(73)

[33mWarning[0m for LockedEther in contract 'UpgradeabilityProxy':
    | * @dev This contract represents a proxy where the implementation address to which it will delegate can be upgraded
    | */
  > |contract UpgradeabilityProxy is Proxy {
    |    /**
    |    * @dev This event will be emitted every time the implementation gets upgraded
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'UpgradeabilityProxy':
    |    * @return address of the current implementation
    |    */
  > |    function implementation() public view returns (address impl) {
    |        bytes32 position = implementationPosition;
    |        assembly {
  at /home/jiaming/mavs_srcs/contract@0xa8dcbe27f75a5cfda9e073c0205685d12888eb79.sol(59)


