Processing contract: /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol:DSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol:GemPit
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
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(154)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(146)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(137)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(111)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |/* pragma solidity ^0.4.13; */
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(21)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |/* pragma solidity ^0.4.13; */
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(177)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(154)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |/* import "ds-note/note.sol"; */
    |
  > |contract DSStop is DSNote, DSAuth {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(225)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(236)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(237)

[33mWarning[0m for DAO in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(154)

[33mWarning[0m for LockedEther in contract 'DSToken':
    |/* import "./base.sol"; */
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    bytes32  public  symbol;
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(366)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(306)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(309)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    event Burn(address indexed guy, uint wad);
    |
  > |    function approve(address guy) public stoppable returns (bool) {
    |        return super.approve(guy, uint(-1));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(378)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public stoppable returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(382)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(233)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(236)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(303)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(333)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSToken is DSTokenBase(0), DSStop {
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(368)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
    |    function DSToken(bytes32 symbol_) public {
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(369)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    // Optional token name
  > |    bytes32   public  name = "";
    |
    |    function setName(bytes32 name_) public auth {
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(435)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(234)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(334)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(395)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(420)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(421)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(438)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    {
    |        if (src != msg.sender && _approvals[src][msg.sender] != uint(-1)) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(392)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |/* import "ds-math/math.sol"; */
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(293)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(306)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(309)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(313)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(333)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(303)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    {
    |        if (src != msg.sender) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(334)

[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |/* pragma solidity ^0.4.8; */
    |
  > |contract ERC20Events {
    |    event Approval(address indexed src, address indexed guy, uint wad);
    |    event Transfer(address indexed src, address indexed dst, uint wad);
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(253)

[33mWarning[0m for LockedEther in contract 'GemPit':
    |}
    |
  > |contract GemPit {
    |    function burn(DSToken gem) public {
    |        gem.burn(gem.balanceOf(this));
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(442)

[33mWarning[0m for MissingInputValidation in contract 'GemPit':
    |
    |contract GemPit {
  > |    function burn(DSToken gem) public {
    |        gem.burn(gem.balanceOf(this));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(443)

[33mWarning[0m for UnhandledException in contract 'GemPit':
    |contract GemPit {
    |    function burn(DSToken gem) public {
  > |        gem.burn(gem.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(444)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GemPit':
    |contract GemPit {
    |    function burn(DSToken gem) public {
  > |        gem.burn(gem.balanceOf(this));
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x69076e44a9c70a67d5b79d95795aba299083c275.sol(444)


