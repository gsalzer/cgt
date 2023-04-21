Processing contract: /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol:Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(58)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is Ownable {
    |  event UpgradedTo(address indexed implementation);
    |
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |  address internal _implementation;
    |
  > |  function implementation() public view returns (address) {
    |    return _implementation;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |  }
    |
  > |  function upgradeTo(address impl) public onlyOwner {
    |    require(_implementation != impl);
    |    _implementation = impl;
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |  function upgradeTo(address impl) public onlyOwner {
    |    require(_implementation != impl);
  > |    _implementation = impl;
    |    emit UpgradedTo(impl);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x306496f5af58b04fc93985059c894ec549e2f6b8.sol(73)


