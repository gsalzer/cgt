Processing contract: /home/jiaming/mavs_srcs/contract@0xa92e7c82b11d10716ab534051b271d2f6aef7df5.sol:AraProxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AraProxy':
    | * @dev Gives the possibility to delegate any call to a foreign implementation.
    | */
  > |contract AraProxy {
    |
    |  bytes32 private constant registryPosition_ = keccak256("io.ara.proxy.registry");
  at /home/jiaming/mavs_srcs/contract@0xa92e7c82b11d10716ab534051b271d2f6aef7df5.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'AraProxy':
    |  }
    |
  > |  function setImplementation(address _newImplementation) public restricted {
    |    require(_newImplementation != address(0));
    |    bytes32 implementationPosition = implementationPosition_;
  at /home/jiaming/mavs_srcs/contract@0xa92e7c82b11d10716ab534051b271d2f6aef7df5.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'AraProxy':
    |    bytes32 implementationPosition = implementationPosition_;
    |    assembly {
  > |      sstore(implementationPosition, _newImplementation)
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa92e7c82b11d10716ab534051b271d2f6aef7df5.sol(41)


