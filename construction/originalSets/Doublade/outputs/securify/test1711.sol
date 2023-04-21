Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:OwnedEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:Roles
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:RolesEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:RolesI
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:SecuredWithRoles
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:SecuredWithRolesI
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:SweetTokenLogic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:TokenData
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:TokenEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:TokenI
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:TokenLogic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:TokenLogicEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol:TokenLogicI
[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |// Token standard API
    |// https://github.com/ethereum/EIPs/issues/20
  > |contract ERC20Events {
    |    event Transfer( address indexed from, address indexed to, uint256 value);
    |    event Approval( address indexed owner, address indexed spender, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(327)

[33mWarning[0m for LockedEther in contract 'Math':
    |
    |
  > |library Math {
    |
    |    // standard uint256 functions
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(29)

[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned is OwnedEvents {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function setOwner(address owner_) public onlyOwner {
    |        owner = owner_;
    |        LogSetOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned is OwnedEvents {
  > |    address public owner;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function setOwner(address owner_) public onlyOwner {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(209)

[33mWarning[0m for LockedEther in contract 'OwnedEvents':
    |}
    |
  > |contract OwnedEvents {
    |    event LogSetOwner (address newOwner);
    |}
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(191)

[33mWarning[0m for DAO in contract 'Roles':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(249)

[33mWarning[0m for DAO in contract 'Roles':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(253)

[33mWarning[0m for LockedEther in contract 'Roles':
    |
    |
  > |contract Roles is RolesEvents, SecuredWithRoles {
    |    // mapping is contract -> role -> sender_address -> boolean
    |    mapping(bytes32 => mapping (bytes32 => mapping (address => bool))) public roleList;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(292)

[31mViolation[0m for MissingInputValidation in contract 'Roles':
    |    }
    |
  > |    function setOwner(address owner_) public onlyOwner {
    |        owner = owner_;
    |        LogSetOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(208)

[31mViolation[0m for MissingInputValidation in contract 'Roles':
    |    }
    |
  > |    function setRolesContract(address roles_) public onlyOwner {
    |        // it must not be possible to change the roles contract on the roles contract itself
    |        require(this != address(roles));
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(264)

[31mViolation[0m for MissingInputValidation in contract 'Roles':
    |contract Roles is RolesEvents, SecuredWithRoles {
    |    // mapping is contract -> role -> sender_address -> boolean
  > |    mapping(bytes32 => mapping (bytes32 => mapping (address => bool))) public roleList;
    |    // the intention is
    |    mapping (bytes32 => mapping (bytes32 => bool)) public knownRoleNames;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(294)

[31mViolation[0m for MissingInputValidation in contract 'Roles':
    |    mapping(bytes32 => mapping (bytes32 => mapping (address => bool))) public roleList;
    |    // the intention is
  > |    mapping (bytes32 => mapping (bytes32 => bool)) public knownRoleNames;
    |
    |    function Roles() SecuredWithRoles("RolesRepository", this) public {}
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(296)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |
    |contract Owned is OwnedEvents {
  > |    address public owner;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |
    |contract SecuredWithRoles is Owned {
  > |    RolesI public roles;
    |    bytes32 public contractHash;
    |    bool public stopped = false;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |contract SecuredWithRoles is Owned {
    |    RolesI public roles;
  > |    bytes32 public contractHash;
    |    bool public stopped = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |    RolesI public roles;
    |    bytes32 public contractHash;
  > |    bool public stopped = false;
    |
    |    function SecuredWithRoles(string contractName_, address roles_) public {
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |
    |    // returns true if the role has been defined for the contract
  > |    function hasRole(string roleName) public view returns (bool) {
    |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(248)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |    }
    |
  > |    function senderHasRole(string roleName) public view returns (bool) {
    |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(252)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |    }
    |
  > |    function stop() public roleOrOwner("stopper") {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(256)

[33mWarning[0m for MissingInputValidation in contract 'Roles':
    |    }
    |
  > |    function restart() public roleOrOwner("restarter") {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(260)

[33mWarning[0m for UnhandledException in contract 'Roles':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(249)

[33mWarning[0m for UnhandledException in contract 'Roles':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'Roles':
    |
    |    function setOwner(address owner_) public onlyOwner {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'Roles':
    |        // it must not be possible to change the roles contract on the roles contract itself
    |        require(this != address(roles));
  > |        roles = RolesI(roles_);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(267)

[33mWarning[0m for LockedEther in contract 'RolesEvents':
    |
    |
  > |contract RolesEvents {
    |    event LogRoleAdded(bytes32 contractHash, string roleName);
    |    event LogRoleRemoved(bytes32 contractHash, string roleName);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(284)

[33mWarning[0m for DAO in contract 'SecuredWithRoles':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(249)

[33mWarning[0m for DAO in contract 'SecuredWithRoles':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(253)

[33mWarning[0m for LockedEther in contract 'SecuredWithRoles':
    |
    |
  > |contract SecuredWithRoles is Owned {
    |    RolesI public roles;
    |    bytes32 public contractHash;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(222)

[31mViolation[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    }
    |
  > |    function setOwner(address owner_) public onlyOwner {
    |        owner = owner_;
    |        LogSetOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(208)

[31mViolation[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    }
    |
  > |    function setRolesContract(address roles_) public onlyOwner {
    |        // it must not be possible to change the roles contract on the roles contract itself
    |        require(this != address(roles));
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(264)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |
    |contract Owned is OwnedEvents {
  > |    address public owner;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |
    |contract SecuredWithRoles is Owned {
  > |    RolesI public roles;
    |    bytes32 public contractHash;
    |    bool public stopped = false;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |contract SecuredWithRoles is Owned {
    |    RolesI public roles;
  > |    bytes32 public contractHash;
    |    bool public stopped = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    RolesI public roles;
    |    bytes32 public contractHash;
  > |    bool public stopped = false;
    |
    |    function SecuredWithRoles(string contractName_, address roles_) public {
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |
    |    // returns true if the role has been defined for the contract
  > |    function hasRole(string roleName) public view returns (bool) {
    |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(248)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    }
    |
  > |    function senderHasRole(string roleName) public view returns (bool) {
    |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(252)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    }
    |
  > |    function stop() public roleOrOwner("stopper") {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(256)

[33mWarning[0m for MissingInputValidation in contract 'SecuredWithRoles':
    |    }
    |
  > |    function restart() public roleOrOwner("restarter") {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(260)

[33mWarning[0m for UnhandledException in contract 'SecuredWithRoles':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(249)

[33mWarning[0m for UnhandledException in contract 'SecuredWithRoles':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'SecuredWithRoles':
    |
    |    function setOwner(address owner_) public onlyOwner {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'SecuredWithRoles':
    |        // it must not be possible to change the roles contract on the roles contract itself
    |        require(this != address(roles));
  > |        roles = RolesI(roles_);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(267)

[31mViolation[0m for LockedEther in contract 'SweetTokenLogic':
    |}
    |
  > |contract SweetTokenLogic is TokenLogic {
    |
    |    function SweetTokenLogic(
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(712)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(249)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(253)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |
    |    function replaceLogic(address newLogic) public onlyOwner {
  > |        token.setLogic(TokenLogicI(newLogic));
    |        data.setTokenLogic(newLogic);
    |        selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(488)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |    function replaceLogic(address newLogic) public onlyOwner {
    |        token.setLogic(TokenLogicI(newLogic));
  > |        data.setTokenLogic(newLogic);
    |        selfdestruct(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(489)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |
    |    function totalSupply() public view returns (uint256) {
  > |        return data.supply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(535)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |
    |    function balanceOf(address src) public view returns (uint256) {
  > |        return data.balances(src);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(539)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |
    |    function allowance(address src, address spender) public view returns (uint256) {
  > |        return data.approvals(src, spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(543)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |    function transfer(address src, address dst, uint256 wad) public tokenOnly canTransfer(src, dst)  returns (bool) {
    |        // balance check is not needed because sub(a, b) will throw if a<b
  > |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(548)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |        // balance check is not needed because sub(a, b) will throw if a<b
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
  > |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(549)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |    function transferFrom(address src, address dst, uint256 wad) public tokenOnly canTransfer(src, dst)  returns (bool) {
    |        // balance and approval check is not needed because sub(a, b) will throw if a<b
  > |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(556)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |        // balance and approval check is not needed because sub(a, b) will throw if a<b
    |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
  > |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(557)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
  > |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(558)

[33mWarning[0m for UnhandledException in contract 'SweetTokenLogic':
    |
    |    function approve(address src, address dst, uint256 wad) public tokenOnly returns (bool) {
  > |        data.setApprovals(src, dst, wad);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(564)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |
    |    function replaceLogic(address newLogic) public onlyOwner {
  > |        token.setLogic(TokenLogicI(newLogic));
    |        data.setTokenLogic(newLogic);
    |        selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(488)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |    function replaceLogic(address newLogic) public onlyOwner {
    |        token.setLogic(TokenLogicI(newLogic));
  > |        data.setTokenLogic(newLogic);
    |        selfdestruct(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(489)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |
    |    function totalSupply() public view returns (uint256) {
  > |        return data.supply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(535)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |
    |    function balanceOf(address src) public view returns (uint256) {
  > |        return data.balances(src);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(539)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |
    |    function allowance(address src, address spender) public view returns (uint256) {
  > |        return data.approvals(src, spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(543)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |    function transfer(address src, address dst, uint256 wad) public tokenOnly canTransfer(src, dst)  returns (bool) {
    |        // balance check is not needed because sub(a, b) will throw if a<b
  > |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(548)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |        // balance check is not needed because sub(a, b) will throw if a<b
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
  > |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(549)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |    function transferFrom(address src, address dst, uint256 wad) public tokenOnly canTransfer(src, dst)  returns (bool) {
    |        // balance and approval check is not needed because sub(a, b) will throw if a<b
  > |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(556)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |        // balance and approval check is not needed because sub(a, b) will throw if a<b
    |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
  > |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(557)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
  > |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(558)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SweetTokenLogic':
    |
    |    function approve(address src, address dst, uint256 wad) public tokenOnly returns (bool) {
  > |        data.setApprovals(src, dst, wad);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(564)

[33mWarning[0m for UnrestrictedWrite in contract 'SweetTokenLogic':
    |
    |    function stop() public roleOrOwner("stopper") {
  > |        stopped = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'SweetTokenLogic':
    |
    |    function restart() public roleOrOwner("restarter") {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'SweetTokenLogic':
    |
    |    function setOwner(address owner_) public onlyOwner {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'SweetTokenLogic':
    |        // it must not be possible to change the roles contract on the roles contract itself
    |        require(this != address(roles));
  > |        roles = RolesI(roles_);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'SweetTokenLogic':
    |
    |    function setFreeTransfer(bool isFree) public onlyOwner {
  > |        freeTransfer = isFree;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(527)

[33mWarning[0m for UnrestrictedWrite in contract 'SweetTokenLogic':
    |
    |    function setToken(address token_) public onlyOwner {
  > |        token = Token(token_);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(531)

[31mViolation[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token is TokenI, SecuredWithRoles, TokenEvents {
    |    string public symbol;
    |    string public name; // Optional token name
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(601)

[33mWarning[0m for UnhandledException in contract 'Token':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(249)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(253)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |    function totalSupply() public view returns (uint256) {
  > |        return logic.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(619)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |    function balanceOf( address who ) public view returns (uint256 value) {
  > |        return logic.balanceOf(who);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(623)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |    function allowance(address owner, address spender ) public view returns (uint256 _allowance) {
  > |        return logic.allowance(owner, spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(627)

[33mWarning[0m for UnhandledException in contract 'Token':
    |     */
    |    function transfer(address dst, uint256 wad) public stoppable returns (bool) {
  > |        bool retVal = logic.transfer(msg.sender, dst, wad);
    |        if (retVal) {
    |            uint codeLength;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(648)

[33mWarning[0m for UnhandledException in contract 'Token':
    |                ERC223ReceivingContract receiver = ERC223ReceivingContract(dst);
    |                bytes memory empty;
  > |                receiver.tokenFallback(msg.sender, wad, empty);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(658)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |    function transferFrom(address src, address dst, uint256 wad) public stoppable returns (bool) {
  > |        bool retVal = logic.transferFrom(src, dst, wad);
    |        if (retVal) {
    |            uint codeLength;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(667)

[33mWarning[0m for UnhandledException in contract 'Token':
    |                ERC223ReceivingContract receiver = ERC223ReceivingContract(dst);
    |                bytes memory empty;
  > |                receiver.tokenFallback(src, wad, empty);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(677)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |    function approve(address guy, uint256 wad) public stoppable returns (bool) {
  > |        bool ok = logic.approve(msg.sender, guy, wad);
    |        if (ok)
    |            Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(686)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |    function mintFor(address recipient, uint256 wad) public stoppable onlyRole("minter") {
  > |        logic.mintFor(recipient, wad);
    |        LogMint(recipient, wad);
    |        Transfer(address(0x0), recipient, wad);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(697)

[33mWarning[0m for UnhandledException in contract 'Token':
    |
    |    function burn(uint256 wad) public stoppable {
  > |        logic.burn(msg.sender, wad);
    |        LogBurn(msg.sender, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(703)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |    function totalSupply() public view returns (uint256) {
  > |        return logic.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(619)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |    function balanceOf( address who ) public view returns (uint256 value) {
  > |        return logic.balanceOf(who);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(623)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |    function allowance(address owner, address spender ) public view returns (uint256 _allowance) {
  > |        return logic.allowance(owner, spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(627)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |     */
    |    function transfer(address dst, uint256 wad) public stoppable returns (bool) {
  > |        bool retVal = logic.transfer(msg.sender, dst, wad);
    |        if (retVal) {
    |            uint codeLength;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(648)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |                ERC223ReceivingContract receiver = ERC223ReceivingContract(dst);
    |                bytes memory empty;
  > |                receiver.tokenFallback(msg.sender, wad, empty);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(658)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |    function transferFrom(address src, address dst, uint256 wad) public stoppable returns (bool) {
  > |        bool retVal = logic.transferFrom(src, dst, wad);
    |        if (retVal) {
    |            uint codeLength;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(667)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |                ERC223ReceivingContract receiver = ERC223ReceivingContract(dst);
    |                bytes memory empty;
  > |                receiver.tokenFallback(src, wad, empty);
    |            }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(677)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |    function approve(address guy, uint256 wad) public stoppable returns (bool) {
  > |        bool ok = logic.approve(msg.sender, guy, wad);
    |        if (ok)
    |            Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(686)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |    function mintFor(address recipient, uint256 wad) public stoppable onlyRole("minter") {
  > |        logic.mintFor(recipient, wad);
    |        LogMint(recipient, wad);
    |        Transfer(address(0x0), recipient, wad);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(697)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |
    |    function burn(uint256 wad) public stoppable {
  > |        logic.burn(msg.sender, wad);
    |        LogBurn(msg.sender, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(703)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function setOwner(address owner_) public onlyOwner {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function stop() public roleOrOwner("stopper") {
  > |        stopped = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function restart() public roleOrOwner("restarter") {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        // it must not be possible to change the roles contract on the roles contract itself
    |        require(this != address(roles));
  > |        roles = RolesI(roles_);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |}
    |
  > |contract Token is TokenI, SecuredWithRoles, TokenEvents {
    |    string public symbol;
    |    string public name; // Optional token name
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(601)

[33mWarning[0m for LockedEther in contract 'TokenData':
    |}
    |
  > |contract TokenData is Owned {
    |    uint256 public supply;
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(344)

[31mViolation[0m for MissingInputValidation in contract 'TokenData':
    |    }
    |
  > |    function setOwner(address owner_) public onlyOwner {
    |        owner = owner_;
    |        LogSetOwner(owner);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(208)

[31mViolation[0m for MissingInputValidation in contract 'TokenData':
    |contract TokenData is Owned {
    |    uint256 public supply;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public approvals;
    |    address logic;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(346)

[31mViolation[0m for MissingInputValidation in contract 'TokenData':
    |    uint256 public supply;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public approvals;
    |    address logic;
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(347)

[31mViolation[0m for MissingInputValidation in contract 'TokenData':
    |    }
    |
  > |    function setTokenLogic(address logic_) public onlyLogic {
    |        logic = logic_;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(361)

[31mViolation[0m for MissingInputValidation in contract 'TokenData':
    |    }
    |
  > |    function setSupply(uint256 supply_) public onlyLogic {
    |        supply = supply_;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(365)

[31mViolation[0m for MissingInputValidation in contract 'TokenData':
    |    }
    |
  > |    function setBalances(address guy, uint256 balance) public onlyLogic {
    |        balances[guy] = balance;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(369)

[31mViolation[0m for MissingInputValidation in contract 'TokenData':
    |    }
    |
  > |    function setApprovals(address src, address guy, uint256 wad) public onlyLogic {
    |        approvals[src][guy] = wad;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(373)

[33mWarning[0m for MissingInputValidation in contract 'TokenData':
    |
    |contract Owned is OwnedEvents {
  > |    address public owner;
    |
    |    function Owned() public {
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'TokenData':
    |
    |contract TokenData is Owned {
  > |    uint256 public supply;
    |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public approvals;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenData':
    |
    |    function setTokenLogic(address logic_) public onlyLogic {
  > |        logic = logic_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenData':
    |
    |    function setSupply(uint256 supply_) public onlyLogic {
  > |        supply = supply_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(366)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenData':
    |
    |    function setBalances(address guy, uint256 balance) public onlyLogic {
  > |        balances[guy] = balance;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenData':
    |
    |    function setApprovals(address src, address guy, uint256 wad) public onlyLogic {
  > |        approvals[src][guy] = wad;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(374)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenData':
    |
    |    function setOwner(address owner_) public onlyOwner {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(209)

[33mWarning[0m for LockedEther in contract 'TokenEvents':
    |}
    |
  > |contract TokenEvents {
    |    event LogBurn(address indexed src, uint256 wad);
    |    event LogMint(address indexed src, uint256 wad);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(579)

[31mViolation[0m for LockedEther in contract 'TokenLogic':
    |
    |
  > |contract TokenLogic is TokenLogicEvents, TokenLogicI, SecuredWithRoles {
    |
    |    TokenData public data;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(418)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(249)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(253)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |
    |    function replaceLogic(address newLogic) public onlyOwner {
  > |        token.setLogic(TokenLogicI(newLogic));
    |        data.setTokenLogic(newLogic);
    |        selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(488)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |    function replaceLogic(address newLogic) public onlyOwner {
    |        token.setLogic(TokenLogicI(newLogic));
  > |        data.setTokenLogic(newLogic);
    |        selfdestruct(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(489)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |
    |    function totalSupply() public view returns (uint256) {
  > |        return data.supply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(535)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |
    |    function balanceOf(address src) public view returns (uint256) {
  > |        return data.balances(src);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(539)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |
    |    function allowance(address src, address spender) public view returns (uint256) {
  > |        return data.approvals(src, spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(543)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |    function transfer(address src, address dst, uint256 wad) public tokenOnly canTransfer(src, dst)  returns (bool) {
    |        // balance check is not needed because sub(a, b) will throw if a<b
  > |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(548)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |        // balance check is not needed because sub(a, b) will throw if a<b
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
  > |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(549)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |    function transferFrom(address src, address dst, uint256 wad) public tokenOnly canTransfer(src, dst)  returns (bool) {
    |        // balance and approval check is not needed because sub(a, b) will throw if a<b
  > |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(556)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |        // balance and approval check is not needed because sub(a, b) will throw if a<b
    |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
  > |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(557)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
  > |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(558)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |
    |    function approve(address src, address dst, uint256 wad) public tokenOnly returns (bool) {
  > |        data.setApprovals(src, dst, wad);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(564)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |
    |    function mintFor(address dst, uint256 wad) public tokenOnly {
  > |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |        data.setSupply(Math.add(data.supply(), wad));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(569)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |    function mintFor(address dst, uint256 wad) public tokenOnly {
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
  > |        data.setSupply(Math.add(data.supply(), wad));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(570)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |
    |    function burn(address src, uint256 wad) public tokenOnly {
  > |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setSupply(Math.sub(data.supply(), wad));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(574)

[33mWarning[0m for UnhandledException in contract 'TokenLogic':
    |    function burn(address src, uint256 wad) public tokenOnly {
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
  > |        data.setSupply(Math.sub(data.supply(), wad));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(575)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |    // returns true if the role has been defined for the contract
    |    function hasRole(string roleName) public view returns (bool) {
  > |        return roles.knownRoleNames(contractHash, keccak256(roleName));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |
    |    function senderHasRole(string roleName) public view returns (bool) {
  > |        return hasRole(roleName) && roles.roleList(contractHash, keccak256(roleName), msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |
    |    function replaceLogic(address newLogic) public onlyOwner {
  > |        token.setLogic(TokenLogicI(newLogic));
    |        data.setTokenLogic(newLogic);
    |        selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(488)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |    function replaceLogic(address newLogic) public onlyOwner {
    |        token.setLogic(TokenLogicI(newLogic));
  > |        data.setTokenLogic(newLogic);
    |        selfdestruct(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(489)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |
    |    function totalSupply() public view returns (uint256) {
  > |        return data.supply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(535)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |
    |    function balanceOf(address src) public view returns (uint256) {
  > |        return data.balances(src);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(539)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |
    |    function allowance(address src, address spender) public view returns (uint256) {
  > |        return data.approvals(src, spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(543)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |    function transfer(address src, address dst, uint256 wad) public tokenOnly canTransfer(src, dst)  returns (bool) {
    |        // balance check is not needed because sub(a, b) will throw if a<b
  > |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(548)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |        // balance check is not needed because sub(a, b) will throw if a<b
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
  > |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(549)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |    function transferFrom(address src, address dst, uint256 wad) public tokenOnly canTransfer(src, dst)  returns (bool) {
    |        // balance and approval check is not needed because sub(a, b) will throw if a<b
  > |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(556)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |        // balance and approval check is not needed because sub(a, b) will throw if a<b
    |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
  > |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(557)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |        data.setApprovals(src, dst, Math.sub(data.approvals(src, dst), wad));
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
  > |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(558)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |
    |    function approve(address src, address dst, uint256 wad) public tokenOnly returns (bool) {
  > |        data.setApprovals(src, dst, wad);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(564)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |
    |    function mintFor(address dst, uint256 wad) public tokenOnly {
  > |        data.setBalances(dst, Math.add(data.balances(dst), wad));
    |        data.setSupply(Math.add(data.supply(), wad));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(569)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |    function mintFor(address dst, uint256 wad) public tokenOnly {
    |        data.setBalances(dst, Math.add(data.balances(dst), wad));
  > |        data.setSupply(Math.add(data.supply(), wad));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(570)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |
    |    function burn(address src, uint256 wad) public tokenOnly {
  > |        data.setBalances(src, Math.sub(data.balances(src), wad));
    |        data.setSupply(Math.sub(data.supply(), wad));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(574)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenLogic':
    |    function burn(address src, uint256 wad) public tokenOnly {
    |        data.setBalances(src, Math.sub(data.balances(src), wad));
  > |        data.setSupply(Math.sub(data.supply(), wad));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLogic':
    |
    |    function stop() public roleOrOwner("stopper") {
  > |        stopped = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLogic':
    |
    |    function restart() public roleOrOwner("restarter") {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLogic':
    |
    |    function setOwner(address owner_) public onlyOwner {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLogic':
    |        // it must not be possible to change the roles contract on the roles contract itself
    |        require(this != address(roles));
  > |        roles = RolesI(roles_);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLogic':
    |
    |    function setFreeTransfer(bool isFree) public onlyOwner {
  > |        freeTransfer = isFree;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(527)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenLogic':
    |
    |    function setToken(address token_) public onlyOwner {
  > |        token = Token(token_);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(531)

[33mWarning[0m for LockedEther in contract 'TokenLogicEvents':
    |
    |
  > |contract TokenLogicEvents {
    |    event WhiteListAddition(bytes32 listName);
    |    event AdditionToWhiteList(bytes32 listName, address guy);
  at /home/jiaming/mavs_srcs/contract@0x6cfc4e1f8058c0fa8b71d0463f300e5fa9ca38f1.sol(410)


