Processing contract: /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol:DSExec
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol:DSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol:PassTokenReborn
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
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(95)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(99)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(95)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(54)

[33mWarning[0m for LockedEther in contract 'DSExec':
    |//import "ds-exec/exec.sol";
    |
  > |contract DSExec {
    |    function tryExec( address target, bytes calldata, uint value)
    |    internal
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(7)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |
    |//import "ds-math/math.sol";
  > |contract DSMath {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(132)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |
    |//import "ds-note/note.sol";
  > |contract DSNote {
    |    event LogNote(
    |    bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(105)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(95)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |
    |//import "ds-stop/stop.sol";
  > |contract DSStop is DSAuth, DSNote {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(367)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSAuth, DSNote {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(369)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(375)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(378)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(95)

[33mWarning[0m for DAO in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(95)

[33mWarning[0m for LockedEther in contract 'DSToken':
    |
    |//import "ds-token/token.sol";
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    bytes32  public  symbol;
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(386)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) constant returns (uint256) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(324)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) constant returns (uint256) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(327)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return super.transfer(dst, wad);
    |    }
  > |    function transferFrom(
    |    address src, address dst, uint wad
    |    ) stoppable note returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(405)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return super.transferFrom(src, dst, wad);
    |    }
  > |    function approve(address guy, uint wad) stoppable note returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(410)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return transfer(dst, wad);
    |    }
  > |    function pull(address src, uint128 wad) returns (bool) {
    |        return transferFrom(src, msg.sender, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(417)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |     */
    |
  > |    function add(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function sub(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function totalSupply() constant returns (uint256) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transfer(address dst, uint wad) returns (bool) {
    |        assert(_balances[msg.sender] >= wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(331)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transferFrom(address src, address dst, uint wad) returns (bool) {
    |        assert(_balances[src] >= wad);
    |        assert(_approvals[src][msg.sender] >= wad);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(342)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint256 wad) returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(355)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSStop is DSAuth, DSNote {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(369)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        _;
    |    }
  > |    function stop() auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(375)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        stopped = true;
    |    }
  > |    function start() auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(378)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSToken is DSTokenBase(0), DSStop {
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
    |    address  public  generator;
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(388)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 18; // standard token precision. override to customize
    |    address  public  generator;
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(389)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
  > |    address  public  generator;
    |
    |    modifier onlyGenerator {
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(390)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    // Optional token name
    |
  > |    bytes32   public  name = "";
    |
    |    function setName(bytes32 name_) auth {
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(437)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(95)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        assert(_balances[msg.sender] >= wad);
    |
  > |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(334)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(msg.sender, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(335)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        assert(_approvals[src][msg.sender] >= wad);
    |
  > |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(346)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(347)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(348)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint256 wad) returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(356)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function mint(uint128 wad) auth stoppable note {
  > |        _balances[msg.sender] = add(_balances[msg.sender], wad);
    |        _supply = add(_supply, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(422)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(uint128 wad) auth stoppable note {
    |        _balances[msg.sender] = add(_balances[msg.sender], wad);
  > |        _supply = add(_supply, wad);
    |    }
    |    function burn(uint128 wad) auth stoppable note {
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(423)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function burn(uint128 wad) auth stoppable note {
  > |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
    |        _supply = sub(_supply, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(426)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function burn(uint128 wad) auth stoppable note {
    |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
  > |        _supply = sub(_supply, wad);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(427)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint256 wad) returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(356)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |
    |//import "ds-token/base.sol";
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(311)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) constant returns (uint256) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(324)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) constant returns (uint256) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(327)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function transferFrom(address src, address dst, uint wad) returns (bool) {
    |        assert(_balances[src] >= wad);
    |        assert(_approvals[src][msg.sender] >= wad);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(342)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function approve(address guy, uint256 wad) returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(355)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |     */
    |
  > |    function add(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function sub(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function totalSupply() constant returns (uint256) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(321)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        assert(_balances[msg.sender] >= wad);
    |
  > |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(334)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(msg.sender, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(335)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        assert(_approvals[src][msg.sender] >= wad);
    |
  > |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(346)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(347)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint256 wad) returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(356)

[33mWarning[0m for LockedEther in contract 'PassTokenReborn':
    |}
    |
  > |contract PassTokenReborn {
    |
    |    DSToken public pass;
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(445)

[33mWarning[0m for MissingInputValidation in contract 'PassTokenReborn':
    |contract PassTokenReborn {
    |
  > |    DSToken public pass;
    |
    |    uint128 public constant TOTAL_SUPPLY = 10 ** 11 * 1 ether;  // 100 billion KEY in total
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(447)

[33mWarning[0m for MissingInputValidation in contract 'PassTokenReborn':
    |    DSToken public pass;
    |
  > |    uint128 public constant TOTAL_SUPPLY = 10 ** 11 * 1 ether;  // 100 billion KEY in total
    |
    |    address public passFoundation; //multisig account , 4-of-6
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(449)

[33mWarning[0m for MissingInputValidation in contract 'PassTokenReborn':
    |    uint128 public constant TOTAL_SUPPLY = 10 ** 11 * 1 ether;  // 100 billion KEY in total
    |
  > |    address public passFoundation; //multisig account , 4-of-6
    |
    |    function PassTokenReborn(address _passFoundation) {
  at /home/jiaming/mavs_srcs/contract@0x6966d08f508451acee2b4036be01c5f370f30c04.sol(451)


