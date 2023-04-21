Processing contract: /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol:ECRecovery
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol:GrapevineWhitelist
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol:GrapevineWhitelistInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol:RBAC
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol:Roles
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol:SignatureBouncer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ECRecovery':
    | */
    |
  > |library ECRecovery {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(38)

[31mViolation[0m for LockedEther in contract 'GrapevineWhitelist':
    | * @dev Grapevine Crowdsale
    | **/
  > |contract GrapevineWhitelist is SignatureBouncer, GrapevineWhitelistInterface {
    |
    |  event WhitelistedAddressAdded(address addr);
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(416)

[33mWarning[0m for UnhandledException in contract 'GrapevineWhitelist':
    |    } else {
    |      // solium-disable-next-line arg-overflow
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(79)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GrapevineWhitelist':
    |    } else {
    |      // solium-disable-next-line arg-overflow
  > |      return ecrecover(hash, v, r, s);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'GrapevineWhitelist':
    |    internal
    |  {
  > |    role.bearer[addr] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(182)

[31mViolation[0m for UnrestrictedWrite in contract 'GrapevineWhitelist':
    |    internal
    |  {
  > |    role.bearer[addr] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineWhitelist':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineWhitelist':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineWhitelist':
    |  function setCrowdsale(address _crowdsale) external onlyOwner {
    |    require(_crowdsale != address(0));
  > |    crowdsale = _crowdsale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(450)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineWhitelist':
    |   */
    |  function removeAddressFromWhitelist(address _beneficiary) external onlyOwnerOrCrowdsale {
  > |    whitelist[_beneficiary] = false;
    |    emit WhitelistedAddressRemoved(_beneficiary);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(468)

[33mWarning[0m for UnrestrictedWrite in contract 'GrapevineWhitelist':
    |   */
    |  function addAddressToWhitelist(address _beneficiary) public onlyOwnerOrCrowdsale {
  > |    whitelist[_beneficiary] = true;
    |    emit WhitelistedAddressAdded(_beneficiary);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(497)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @dev Allows the current owner to relinquish control of the contract.
    |   */
  > |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
    |    owner = address(0);
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address _newOwner) public onlyOwner {
    |    _transferOwnership(_newOwner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param _newOwner The address to transfer ownership to.
    |   */
  > |  function _transferOwnership(address _newOwner) internal {
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(159)

[31mViolation[0m for LockedEther in contract 'RBAC':
    | *  to avoid typos.
    | */
  > |contract RBAC {
    |  using Roles for Roles.Role;
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(231)

[33mWarning[0m for LockedEther in contract 'Roles':
    | *      See RBAC.sol for example usage.
    | */
  > |library Roles {
    |  struct Role {
    |    mapping (address => bool) bearer;
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(171)

[31mViolation[0m for LockedEther in contract 'SignatureBouncer':
    | * See the tests Bouncer.test.js for specific usage examples.
    | */
  > |contract SignatureBouncer is Ownable, RBAC {
    |  using ECRecovery for bytes32;
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(342)

[31mViolation[0m for UnrestrictedWrite in contract 'SignatureBouncer':
    |    internal
    |  {
  > |    role.bearer[addr] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(182)

[31mViolation[0m for UnrestrictedWrite in contract 'SignatureBouncer':
    |    internal
    |  {
  > |    role.bearer[addr] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'SignatureBouncer':
    |  function renounceOwnership() public onlyOwner {
    |    emit OwnershipRenounced(owner);
  > |    owner = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'SignatureBouncer':
    |    require(_newOwner != address(0));
    |    emit OwnershipTransferred(owner, _newOwner);
  > |    owner = _newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3d3e4903d1ea34eaf861da61e6e32c7237363bc1.sol(159)


