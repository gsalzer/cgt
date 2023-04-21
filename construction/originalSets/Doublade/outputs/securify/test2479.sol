Processing contract: /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol:BasicToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol:GuardianGoldToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol:MultiSigTransfer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol:RBAC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MultiSigTransfer':
    |}
    |
  > |contract MultiSigTransfer is Ownable {
    |  string public name = "MultiSigTransfer";
    |  string public symbol = "MST";
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(238)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |
    |contract MultiSigTransfer is Ownable {
  > |  string public name = "MultiSigTransfer";
    |  string public symbol = "MST";
    |  bool public complete = false;
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(239)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |contract MultiSigTransfer is Ownable {
    |  string public name = "MultiSigTransfer";
  > |  string public symbol = "MST";
    |  bool public complete = false;
    |  bool public denied = false;
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(240)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |  string public name = "MultiSigTransfer";
    |  string public symbol = "MST";
  > |  bool public complete = false;
    |  bool public denied = false;
    |  uint256 public quantity;
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(241)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |  string public symbol = "MST";
    |  bool public complete = false;
  > |  bool public denied = false;
    |  uint256 public quantity;
    |  address public targetAddress;
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |  bool public complete = false;
    |  bool public denied = false;
  > |  uint256 public quantity;
    |  address public targetAddress;
    |  address public requesterAddress;
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(243)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |  bool public denied = false;
    |  uint256 public quantity;
  > |  address public targetAddress;
    |  address public requesterAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |  uint256 public quantity;
    |  address public targetAddress;
  > |  address public requesterAddress;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |  * @dev Mark the transfer as approved / complete
    |  */
  > |  function approveTransfer() public onlyOwner {
    |    require(denied == false, "cannot approve a denied transfer");
    |    require(complete == false, "cannot approve a complete transfer");
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(267)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |  * @dev Mark the transfer as denied
    |  */
  > |  function denyTransfer() public onlyOwner {
    |    require(denied == false, "cannot deny a transfer that is already denied");
    |    denied = true;
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'MultiSigTransfer':
    |  * @dev Determine if the transfer is pending
    |  */
  > |  function isPending() public view returns (bool) {
    |    return !complete;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(284)

[31mViolation[0m for UnrestrictedWrite in contract 'MultiSigTransfer':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigTransfer':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigTransfer':
    |    require(denied == false, "cannot approve a denied transfer");
    |    require(complete == false, "cannot approve a complete transfer");
  > |    complete = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'MultiSigTransfer':
    |  function denyTransfer() public onlyOwner {
    |    require(denied == false, "cannot deny a transfer that is already denied");
  > |    denied = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(278)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(134)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(145)

[31mViolation[0m for LockedEther in contract 'RBAC':
    |}
    |
  > |contract RBAC {
    |  using Roles for Roles.Role;
    |
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(289)

[33mWarning[0m for LockedEther in contract 'Roles':
    |}
    |
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(149)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xa1cb45a734151b63679e1aed48e4c3deb8d1908d.sol(60)


