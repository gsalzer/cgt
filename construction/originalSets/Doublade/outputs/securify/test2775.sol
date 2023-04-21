Processing contract: /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol:DSGuard
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol:DSGuardEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol:DSGuardFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(69)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(61)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(52)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(26)

[33mWarning[0m for DAO in contract 'DSGuard':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(69)

[33mWarning[0m for LockedEther in contract 'DSGuard':
    |}
    |
  > |contract DSGuard is DSAuth, DSAuthority, DSGuardEvents {
    |    bytes32 constant public ANY = bytes32(uint(-1));
    |
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'DSGuard':
    |    mapping (bytes32 => mapping (bytes32 => mapping (bytes32 => bool))) acl;
    |
  > |    function canCall(
    |        address src_, address dst_, bytes4 sig
    |    ) public view returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'DSGuard':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSGuard':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSGuard':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DSGuard':
    |
    |contract DSGuard is DSAuth, DSAuthority, DSGuardEvents {
  > |    bytes32 constant public ANY = bytes32(uint(-1));
    |
    |    mapping (bytes32 => mapping (bytes32 => mapping (bytes32 => bool))) acl;
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(111)

[33mWarning[0m for UnhandledException in contract 'DSGuard':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSGuard':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSGuard':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSGuard':
    |
    |    function permit(bytes32 src, bytes32 dst, bytes32 sig) public auth {
  > |        acl[src][dst][sig] = true;
    |        LogPermit(src, dst, sig);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'DSGuard':
    |
    |    function forbid(bytes32 src, bytes32 dst, bytes32 sig) public auth {
  > |        acl[src][dst][sig] = false;
    |        LogForbid(src, dst, sig);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(137)

[33mWarning[0m for LockedEther in contract 'DSGuardEvents':
    |/* import "ds-auth/auth.sol"; */
    |
  > |contract DSGuardEvents {
    |    event LogPermit(
    |        bytes32 indexed src,
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(96)

[33mWarning[0m for LockedEther in contract 'DSGuardFactory':
    |}
    |
  > |contract DSGuardFactory {
    |    mapping (address => bool)  public  isGuard;
    |
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'DSGuardFactory':
    |
    |contract DSGuardFactory {
  > |    mapping (address => bool)  public  isGuard;
    |
    |    function newGuard() public returns (DSGuard guard) {
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'DSGuardFactory':
    |}
    |
  > |contract DSGuardFactory {
    |    mapping (address => bool)  public  isGuard;
    |
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'DSGuardFactory':
    |    mapping (address => bool)  public  isGuard;
    |
  > |    function newGuard() public returns (DSGuard guard) {
    |        guard = new DSGuard();
    |        guard.setOwner(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(153)

[33mWarning[0m for UnhandledException in contract 'DSGuardFactory':
    |    function newGuard() public returns (DSGuard guard) {
    |        guard = new DSGuard();
  > |        guard.setOwner(msg.sender);
    |        isGuard[guard] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSGuardFactory':
    |    function newGuard() public returns (DSGuard guard) {
    |        guard = new DSGuard();
  > |        guard.setOwner(msg.sender);
    |        isGuard[guard] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(155)

[31mViolation[0m for UnrestrictedWrite in contract 'DSGuardFactory':
    |        guard = new DSGuard();
    |        guard.setOwner(msg.sender);
  > |        isGuard[guard] = true;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xb5d0b4ba08a68819c8010cc44d343f737511c82e.sol(156)


