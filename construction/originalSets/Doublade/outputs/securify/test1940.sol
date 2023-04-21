Processing contract: /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol:DSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol:ERC20
[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(78)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(82)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(78)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(32)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |}
    |
  > |contract DSMath {
    |    
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(104)

[33mWarning[0m for LockedEther in contract 'DSNote':
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(1)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(78)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |}
    |
  > |contract DSStop is DSAuth, DSNote {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSAuth, DSNote {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(98)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(78)

[33mWarning[0m for DAO in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(78)

[33mWarning[0m for LockedEther in contract 'DSToken':
    |}
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    bytes32  public  symbol;
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(331)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) constant returns (uint256) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(290)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) constant returns (uint256) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(293)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return super.transfer(dst, wad);
    |    }
  > |    function transferFrom(
    |        address src, address dst, uint wad
    |    ) stoppable note returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(343)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return super.transferFrom(src, dst, wad);
    |    }
  > |    function approve(address guy, uint wad) stoppable note returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(348)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return transfer(dst, wad);
    |    }
  > |    function pull(address src, uint128 wad) returns (bool) {
    |        return transferFrom(src, msg.sender, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(355)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSStop is DSAuth, DSNote {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        _;
    |    }
  > |    function stop() auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        stopped = true;
    |    }
  > |    function start() auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |     */
    |
  > |    function add(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function sub(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |    
  > |    function totalSupply() constant returns (uint256) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |    
  > |    function transfer(address dst, uint wad) returns (bool) {
    |        assert(_balances[msg.sender] >= wad);
    |        
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(297)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |    
  > |    function transferFrom(address src, address dst, uint wad) returns (bool) {
    |        assert(_balances[src] >= wad);
    |        assert(_approvals[src][msg.sender] >= wad);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(308)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |    
  > |    function approve(address guy, uint256 wad) returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |        
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSToken is DSTokenBase(0), DSStop {
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 2; // standard token precision. override to customize
    |
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(333)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 2; // standard token precision. override to customize
    |
    |    function DSToken(bytes32 symbol_) {
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(334)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    // Optional token name
    |
  > |    bytes32   public  name = "Crypto Coin VX";
    |    
    |    function setName(bytes32 name_) auth {
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(370)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        assert(_balances[msg.sender] >= wad);
    |        
  > |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |        
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(300)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        
    |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |        
    |        Transfer(msg.sender, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        assert(_approvals[src][msg.sender] >= wad);
    |        
  > |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |        
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |        
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(314)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    
    |    function approve(address guy, uint256 wad) returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |        
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(322)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function mint(uint128 wad) auth stoppable note {
  > |        _balances[msg.sender] = add(_balances[msg.sender], wad);
    |        _supply = add(_supply, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(360)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(uint128 wad) auth stoppable note {
    |        _balances[msg.sender] = add(_balances[msg.sender], wad);
  > |        _supply = add(_supply, wad);
    |    }
    |    function burn(uint128 wad) auth stoppable note {
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(361)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function burn(uint128 wad) auth stoppable note {
  > |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
    |        _supply = sub(_supply, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(364)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function burn(uint128 wad) auth stoppable note {
    |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
  > |        _supply = sub(_supply, wad);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(365)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    
    |    function approve(address guy, uint256 wad) returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |        
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(322)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |}
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(277)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) constant returns (uint256) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(290)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) constant returns (uint256) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(293)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |    
  > |    function transferFrom(address src, address dst, uint wad) returns (bool) {
    |        assert(_balances[src] >= wad);
    |        assert(_approvals[src][msg.sender] >= wad);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(308)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |    
  > |    function approve(address guy, uint256 wad) returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |        
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |     */
    |
  > |    function add(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function sub(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |    
  > |    function totalSupply() constant returns (uint256) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(287)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        assert(_balances[msg.sender] >= wad);
    |        
  > |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |        
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(300)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        
    |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |        
    |        Transfer(msg.sender, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(301)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        assert(_approvals[src][msg.sender] >= wad);
    |        
  > |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(312)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |        
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(313)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |        
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    
    |    function approve(address guy, uint256 wad) returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |        
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x7d116f0d7e566017daabbc7a9d7a669e0376b6a8.sol(322)


