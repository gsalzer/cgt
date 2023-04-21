Processing contract: /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol:DealsRootStorage
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol:Ownable
[33mWarning[0m for LockedEther in contract 'DealsRootStorage':
    | * @dev Storage for precalculated merkle roots.
    | */
  > |contract DealsRootStorage is Ownable {
    |  mapping(uint256 => bytes32) roots;
    |  uint256 public lastTimestamp = 0;
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'DealsRootStorage':
    |   * @dev Sets merkle root at the specified timestamp.
    |   */
  > |  function setRoot(uint256 _timestamp, bytes32 _root) onlyOwner public returns (bool) {
    |    require(_timestamp > 0);
    |    require(roots[_timestamp] == 0);
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'DealsRootStorage':
    |   * @dev Gets merkle root by the specified timestamp.
    |   */
  > |  function getRoot(uint256 _timestamp) public view returns (bytes32) {
    |    return roots[_timestamp];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'DealsRootStorage':
    |   * @return the address of the owner.
    |   */
  > |  function owner() public view returns(address) {
    |    return _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'DealsRootStorage':
    |   * @return true if `msg.sender` is the owner of the contract.
    |   */
  > |  function isOwner() public view returns(bool) {
    |    return msg.sender == _owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'DealsRootStorage':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
    |    _owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'DealsRootStorage':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    _transferOwnership(newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'DealsRootStorage':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address newOwner) internal {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'DealsRootStorage':
    |contract DealsRootStorage is Ownable {
    |  mapping(uint256 => bytes32) roots;
  > |  uint256 public lastTimestamp = 0;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'DealsRootStorage':
    |   * @dev Gets last available merkle root.
    |   */
  > |  function lastRoot() public view returns (bytes32) {
    |    return roots[lastTimestamp];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'DealsRootStorage':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'DealsRootStorage':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipTransferred(_owner, address(0));
  > |    _owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'DealsRootStorage':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(_owner, newOwner);
  > |    _owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'DealsRootStorage':
    |    require(roots[_timestamp] == 0);
    |
  > |    roots[_timestamp] = _root;
    |    lastTimestamp = _timestamp;
    |
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'DealsRootStorage':
    |
    |    roots[_timestamp] = _root;
  > |    lastTimestamp = _timestamp;
    |
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd138be69f9b7c0028a89a43c6597d900932438a1.sol(93)


