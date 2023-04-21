Processing contract: /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol:DSExec
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol:DSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(55)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(47)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |    auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |    auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(38)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(11)

[33mWarning[0m for LockedEther in contract 'DSExec':
    |
    |
  > |contract DSExec {
    |    function tryExec( address target, bytes calldata, uint value)
    |    internal
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(130)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(61)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(171)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(55)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |
    |
  > |contract DSStop is DSNote, DSAuth {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(208)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(206)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(209)

[33mWarning[0m for DAO in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(55)

[33mWarning[0m for LockedEther in contract 'DSToken':
    |
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    bytes32  public  symbol;
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(285)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(250)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(254)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    event Burn(address indexed guy, uint wad);
    |
  > |    function approve(address guy) public stoppable returns (bool) {
    |        return super.approve(guy, uint(-1));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(297)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public stoppable returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(301)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transferFrom(address src, address dst, uint wad)
    |        public
    |        stoppable
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(305)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function push(address dst, uint wad) public {
    |        transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(322)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        transferFrom(src, msg.sender, wad);
    |    }
  > |    function move(address src, address dst, uint wad) public {
    |        transferFrom(src, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(328)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(274)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSToken is DSTokenBase(0), DSStop {
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
    |    function DSToken(bytes32 symbol_) public {
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(288)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    // Optional token name
  > |    bytes32   public  name = "";
    |
    |    function setName(bytes32 name_) public auth {
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(354)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(30)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(206)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(209)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(275)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(339)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(340)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(275)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    {
    |        if (src != msg.sender && _approvals[src][msg.sender] != uint(-1)) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(315)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(234)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(250)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(254)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(274)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(244)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    {
    |        if (src != msg.sender) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(266)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(275)

[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |
    |
  > |contract ERC20Events {
    |    event Approval(address indexed src, address indexed guy, uint wad);
    |    event Transfer(address indexed src, address indexed dst, uint wad);
  at /home/jiaming/mavs_srcs/contract@0x775a86858b77cbe7950bb307525a6459d6b01411.sol(215)


