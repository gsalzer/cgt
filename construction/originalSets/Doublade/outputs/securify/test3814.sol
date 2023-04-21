Processing contract: /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol:OwnedEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol:Roles
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol:RolesEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol:RolesI
Processing contract: /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol:SecuredWithRoles
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol:SecuredWithRolesI
[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned is OwnedEvents {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function setOwner(address owner_) public onlyOwner {
    |        owner = owner_;
    |        LogSetOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned is OwnedEvents {
  > |    address public owner;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(23)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function setOwner(address owner_) public onlyOwner {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(35)

[33mWarning[0m for LockedEther in contract 'OwnedEvents':
    |pragma solidity ^0.4.17;
    |
  > |contract OwnedEvents {
    |    event LogSetOwner (address newOwner);
    |}
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(17)

[33mWarning[0m for DAO in contract 'Roles':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(75)

[33mWarning[0m for DAO in contract 'Roles':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(79)

[33mWarning[0m for LockedEther in contract 'Roles':
    |
    |
  > |contract Roles is RolesEvents, SecuredWithRoles {
    |    // mapping is contract -> role -> sender_address -> boolean
    |    mapping(bytes32 => mapping (bytes32 => mapping (address => bool))) public roleList;
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'Roles':
    |    }
    |
  > |    function setOwner(address owner_) public onlyOwner {
    |        owner = owner_;
    |        LogSetOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'Roles':
    |    }
    |
  > |    function setRolesContract(address roles_) public onlyOwner {
    |        // it must not be possible to change the roles contract on the roles contract itself
    |        require(this != address(roles));
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'Roles':
    |contract Roles is RolesEvents, SecuredWithRoles {
    |    // mapping is contract -> role -> sender_address -> boolean
  > |    mapping(bytes32 => mapping (bytes32 => mapping (address => bool))) public roleList;
    |    // the intention is
    |    mapping (bytes32 => mapping (bytes32 => bool)) public knownRoleNames;
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(120)

[31mViolation[0m for MissingInputValidation in contract 'Roles':
    |    mapping(bytes32 => mapping (bytes32 => mapping (address => bool))) public roleList;
    |    // the intention is
  > |    mapping (bytes32 => mapping (bytes32 => bool)) public knownRoleNames;
    |
    |    function Roles() SecuredWithRoles("RolesRepository", this) public {}
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |
    |contract Owned is OwnedEvents {
  > |    address public owner;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |
    |contract SecuredWithRoles is Owned {
  > |    RolesI public roles;
    |    bytes32 public contractHash;
    |    bool public stopped = false;
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |contract SecuredWithRoles is Owned {
    |    RolesI public roles;
  > |    bytes32 public contractHash;
    |    bool public stopped = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |    RolesI public roles;
    |    bytes32 public contractHash;
  > |    bool public stopped = false;
    |
    |    function SecuredWithRoles(string contractName_, address roles_) public {
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |
    |    // returns true if the role has been defined for the contract
  > |    function hasRole(string roleName) public view returns (bool) {
    |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |    }
    |
  > |    function senderHasRole(string roleName) public view returns (bool) {
    |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |    }
    |
  > |    function stop() public roleOrOwner("stopper") {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |    }
    |
  > |    function restart() public roleOrOwner("restarter") {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(86)

[33mWarning[0m for UnhandledException in contract 'Roles':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(75)

[33mWarning[0m for UnhandledException in contract 'Roles':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'Roles':
    |
    |    function setOwner(address owner_) public onlyOwner {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Roles':
    |        // it must not be possible to change the roles contract on the roles contract itself
    |        require(this != address(roles));
  > |        roles = RolesI(roles_);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(93)

[33mWarning[0m for LockedEther in contract 'RolesEvents':
    |
    |
  > |contract RolesEvents {
    |    event LogRoleAdded(bytes32 contractHash, string roleName);
    |    event LogRoleRemoved(bytes32 contractHash, string roleName);
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(110)

[33mWarning[0m for DAO in contract 'SecuredWithRoles':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(75)

[33mWarning[0m for DAO in contract 'SecuredWithRoles':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(79)

[33mWarning[0m for LockedEther in contract 'SecuredWithRoles':
    |
    |
  > |contract SecuredWithRoles is Owned {
    |    RolesI public roles;
    |    bytes32 public contractHash;
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    }
    |
  > |    function setOwner(address owner_) public onlyOwner {
    |        owner = owner_;
    |        LogSetOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    }
    |
  > |    function setRolesContract(address roles_) public onlyOwner {
    |        // it must not be possible to change the roles contract on the roles contract itself
    |        require(this != address(roles));
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |
    |contract Owned is OwnedEvents {
  > |    address public owner;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |
    |contract SecuredWithRoles is Owned {
  > |    RolesI public roles;
    |    bytes32 public contractHash;
    |    bool public stopped = false;
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |contract SecuredWithRoles is Owned {
    |    RolesI public roles;
  > |    bytes32 public contractHash;
    |    bool public stopped = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    RolesI public roles;
    |    bytes32 public contractHash;
  > |    bool public stopped = false;
    |
    |    function SecuredWithRoles(string contractName_, address roles_) public {
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |
    |    // returns true if the role has been defined for the contract
  > |    function hasRole(string roleName) public view returns (bool) {
    |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    }
    |
  > |    function senderHasRole(string roleName) public view returns (bool) {
    |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    }
    |
  > |    function stop() public roleOrOwner("stopper") {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    }
    |
  > |    function restart() public roleOrOwner("restarter") {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(86)

[33mWarning[0m for UnhandledException in contract 'SecuredWithRoles':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(75)

[33mWarning[0m for UnhandledException in contract 'SecuredWithRoles':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'SecuredWithRoles':
    |
    |    function setOwner(address owner_) public onlyOwner {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'SecuredWithRoles':
    |        // it must not be possible to change the roles contract on the roles contract itself
    |        require(this != address(roles));
  > |        roles = RolesI(roles_);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfaf52e46655b947841c0c3699b261ea5a805875e.sol(93)


