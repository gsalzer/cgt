Processing contract: /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol:Deed
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol:DomainSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol:ENSReverseRegister
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol:Permissioned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol:Registrar
Processing contract: /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol:Registry
Processing contract: /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol:RegistryRef
Processing contract: /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol:ReverseRegistrarRef
Processing contract: /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Deed':
    |pragma solidity ^0.4.2;
  > |contract Deed {
    |    address public owner;
    |    address public previousOwner;
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(2)

[33mWarning[0m for MissingInputValidation in contract 'Deed':
    |pragma solidity ^0.4.2;
    |contract Deed {
  > |    address public owner;
    |    address public previousOwner;
    |}
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Deed':
    |contract Deed {
    |    address public owner;
  > |    address public previousOwner;
    |}
    |contract Registry {
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(4)

[33mWarning[0m for DAOConstantGas in contract 'DomainSale':
    |        if (amount > 0) {
    |            balances[msg.sender] = 0;
  > |            msg.sender.transfer(amount);
    |            Withdraw(msg.sender, amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(238)

[33mWarning[0m for LockedEther in contract 'DomainSale':
    |    }
    |}
  > |contract DomainSale is ENSReverseRegister, Pausable {
    |    using SafeMath for uint256;
    |    Registrar public registrar;
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(90)

[33mWarning[0m for TODReceiver in contract 'DomainSale':
    |        if (amount > 0) {
    |            balances[msg.sender] = 0;
  > |            msg.sender.transfer(amount);
    |            Withdraw(msg.sender, amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(238)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |    modifier onlyNameSeller(string _name) {
    |        Deed deed;
  > |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        require(deed.owner() == address(this));
    |        require(deed.previousOwner() == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(121)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |        Deed deed;
    |        (,deed,,,) = registrar.entries(keccak256(_name));
  > |        require(deed.owner() == address(this));
    |        require(deed.previousOwner() == msg.sender);
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(122)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        require(deed.owner() == address(this));
  > |        require(deed.previousOwner() == msg.sender);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(123)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |    modifier deedValid(string _name) {
    |        address deed;
  > |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        require(deed != 0);
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(128)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |    function cancel(string _name) onlyNameSeller(_name) auctionNotStarted(_name) deedValid(_name) ifNotPaused public {
    |        delete sales[_name];
  > |        registrar.transfer(keccak256(_name), msg.sender);
    |        Cancel(_name);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(190)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |        require(s.auctionStarted == 0);
    |        Deed deed;
  > |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        address previousOwner = deed.previousOwner();
    |        registrar.transfer(keccak256(_name), msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(198)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |        Deed deed;
    |        (,deed,,,) = registrar.entries(keccak256(_name));
  > |        address previousOwner = deed.previousOwner();
    |        registrar.transfer(keccak256(_name), msg.sender);
    |        Transfer(previousOwner, msg.sender, _name, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(199)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        address previousOwner = deed.previousOwner();
  > |        registrar.transfer(keccak256(_name), msg.sender);
    |        Transfer(previousOwner, msg.sender, _name, msg.value);
    |        distributeFunds(msg.value, previousOwner, s.startReferrer, bidReferrer);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(200)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |        require(now > s.auctionEnds);
    |        Deed deed;
  > |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        address previousOwner = deed.previousOwner();
    |        registrar.transfer(keccak256(_name), s.lastBidder);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(226)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |        Deed deed;
    |        (,deed,,,) = registrar.entries(keccak256(_name));
  > |        address previousOwner = deed.previousOwner();
    |        registrar.transfer(keccak256(_name), s.lastBidder);
    |        Transfer(previousOwner, s.lastBidder, _name, s.lastBid);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(227)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        address previousOwner = deed.previousOwner();
  > |        registrar.transfer(keccak256(_name), s.lastBidder);
    |        Transfer(previousOwner, s.lastBidder, _name, s.lastBid);
    |        distributeFunds(s.lastBid, previousOwner, s.startReferrer, s.bidReferrer);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(228)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |        if (amount > 0) {
    |            balances[msg.sender] = 0;
  > |            msg.sender.transfer(amount);
    |            Withdraw(msg.sender, amount);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(238)

[33mWarning[0m for UnhandledException in contract 'DomainSale':
    |    function invalidate(string _name) ifNotPaused public {
    |        address deed;
  > |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        require(deed == 0);
    |        Sale storage s = sales[_name];
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(244)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |    modifier onlyNameSeller(string _name) {
    |        Deed deed;
  > |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        require(deed.owner() == address(this));
    |        require(deed.previousOwner() == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(121)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |        Deed deed;
    |        (,deed,,,) = registrar.entries(keccak256(_name));
  > |        require(deed.owner() == address(this));
    |        require(deed.previousOwner() == msg.sender);
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(122)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        require(deed.owner() == address(this));
  > |        require(deed.previousOwner() == msg.sender);
    |        _;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(123)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |    modifier deedValid(string _name) {
    |        address deed;
  > |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        require(deed != 0);
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(128)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |    function cancel(string _name) onlyNameSeller(_name) auctionNotStarted(_name) deedValid(_name) ifNotPaused public {
    |        delete sales[_name];
  > |        registrar.transfer(keccak256(_name), msg.sender);
    |        Cancel(_name);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(190)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |        require(s.auctionStarted == 0);
    |        Deed deed;
  > |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        address previousOwner = deed.previousOwner();
    |        registrar.transfer(keccak256(_name), msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(198)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |        Deed deed;
    |        (,deed,,,) = registrar.entries(keccak256(_name));
  > |        address previousOwner = deed.previousOwner();
    |        registrar.transfer(keccak256(_name), msg.sender);
    |        Transfer(previousOwner, msg.sender, _name, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(199)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        address previousOwner = deed.previousOwner();
  > |        registrar.transfer(keccak256(_name), msg.sender);
    |        Transfer(previousOwner, msg.sender, _name, msg.value);
    |        distributeFunds(msg.value, previousOwner, s.startReferrer, bidReferrer);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(200)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |        require(now > s.auctionEnds);
    |        Deed deed;
  > |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        address previousOwner = deed.previousOwner();
    |        registrar.transfer(keccak256(_name), s.lastBidder);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(226)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |        Deed deed;
    |        (,deed,,,) = registrar.entries(keccak256(_name));
  > |        address previousOwner = deed.previousOwner();
    |        registrar.transfer(keccak256(_name), s.lastBidder);
    |        Transfer(previousOwner, s.lastBidder, _name, s.lastBid);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        address previousOwner = deed.previousOwner();
  > |        registrar.transfer(keccak256(_name), s.lastBidder);
    |        Transfer(previousOwner, s.lastBidder, _name, s.lastBid);
    |        distributeFunds(s.lastBid, previousOwner, s.startReferrer, s.bidReferrer);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DomainSale':
    |    function invalidate(string _name) ifNotPaused public {
    |        address deed;
  > |        (,deed,,,) = registrar.entries(keccak256(_name));
    |        require(deed == 0);
    |        Sale storage s = sales[_name];
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'DomainSale':
    |        uint256 amount = balances[msg.sender];
    |        if (amount > 0) {
  > |            balances[msg.sender] = 0;
    |            msg.sender.transfer(amount);
    |            Withdraw(msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(237)

[33mWarning[0m for LockedEther in contract 'ENSReverseRegister':
    |    function setName(string name) public returns (bytes32 node);
    |}
  > |contract ENSReverseRegister {
    |    function ENSReverseRegister(address registry, string name) public {
    |        if (registry != 0) {
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(36)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |    }
    |}
  > |contract Pausable is Permissioned {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'Pausable':
    |        _;
    |    }
  > |    function isPermitted(address addr, bytes32 permission) public constant returns (bool) {
    |        return(permissions[addr][permission] || permissions[addr][PERM_SUPERUSER]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'Pausable':
    |        return(permissions[addr][permission] || permissions[addr][PERM_SUPERUSER]);
    |    }
  > |    function setPermission(address addr, bytes32 permission, bool allowed) public ifPermitted(msg.sender, PERM_SUPERUSER) {
    |        permissions[addr][permission] = allowed;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Pause();
    |    event Unpause();
  > |    bool public paused = false;
    |    bytes32 internal constant PERM_PAUSE = keccak256("_pausable");
    |    modifier ifNotPaused() {
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |        _;
    |    }
  > |    function pause() public ifPermitted(msg.sender, PERM_PAUSE) ifNotPaused returns (bool) {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |        return true;
    |    }
  > |    function unpause() public ifPermitted(msg.sender, PERM_PAUSE) ifPaused returns (bool) {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(64)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    }
    |    function setPermission(address addr, bytes32 permission, bool allowed) public ifPermitted(msg.sender, PERM_SUPERUSER) {
  > |        permissions[addr][permission] = allowed;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    }
    |    function pause() public ifPermitted(msg.sender, PERM_PAUSE) ifNotPaused returns (bool) {
  > |        paused = true;
    |        Pause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'Pausable':
    |    }
    |    function unpause() public ifPermitted(msg.sender, PERM_PAUSE) ifPaused returns (bool) {
  > |        paused = false;
    |        Unpause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(65)

[33mWarning[0m for LockedEther in contract 'Permissioned':
    |    function entries(bytes32 _hash) public constant returns (uint, Deed, uint, uint, uint);
    |}
  > |contract Permissioned {
    |    mapping(address=>mapping(bytes32=>bool)) internal permissions;
    |    bytes32 internal constant PERM_SUPERUSER = keccak256("_superuser");
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Permissioned':
    |        _;
    |    }
  > |    function isPermitted(address addr, bytes32 permission) public constant returns (bool) {
    |        return(permissions[addr][permission] || permissions[addr][PERM_SUPERUSER]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'Permissioned':
    |        return(permissions[addr][permission] || permissions[addr][PERM_SUPERUSER]);
    |    }
  > |    function setPermission(address addr, bytes32 permission, bool allowed) public ifPermitted(msg.sender, PERM_SUPERUSER) {
    |        permissions[addr][permission] = allowed;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(26)

[31mViolation[0m for UnrestrictedWrite in contract 'Permissioned':
    |    }
    |    function setPermission(address addr, bytes32 permission, bool allowed) public ifPermitted(msg.sender, PERM_SUPERUSER) {
  > |        permissions[addr][permission] = allowed;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(27)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |    }
    |}
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xc67247454e720328714c4e17bec7640572657bee.sol(70)


