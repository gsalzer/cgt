Processing contract: /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol:DocumentStore
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DocumentStore':
    |
    |
  > |contract DocumentStore is Ownable {
    |  string public name;
    |  string public version = "2.2.0";
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'DocumentStore':
    |  }
    |
  > |  function issue(
    |    bytes32 document
    |  ) public onlyOwner onlyNotIssued(document)
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'DocumentStore':
    |  }
    |
  > |  function getIssuedBlock(
    |    bytes32 document
    |  ) public onlyIssued(document) view returns (uint)
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'DocumentStore':
    |  }
    |
  > |  function isIssued(
    |    bytes32 document
    |  ) public view returns (bool)
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'DocumentStore':
    |  }
    |
  > |  function isIssuedBefore(
    |    bytes32 document,
    |    uint blockNumber
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'DocumentStore':
    |  }
    |
  > |  function revoke(
    |    bytes32 document
    |  ) public onlyOwner onlyNotRevoked(document) returns (bool)
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'DocumentStore':
    |  }
    |
  > |  function isRevoked(
    |    bytes32 document
    |  ) public view returns (bool)
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(126)

[31mViolation[0m for MissingInputValidation in contract 'DocumentStore':
    |  }
    |
  > |  function isRevokedBefore(
    |    bytes32 document,
    |    uint blockNumber
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(133)

[33mWarning[0m for MissingInputValidation in contract 'DocumentStore':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'DocumentStore':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'DocumentStore':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'DocumentStore':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'DocumentStore':
    |
    |contract DocumentStore is Ownable {
  > |  string public name;
    |  string public version = "2.2.0";
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'DocumentStore':
    |contract DocumentStore is Ownable {
    |  string public name;
  > |  string public version = "2.2.0";
    |
    |  /// A mapping of the document hash to the block number that was issued
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DocumentStore':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'DocumentStore':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'DocumentStore':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'DocumentStore':
    |  ) public onlyOwner onlyNotIssued(document)
    |  {
  > |    documentIssued[document] = block.number;
    |    emit DocumentIssued(document);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'DocumentStore':
    |  ) public onlyOwner onlyNotRevoked(document) returns (bool)
    |  {
  > |    documentRevoked[document] = block.number;
    |    emit DocumentRevoked(document);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(122)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x24a7de31d231221ab6b1b325ca5f1aa7bfbaaaba.sol(62)


