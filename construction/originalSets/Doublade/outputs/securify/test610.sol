Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol:BitspawnToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'BitspawnToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(59)

[33mWarning[0m for LockedEther in contract 'BitspawnToken':
    |
    |
  > |contract BitspawnToken is DSTokenBase , DSStop {
    |
    |    string  public  symbol="SPWN";
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(328)

[31mViolation[0m for MissingInputValidation in contract 'BitspawnToken':
    |  */
    |
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(173)

[31mViolation[0m for MissingInputValidation in contract 'BitspawnToken':
    |   * @param guy address The address which will spend the funds.
    |   */
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(182)

[31mViolation[0m for MissingInputValidation in contract 'BitspawnToken':
    |   */
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'BitspawnToken':
    |  }
    |
  > |    function approve(address guy) public stoppable returns (bool) {
    |        return super.approve(guy, uint(-1));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(369)

[31mViolation[0m for MissingInputValidation in contract 'BitspawnToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public stoppable returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(373)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |  * @dev Total number of tokens in existence
    |  */
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |   */
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(312)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |contract BitspawnToken is DSTokenBase , DSStop {
    |
  > |    string  public  symbol="SPWN";
    |    string  public  name="Bitspawn";
    |    uint256  public  decimals = 18; // Standard Token Precision
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(330)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |
    |    string  public  symbol="SPWN";
  > |    string  public  name="Bitspawn";
    |    uint256  public  decimals = 18; // Standard Token Precision
    |    uint256 public constant DECIMALFACTOR = 10**uint256(18);
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(331)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |    string  public  symbol="SPWN";
    |    string  public  name="Bitspawn";
  > |    uint256  public  decimals = 18; // Standard Token Precision
    |    uint256 public constant DECIMALFACTOR = 10**uint256(18);
    |    uint256 public initialSupply=2000000000*DECIMALFACTOR;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(332)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |    string  public  name="Bitspawn";
    |    uint256  public  decimals = 18; // Standard Token Precision
  > |    uint256 public constant DECIMALFACTOR = 10**uint256(18);
    |    uint256 public initialSupply=2000000000*DECIMALFACTOR;
    |    address public burnAdmin;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(333)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |    uint256  public  decimals = 18; // Standard Token Precision
    |    uint256 public constant DECIMALFACTOR = 10**uint256(18);
  > |    uint256 public initialSupply=2000000000*DECIMALFACTOR;
    |    address public burnAdmin;
    |    constructor() public
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(334)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |    uint256 public constant DECIMALFACTOR = 10**uint256(18);
    |    uint256 public initialSupply=2000000000*DECIMALFACTOR;
  > |    address public burnAdmin;
    |    constructor() public
    |    DSTokenBase(initialSupply)
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(335)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |   * @return true if `msg.sender` is the owner of the contract.
    |   */
  > |  function isAdmin() public view returns(bool) {
    |    return msg.sender == burnAdmin;
    |}
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(355)

[33mWarning[0m for MissingInputValidation in contract 'BitspawnToken':
    |   * modifier anymore.
    |   */
  > |  function renounceOwnership() public onlyAdmin {
    |    burnAdmin = address(0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(365)

[33mWarning[0m for UnhandledException in contract 'BitspawnToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(231)

[31mViolation[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(319)

[31mViolation[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(322)

[31mViolation[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |
    |
  > |        _balances[guy] = sub(_balances[guy], wad);
    |        _supply = sub(_supply, wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(405)

[31mViolation[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |
    |        _balances[guy] = sub(_balances[guy], wad);
  > |        _supply = sub(_supply, wad);
    |
    |        emit Burn(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |    require(src != address(0));
    |
  > |    _approvals[src][msg.sender] = add(_approvals[src][msg.sender], wad);
    |    emit Approval(msg.sender, src, _approvals[msg.sender][src]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |  {
    |    require(src != address(0));
  > |    _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |    emit Approval(msg.sender, src, _approvals[msg.sender][src]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |    {
    |        if (src != msg.sender && _approvals[src][msg.sender] != uint(-1)) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(386)

[33mWarning[0m for UnrestrictedWrite in contract 'BitspawnToken':
    |   */
    |  function renounceOwnership() public onlyAdmin {
  > |    burnAdmin = address(0);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(366)

[33mWarning[0m for DAO in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(59)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(51)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(42)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(16)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(65)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |}
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(285)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(59)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |}
    |
  > |contract DSStop is DSNote, DSAuth {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(310)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(312)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(321)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(319)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(322)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |}
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |  */
    |
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(173)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |   * @param guy address The address which will spend the funds.
    |   */
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(182)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |   */
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(192)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |   */
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |  * @dev Total number of tokens in existence
    |  */
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    {
    |        if (src != msg.sender) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        emit Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    require(src != address(0));
    |
  > |    _approvals[src][msg.sender] = add(_approvals[src][msg.sender], wad);
    |    emit Approval(msg.sender, src, _approvals[msg.sender][src]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |  {
    |    require(src != address(0));
  > |    _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |    emit Approval(msg.sender, src, _approvals[msg.sender][src]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(278)

[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |}
    |
  > |contract ERC20Events {
    |    event Approval(address indexed src, address indexed guy, uint wad);
    |    event Transfer(address indexed src, address indexed dst, uint wad);
  at /home/jiaming/mavs_srcs/contract@0x26fb7c126a7d6ded70d8c2ff5d5f83434450cc73.sol(133)


