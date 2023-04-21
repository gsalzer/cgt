Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:DSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:HNA
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol:TokenController
[33mWarning[0m for LockedEther in contract 'Controlled':
    |
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(352)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(363)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    modifier onlyController { if (msg.sender != controller) throw; _; }
    |
  > |    address public controller;
    |
    |    constructor() public { controller = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(364)

[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(52)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(44)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(35)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(9)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |}
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(116)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |}
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(57)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(52)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |}
    |
  > |contract DSStop is DSNote, DSAuth {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(93)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(94)

[33mWarning[0m for DAO in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(52)

[33mWarning[0m for LockedEther in contract 'DSToken':
    |}
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    bytes32  public  symbol;
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(234)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(205)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    event Burn(address indexed guy, uint wad);
    |
  > |    function approve(address guy) public stoppable returns (bool) {
    |        return super.approve(guy, uint(-1));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(246)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public stoppable returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(250)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transferFrom(address src, address dst, uint wad)
    |        public
    |        stoppable
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(254)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function push(address dst, uint wad) public {
    |        transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(271)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        transferFrom(src, msg.sender, wad);
    |    }
  > |    function move(address src, address dst, uint wad) public {
    |        transferFrom(src, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(277)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSToken is DSTokenBase(0), DSStop {
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
    |    constructor(bytes32 symbol_) public {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    // Optional token name
  > |    bytes32   public  name = "";
    |
    |    function setName(bytes32 name_) public auth {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(303)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        emit Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(264)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        emit Mint(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(288)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        emit Mint(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(289)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    {
    |        if (src != msg.sender && _approvals[src][msg.sender] != uint(-1)) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(260)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(263)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(185)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(205)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    {
    |        if (src != msg.sender) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(226)

[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |}
    |
  > |contract ERC20Events {
    |    event Approval(address indexed src, address indexed guy, uint wad);
    |    event Transfer(address indexed src, address indexed dst, uint wad);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(99)

[33mWarning[0m for DAO in contract 'HNA':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(52)

[33mWarning[0m for DAO in contract 'HNA':
    |        if (success && isContract(_to)) {
    |            // Backward compatible ERC20
  > |            if(!_to.call(bytes4(keccak256("tokenFallback(address,uint256)")), _from, _amount)) {
    |                emit ReceivingContractTokenFallbackFailed(_from, _to, _amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(404)

[33mWarning[0m for DAO in contract 'HNA':
    |        if (isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(_from, _amount, _data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(424)

[33mWarning[0m for DAO in contract 'HNA':
    |        require (approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(473)

[33mWarning[0m for DAOConstantGas in contract 'HNA':
    |    function claimTokens(address _token) onlyController public {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(512)

[33mWarning[0m for LockedEther in contract 'HNA':
    |}
    |
  > |contract HNA is DSToken("HNA"), ERC223, Controlled {
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(382)

[31mViolation[0m for MissingInputValidation in contract 'HNA':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'HNA':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'HNA':
    |    event Burn(address indexed guy, uint wad);
    |
  > |    function approve(address guy) public stoppable returns (bool) {
    |        return super.approve(guy, uint(-1));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(246)

[31mViolation[0m for MissingInputValidation in contract 'HNA':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(363)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |contract DSToken is DSTokenBase(0), DSStop {
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
    |    constructor(bytes32 symbol_) public {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(237)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |    }
    |
  > |    function approve(address guy, uint wad) public stoppable returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(250)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |    }
    |
  > |    function transferFrom(address src, address dst, uint wad)
    |        public
    |        stoppable
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |        burn(msg.sender, wad);
    |    }
  > |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |        emit Mint(guy, wad);
    |    }
  > |    function burn(address guy, uint wad) public auth stoppable {
    |        if (guy != msg.sender && _approvals[guy][msg.sender] != uint(-1)) {
    |            _approvals[guy][msg.sender] = sub(_approvals[guy][msg.sender], wad);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(292)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |
    |    // Optional token name
  > |    bytes32   public  name = "";
    |
    |    function setName(bytes32 name_) public auth {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(303)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |    modifier onlyController { if (msg.sender != controller) throw; _; }
    |
  > |    address public controller;
    |
    |    constructor() public { controller = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(357)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |    }
    |
  > |    function isContract(address _addr) constant internal returns(bool) {
    |        uint256 size;
    |        if (_addr == 0) return false;
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(483)

[33mWarning[0m for MissingInputValidation in contract 'HNA':
    |    /// @notice Extracting the wrongly sent token back into the contract
    |    ///  set to 0 if want to get ether.
  > |    function claimTokens(address _token) onlyController public {
    |        if (_token == 0x0) {
    |            controller.transfer(this.balance);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(510)

[31mViolation[0m for TODAmount in contract 'HNA':
    |    function claimTokens(address _token) onlyController public {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(512)

[31mViolation[0m for TODReceiver in contract 'HNA':
    |    function claimTokens(address _token) onlyController public {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(512)

[33mWarning[0m for UnhandledException in contract 'HNA':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(52)

[33mWarning[0m for UnhandledException in contract 'HNA':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            require (TokenController(controller).onTransfer(_from, _to, _amount));
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(397)

[33mWarning[0m for UnhandledException in contract 'HNA':
    |        if (success && isContract(_to)) {
    |            // Backward compatible ERC20
  > |            if(!_to.call(bytes4(keccak256("tokenFallback(address,uint256)")), _from, _amount)) {
    |                emit ReceivingContractTokenFallbackFailed(_from, _to, _amount);
    |            }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(404)

[33mWarning[0m for UnhandledException in contract 'HNA':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            require (TokenController(controller).onTransfer(_from, _to, _amount));  
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(417)

[33mWarning[0m for UnhandledException in contract 'HNA':
    |        if (isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(_from, _amount, _data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(424)

[33mWarning[0m for UnhandledException in contract 'HNA':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            require (TokenController(controller).onApprove(msg.sender, _spender, _amount));
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(451)

[33mWarning[0m for UnhandledException in contract 'HNA':
    |        require (approve(_spender, _amount));
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(473)

[33mWarning[0m for UnhandledException in contract 'HNA':
    |    function claimTokens(address _token) onlyController public {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(512)

[33mWarning[0m for UnhandledException in contract 'HNA':
    |
    |        ERC20 token = ERC20(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(517)

[33mWarning[0m for UnhandledException in contract 'HNA':
    |        ERC20 token = ERC20(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        
    |        emit ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(518)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HNA':
    |    function claimTokens(address _token) onlyController public {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(512)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HNA':
    |
    |        ERC20 token = ERC20(_token);
  > |        uint256 balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(517)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HNA':
    |        ERC20 token = ERC20(_token);
    |        uint256 balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        
    |        emit ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(518)

[31mViolation[0m for UnrestrictedWrite in contract 'HNA':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'HNA':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'HNA':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'HNA':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'HNA':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'HNA':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'HNA':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(306)

[33mWarning[0m for UnrestrictedWrite in contract 'HNA':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'HNA':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0318d3f14cba8da2cb97881c7ee47d6e655626e6.sol(364)


