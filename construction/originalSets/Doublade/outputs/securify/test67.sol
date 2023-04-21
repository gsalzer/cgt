Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:ApproveAndCallFallBack
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:Controlled
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:DSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:OMT
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol:TokenController
[33mWarning[0m for LockedEther in contract 'Controlled':
    |}
    |
  > |contract Controlled {
    |    /// @notice The address of the controller is the only address that can call
    |    ///  a function with this modifier
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(352)

[31mViolation[0m for MissingInputValidation in contract 'Controlled':
    |    /// @notice Changes the controller of the contract
    |    /// @param _newController The new controller of the contract
  > |    function changeController(address _newController) onlyController {
    |        controller = _newController;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(363)

[33mWarning[0m for MissingInputValidation in contract 'Controlled':
    |    modifier onlyController { if (msg.sender != controller) throw; _; }
    |
  > |    address public controller;
    |
    |    function Controlled() { controller = msg.sender;}
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'Controlled':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(364)

[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(52)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(44)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(35)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(9)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |}
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(112)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |}
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(57)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(52)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |}
    |
  > |contract DSStop is DSNote, DSAuth {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(93)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(94)

[33mWarning[0m for DAO in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(52)

[33mWarning[0m for LockedEther in contract 'DSToken':
    |}
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    mapping (address => mapping (address => bool)) _trusted;
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(229)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(193)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(200)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    event Burn(address indexed guy, uint wad);
    |
  > |    function trusted(address src, address guy) public view returns (bool) {
    |        return _trusted[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(244)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _trusted[src][guy];
    |    }
  > |    function trust(address guy, bool wat) public stoppable {
    |        _trusted[msg.sender][guy] = wat;
    |        Trust(msg.sender, guy, wat);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(247)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public stoppable returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(252)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return super.approve(guy, wad);
    |    }
  > |    function transferFrom(address src, address dst, uint wad)
    |        public
    |        stoppable
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(255)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function push(address dst, uint wad) public {
    |        transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(272)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        transferFrom(src, msg.sender, wad);
    |    }
  > |    function move(address src, address dst, uint wad) public {
    |        transferFrom(src, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(278)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(220)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    mapping (address => mapping (address => bool)) _trusted;
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
    |    function DSToken(bytes32 symbol_) public {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(234)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    // Optional token name
  > |    bytes32   public  name = "";
    |
    |    function setName(bytes32 name_) public auth {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(304)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(221)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(265)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(289)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(290)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function trust(address guy, bool wat) public stoppable {
  > |        _trusted[msg.sender][guy] = wat;
    |        Trust(msg.sender, guy, wat);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    {
    |        if (src != msg.sender && !_trusted[src][msg.sender]) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(265)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |}
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(180)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(193)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(200)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(220)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(190)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    {
    |        if (src != msg.sender) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(221)

[33mWarning[0m for DAO in contract 'OMT':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(578)

[33mWarning[0m for DAOConstantGas in contract 'OMT':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(595)

[33mWarning[0m for LockedEther in contract 'OMT':
    |}
    |
  > |contract OMT is DSToken("OMT"), ERC223, Controlled {
    |
    |    function OMT() {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(386)

[31mViolation[0m for TODAmount in contract 'OMT':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(595)

[31mViolation[0m for TODReceiver in contract 'OMT':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(578)

[31mViolation[0m for TODReceiver in contract 'OMT':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(595)

[31mViolation[0m for UnhandledException in contract 'OMT':
    |        if (isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.call.value(0)(bytes4(keccak256(_custom_fallback)), _from, _amount, _data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(490)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(52)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(402)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |        {
    |            // ERC20 backward compatiability
  > |            if(!_to.call(bytes4(keccak256("tokenFallback(address,uint256)")), _from, _amount)) {
    |                // do nothing when error in call in case that the _to contract is not inherited from ERC223ReceivingContract
    |                // revert();
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(411)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(433)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |        if (isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(_from, _amount, _data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(441)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(482)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onApprove(msg.sender, _spender, _amount))
    |                throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(522)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |        if (!approve(_spender, _amount)) throw;
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(551)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(578)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(595)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |
    |        ERC20 token = ERC20(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(600)

[33mWarning[0m for UnhandledException in contract 'OMT':
    |        ERC20 token = ERC20(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(601)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(52)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(402)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |        {
    |            // ERC20 backward compatiability
  > |            if(!_to.call(bytes4(keccak256("tokenFallback(address,uint256)")), _from, _amount)) {
    |                // do nothing when error in call in case that the _to contract is not inherited from ERC223ReceivingContract
    |                // revert();
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(411)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |        if (isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(_from, _amount, _data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(441)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |        // Alerts the token controller of the transfer
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onTransfer(_from, _to, _amount))
    |               throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(482)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |        if (isContract(_to)) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.call.value(0)(bytes4(keccak256(_custom_fallback)), _from, _amount, _data);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(490)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |        // Alerts the token controller of the approve function call
    |        if (isContract(controller)) {
  > |            if (!TokenController(controller).onApprove(msg.sender, _spender, _amount))
    |                throw;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(522)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |        if (!approve(_spender, _amount)) throw;
    |
  > |        ApproveAndCallFallBack(_spender).receiveApproval(
    |            msg.sender,
    |            _amount,
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(551)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |    function ()  payable {
    |        if (isContract(controller)) {
  > |            if (! TokenController(controller).proxyPayment.value(msg.value)(msg.sender))
    |                throw;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(578)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |    function claimTokens(address _token) onlyController {
    |        if (_token == 0x0) {
  > |            controller.transfer(this.balance);
    |            return;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(595)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |
    |        ERC20 token = ERC20(_token);
  > |        uint balance = token.balanceOf(this);
    |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(600)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OMT':
    |        ERC20 token = ERC20(_token);
    |        uint balance = token.balanceOf(this);
  > |        token.transfer(controller, balance);
    |        ClaimedTokens(_token, controller, balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(601)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |    }
    |    function trust(address guy, bool wat) public stoppable {
  > |        _trusted[msg.sender][guy] = wat;
    |        Trust(msg.sender, guy, wat);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |    {
    |        if (src != msg.sender && !_trusted[src][msg.sender]) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(261)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(289)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(290)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |    function burn(address guy, uint wad) public auth stoppable {
    |        if (guy != msg.sender && !_trusted[guy][msg.sender]) {
  > |            _approvals[guy][msg.sender] = sub(_approvals[guy][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(295)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |        }
    |
  > |        _balances[guy] = sub(_balances[guy], wad);
    |        _supply = sub(_supply, wad);
    |        Burn(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(298)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |
    |        _balances[guy] = sub(_balances[guy], wad);
  > |        _supply = sub(_supply, wad);
    |        Burn(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(299)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(307)

[33mWarning[0m for UnrestrictedWrite in contract 'OMT':
    |    /// @param _newController The new controller of the contract
    |    function changeController(address _newController) onlyController {
  > |        controller = _newController;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x047187e53477be70dbe8ea5b799318f2e165052f.sol(364)


