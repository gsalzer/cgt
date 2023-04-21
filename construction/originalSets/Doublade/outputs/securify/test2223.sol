Processing contract: /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol:DSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol:VideoPublisher
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
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(144)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(136)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(127)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(101)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |pragma solidity ^0.4.13;
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(14)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |pragma solidity ^0.4.13;
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(162)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(144)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |pragma solidity ^0.4.13;
    |
  > |contract DSStop is DSNote, DSAuth {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(200)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(211)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(209)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(212)

[33mWarning[0m for DAO in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(144)

[33mWarning[0m for LockedEther in contract 'DSToken':
    |pragma solidity ^0.4.13;
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    mapping (address => mapping (address => bool)) _trusted;
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(326)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(277)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(280)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(284)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    event Burn(address indexed guy, uint wad);
    |
  > |    function trusted(address src, address guy) public view returns (bool) {
    |        return _trusted[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(341)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _trusted[src][guy];
    |    }
  > |    function trust(address guy, bool wat) public stoppable {
    |        _trusted[msg.sender][guy] = wat;
    |        Trust(msg.sender, guy, wat);
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(344)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public stoppable returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(349)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return super.approve(guy, wad);
    |    }
  > |    function transferFrom(address src, address dst, uint wad)
    |        public
    |        stoppable
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(352)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function push(address dst, uint wad) public {
    |        transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(369)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        transferFrom(src, msg.sender, wad);
    |    }
  > |    function move(address src, address dst, uint wad) public {
    |        transferFrom(src, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(375)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(274)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(304)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    mapping (address => mapping (address => bool)) _trusted;
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(330)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
    |    function DSToken(bytes32 symbol_) public {
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(331)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    // Optional token name
  > |    bytes32   public  name = "";
    |
    |    function setName(bytes32 name_) public auth {
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(401)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(209)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(362)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(386)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(387)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(305)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function trust(address guy, bool wat) public stoppable {
  > |        _trusted[msg.sender][guy] = wat;
    |        Trust(msg.sender, guy, wat);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    {
    |        if (src != msg.sender && !_trusted[src][msg.sender]) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(362)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |pragma solidity ^0.4.13;
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(264)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(277)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(280)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(284)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(304)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(274)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    {
    |        if (src != msg.sender) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(296)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(305)

[33mWarning[0m for DAO in contract 'VideoPublisher':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(144)

[33mWarning[0m for DAO in contract 'VideoPublisher':
    |
    |    function withdraw(address addr) public auth {
  > |        viewToken.transfer(addr, viewToken.balanceOf(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(438)

[33mWarning[0m for LockedEther in contract 'VideoPublisher':
    |
    |// This contract allows people to use VIEW tokens to publish videos on Viewly.
  > |contract VideoPublisher is DSAuth, DSMath {
    |
    |    DSToken public viewToken;
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(411)

[31mViolation[0m for MissingInputValidation in contract 'VideoPublisher':
    |    DSToken public viewToken;
    |    uint public price;
  > |    mapping (bytes12 => bool) public videos;
    |    event Published(
    |        bytes12 videoID,
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(415)

[31mViolation[0m for MissingInputValidation in contract 'VideoPublisher':
    |    }
    |
  > |    function publish(bytes12 videoID) public {
    |        require(!videos[videoID]);
    |        require(viewToken.transferFrom(msg.sender, this, price));
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(426)

[33mWarning[0m for MissingInputValidation in contract 'VideoPublisher':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'VideoPublisher':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'VideoPublisher':
    |contract VideoPublisher is DSAuth, DSMath {
    |
  > |    DSToken public viewToken;
    |    uint public price;
    |    mapping (bytes12 => bool) public videos;
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(413)

[33mWarning[0m for MissingInputValidation in contract 'VideoPublisher':
    |
    |    DSToken public viewToken;
  > |    uint public price;
    |    mapping (bytes12 => bool) public videos;
    |    event Published(
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(414)

[33mWarning[0m for UnhandledException in contract 'VideoPublisher':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(144)

[33mWarning[0m for UnhandledException in contract 'VideoPublisher':
    |    function publish(bytes12 videoID) public {
    |        require(!videos[videoID]);
  > |        require(viewToken.transferFrom(msg.sender, this, price));
    |        videos[videoID] = true;
    |        Published(videoID, price);
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(428)

[33mWarning[0m for UnhandledException in contract 'VideoPublisher':
    |
    |    function withdraw(address addr) public auth {
  > |        viewToken.transfer(addr, viewToken.balanceOf(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(438)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VideoPublisher':
    |    function publish(bytes12 videoID) public {
    |        require(!videos[videoID]);
  > |        require(viewToken.transferFrom(msg.sender, this, price));
    |        videos[videoID] = true;
    |        Published(videoID, price);
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(428)

[31mViolation[0m for UnrestrictedWrite in contract 'VideoPublisher':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'VideoPublisher':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'VideoPublisher':
    |        require(!videos[videoID]);
    |        require(viewToken.transferFrom(msg.sender, this, price));
  > |        videos[videoID] = true;
    |        Published(videoID, price);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(429)

[31mViolation[0m for UnrestrictedWrite in contract 'VideoPublisher':
    |
    |    function setPrice(uint newPrice) public auth {
  > |        price = newPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9048a059c4bef8775ecf6e24197fd987b387edc1.sol(434)


