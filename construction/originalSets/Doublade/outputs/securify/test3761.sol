Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:DSThing
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:DSToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:DSValue
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:SaiTap
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:SaiTop
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:SaiTub
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:SaiTubEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol:SaiVox
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
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(61)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(52)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(26)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |/* pragma solidity ^0.4.13; */
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(135)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |/* pragma solidity ^0.4.13; */
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(92)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |/* import "ds-note/note.sol"; */
    |
  > |contract DSStop is DSNote, DSAuth {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(260)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(266)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(269)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(267)

[31mViolation[0m for UnrestrictedWrite in contract 'DSStop':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(270)

[33mWarning[0m for DAO in contract 'DSThing':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[33mWarning[0m for LockedEther in contract 'DSThing':
    |/* import 'ds-math/math.sol'; */
    |
  > |contract DSThing is DSAuth, DSNote, DSMath {
    |
    |    function S(string s) internal pure returns (bytes4) {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSThing':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(61)

[33mWarning[0m for UnhandledException in contract 'DSThing':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSThing':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSThing':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(52)

[33mWarning[0m for DAO in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[33mWarning[0m for LockedEther in contract 'DSToken':
    |/* import "./base.sol"; */
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    bytes32  public  symbol;
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(399)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(339)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(342)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(346)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    event Burn(address indexed guy, uint wad);
    |
  > |    function approve(address guy) public stoppable returns (bool) {
    |        return super.approve(guy, uint(-1));
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(411)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public stoppable returns (bool) {
    |        return super.approve(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(415)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function transferFrom(address src, address dst, uint wad)
    |        public
    |        stoppable
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(419)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function push(address dst, uint wad) public {
    |        transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(436)

[31mViolation[0m for MissingInputValidation in contract 'DSToken':
    |        transferFrom(src, msg.sender, wad);
    |    }
  > |    function move(address src, address dst, uint wad) public {
    |        transferFrom(src, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(442)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSStop is DSNote, DSAuth {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(260)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        _;
    |    }
  > |    function stop() public auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(266)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |        stopped = true;
    |    }
  > |    function start() public auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(336)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(366)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |contract DSToken is DSTokenBase(0), DSStop {
    |
  > |    bytes32  public  symbol;
    |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(401)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    bytes32  public  symbol;
  > |    uint256  public  decimals = 18; // standard token precision. override to customize
    |
    |    function DSToken(bytes32 symbol_) public {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(402)

[33mWarning[0m for MissingInputValidation in contract 'DSToken':
    |
    |    // Optional token name
  > |    bytes32   public  name = "";
    |
    |    function setName(bytes32 name_) public auth {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(468)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function stop() public auth note {
  > |        stopped = true;
    |    }
    |    function start() public auth note {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(267)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function start() public auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(367)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(429)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function mint(address guy, uint wad) public auth stoppable {
  > |        _balances[guy] = add(_balances[guy], wad);
    |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(453)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(address guy, uint wad) public auth stoppable {
    |        _balances[guy] = add(_balances[guy], wad);
  > |        _supply = add(_supply, wad);
    |        Mint(guy, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(454)

[31mViolation[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function setName(bytes32 name_) public auth {
  > |        name = name_;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(471)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(367)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    {
    |        if (src != msg.sender && _approvals[src][msg.sender] != uint(-1)) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(425)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(428)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |/* import "ds-math/math.sol"; */
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(326)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) public view returns (uint) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(339)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) public view returns (uint) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(342)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function transfer(address dst, uint wad) public returns (bool) {
    |        return transferFrom(msg.sender, dst, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(346)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function approve(address guy, uint wad) public returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(366)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |        require((z = x + y) >= x);
    |    }
  > |    function sub(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function totalSupply() public view returns (uint) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |    {
    |        if (src != msg.sender) {
  > |            _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        }
    |
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(358)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint wad) public returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(367)

[33mWarning[0m for DAO in contract 'DSValue':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[33mWarning[0m for LockedEther in contract 'DSValue':
    |/* import 'ds-thing/thing.sol'; */
    |
  > |contract DSValue is DSThing {
    |    bool    has;
    |    bytes32 val;
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(497)

[33mWarning[0m for MissingInputValidation in contract 'DSValue':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'DSValue':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'DSValue':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'DSValue':
    |    bool    has;
    |    bytes32 val;
  > |    function peek() public view returns (bytes32, bool) {
    |        return (val,has);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(500)

[33mWarning[0m for MissingInputValidation in contract 'DSValue':
    |        return (val,has);
    |    }
  > |    function read() public view returns (bytes32) {
    |        var (wut, haz) = peek();
    |        assert(haz);
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(503)

[33mWarning[0m for MissingInputValidation in contract 'DSValue':
    |        has = true;
    |    }
  > |    function void() public note auth {  // unset the value
    |        has = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(512)

[33mWarning[0m for UnhandledException in contract 'DSValue':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'DSValue':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'DSValue':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSValue':
    |    }
    |    function poke(bytes32 wut) public note auth {
  > |        val = wut;
    |        has = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(509)

[31mViolation[0m for UnrestrictedWrite in contract 'DSValue':
    |    function poke(bytes32 wut) public note auth {
    |        val = wut;
  > |        has = true;
    |    }
    |    function void() public note auth {  // unset the value
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(510)

[31mViolation[0m for UnrestrictedWrite in contract 'DSValue':
    |    }
    |    function void() public note auth {  // unset the value
  > |        has = false;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(513)

[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |/* pragma solidity ^0.4.8; */
    |
  > |contract ERC20Events {
    |    event Approval(address indexed src, address indexed guy, uint wad);
    |    event Transfer(address indexed src, address indexed dst, uint wad);
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(286)

[33mWarning[0m for LockedEther in contract 'SaiTubEvents':
    |/* import "./vox.sol"; */
    |
  > |contract SaiTubEvents {
    |    event LogNewCup(address indexed lad, bytes32 cup);
    |}
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(630)

[33mWarning[0m for LockedEther in contract 'SaiVox':
    |/* import "ds-thing/thing.sol"; */
    |
  > |contract SaiVox is DSThing {
    |    uint256  _par;
    |    uint256  _way;
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(541)

[33mWarning[0m for UnhandledException in contract 'SaiVox':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SaiVox':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'SaiVox':
    |        var age = era() - tau;
    |        if (age == 0) return;  // optimised
  > |        tau = era();
    |
    |        if (_way != RAY) _par = rmul(_par, rpow(_way, age));  // optimised
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(583)

[31mViolation[0m for UnrestrictedWrite in contract 'SaiVox':
    |        tau = era();
    |
  > |        if (_way != RAY) _par = rmul(_par, rpow(_way, age));  // optimised
    |
    |        if (how == 0) return;  // optimised
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(585)

[31mViolation[0m for UnrestrictedWrite in contract 'SaiVox':
    |        if (how == 0) return;  // optimised
    |        var wag = int128(how * age);
  > |        _way = inj(prj(_way) + (fix < _par ? wag : -wag));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(589)

[33mWarning[0m for UnrestrictedWrite in contract 'SaiVox':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'SaiVox':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'SaiVox':
    |
    |    function mold(bytes32 param, uint val) public note auth {
  > |        if (param == 'way') _way = val;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(560)

[33mWarning[0m for UnrestrictedWrite in contract 'SaiVox':
    |
    |    function tell(uint256 ray) public note auth {
  > |        fix = ray;
    |    }
    |    function tune(uint256 ray) public note auth {
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(574)

[33mWarning[0m for UnrestrictedWrite in contract 'SaiVox':
    |    }
    |    function tune(uint256 ray) public note auth {
  > |        how = ray;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xf6fad15254bed3eda91b2390372ea2ade7abb8bd.sol(577)


