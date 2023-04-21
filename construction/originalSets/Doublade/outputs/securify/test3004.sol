Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:DSExec
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:DSStop
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:DSToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:DSTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:ICO
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:WordCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol:preICO
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
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(93)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(97)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(93)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(47)

[33mWarning[0m for LockedEther in contract 'DSExec':
    |}
    |
  > |contract DSExec {
    |    function tryExec( address target, bytes calldata, uint value)
    |    internal
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(102)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |}
    |
  > |contract DSMath {
    |
    |    /*
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(142)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |pragma solidity ^0.4.11;
    |
  > |contract DSNote {
    |    event LogNote(
    |    bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(3)

[33mWarning[0m for DAO in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(93)

[33mWarning[0m for LockedEther in contract 'DSStop':
    |}
    |
  > |contract DSStop is DSAuth, DSNote {
    |
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(302)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |contract DSStop is DSAuth, DSNote {
    |
  > |    bool public stopped;
    |
    |    modifier stoppable {
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(304)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        _;
    |    }
  > |    function stop() auth note {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(310)

[33mWarning[0m for MissingInputValidation in contract 'DSStop':
    |        stopped = true;
    |    }
  > |    function start() auth note {
    |        stopped = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(313)

[33mWarning[0m for UnhandledException in contract 'DSStop':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(93)

[31mViolation[0m for LockedEther in contract 'DSToken':
    |}
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    string  public  symbol;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(373)

[33mWarning[0m for UnhandledException in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DSToken':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function stop() auth note {
  > |        stopped = true;
    |    }
    |    function start() auth note {
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(311)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function start() auth note {
  > |        stopped = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(314)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |        assert(_balances[msg.sender] >= wad);
    |
  > |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(msg.sender, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(343)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |        assert(_approvals[src][msg.sender] >= wad);
    |
  > |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function approve(address guy, uint256 wad) returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |}
    |
  > |contract DSToken is DSTokenBase(0), DSStop {
    |
    |    string  public  symbol;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |
    |    function mint(uint128 wad) auth stoppable note {
  > |        _balances[msg.sender] = add(_balances[msg.sender], wad);
    |        _supply = add(_supply, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    function mint(uint128 wad) auth stoppable note {
    |        _balances[msg.sender] = add(_balances[msg.sender], wad);
  > |        _supply = add(_supply, wad);
    |    }
    |    function burn(uint128 wad) auth stoppable note {
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(404)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    }
    |    function burn(uint128 wad) auth stoppable note {
  > |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
    |        _supply = sub(_supply, wad);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(407)

[33mWarning[0m for UnrestrictedWrite in contract 'DSToken':
    |    function burn(uint128 wad) auth stoppable note {
    |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
  > |        _supply = sub(_supply, wad);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(408)

[33mWarning[0m for LockedEther in contract 'DSTokenBase':
    |}
    |
  > |contract DSTokenBase is ERC20, DSMath {
    |    uint256                                            _supply;
    |    mapping (address => uint256)                       _balances;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(319)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _supply;
    |    }
  > |    function balanceOf(address src) constant returns (uint256) {
    |        return _balances[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(332)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |        return _balances[src];
    |    }
  > |    function allowance(address src, address guy) constant returns (uint256) {
    |        return _approvals[src][guy];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(335)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function transferFrom(address src, address dst, uint wad) returns (bool) {
    |        assert(_balances[src] >= wad);
    |        assert(_approvals[src][msg.sender] >= wad);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(350)

[31mViolation[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function approve(address guy, uint256 wad) returns (bool) {
    |        _approvals[msg.sender][guy] = wad;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(363)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |     */
    |
  > |    function add(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function sub(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'DSTokenBase':
    |    }
    |
  > |    function totalSupply() constant returns (uint256) {
    |        return _supply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(329)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        assert(_balances[msg.sender] >= wad);
    |
  > |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(342)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |        _balances[msg.sender] = sub(_balances[msg.sender], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(msg.sender, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(343)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        assert(_approvals[src][msg.sender] >= wad);
    |
  > |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(354)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
  > |        _balances[src] = sub(_balances[src], wad);
    |        _balances[dst] = add(_balances[dst], wad);
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(355)

[31mViolation[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |        _approvals[src][msg.sender] = sub(_approvals[src][msg.sender], wad);
    |        _balances[src] = sub(_balances[src], wad);
  > |        _balances[dst] = add(_balances[dst], wad);
    |
    |        Transfer(src, dst, wad);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'DSTokenBase':
    |
    |    function approve(address guy, uint256 wad) returns (bool) {
  > |        _approvals[msg.sender][guy] = wad;
    |
    |        Approval(msg.sender, guy, wad);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(364)

[31mViolation[0m for DAO in contract 'ICO':
    |        investors[msg.sender].rewardSent = true;
    |
  > |        coin.push(msg.sender, uint128(amount));
    |        ICOReward -= uint128(amount);
    |        LogSendPOSTokens(msg.sender, amount, "Sent prize tokens");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(901)

[33mWarning[0m for DAO in contract 'ICO':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(93)

[33mWarning[0m for DAO in contract 'ICO':
    |    function startWeekOne() auth {
    |        assert(preico != address(0));
  > |        tokenCost = div(preico.totalDonations(), preico.preICOTokenAmount());
    |        cost = 100;
    |        LogStartWeek("First week started");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(838)

[33mWarning[0m for DAO in contract 'ICO':
    |        assert(ICOAmount > 0);
    |        coin = initCoin;
  > |        coin.ICOmint(uint128(add(uint256(ICOAmount),uint256(ICOReward))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(889)

[33mWarning[0m for DAO in contract 'ICO':
    |        assert(!preico.rewardWasSent(msg.sender));
    |        uint amount = div(mul(totalDonations, 3), 100);
  > |        uint ethAmountForReward = div(mul(amount,preico.part(msg.sender)), 1000000);
    |        preico.setRewardWasSent(msg.sender);
    |        msg.sender.transfer(ethAmountForReward);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(909)

[33mWarning[0m for DAO in contract 'ICO':
    |        uint amount = div(mul(totalDonations, 3), 100);
    |        uint ethAmountForReward = div(mul(amount,preico.part(msg.sender)), 1000000);
  > |        preico.setRewardWasSent(msg.sender);
    |        msg.sender.transfer(ethAmountForReward);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(910)

[33mWarning[0m for DAO in contract 'ICO':
    |
    |    function sendICOTokensBack(uint128 amount) ICOStopped auth{
  > |        assert(coin.balanceOf(this) > amount);
    |        coin.push(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(915)

[33mWarning[0m for DAO in contract 'ICO':
    |    function sendICOTokensBack(uint128 amount) ICOStopped auth{
    |        assert(coin.balanceOf(this) > amount);
  > |        coin.push(msg.sender, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(916)

[31mViolation[0m for DAOConstantGas in contract 'ICO':
    |    function getMoneyBack() allowGetMoneyBack {
    |        assert(investors[msg.sender].amount > 0);
  > |        msg.sender.transfer(investors[msg.sender].amount);
    |        investors[msg.sender].amount = 0;
    |        LogGetMoneyBack(msg.sender, investors[msg.sender].amount, "Money returned");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(880)

[33mWarning[0m for DAOConstantGas in contract 'ICO':
    |        assert(this.balance - amount >= 0);
    |        assert(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(833)

[33mWarning[0m for DAOConstantGas in contract 'ICO':
    |        uint ethAmountForReward = div(mul(amount,preico.part(msg.sender)), 1000000);
    |        preico.setRewardWasSent(msg.sender);
  > |        msg.sender.transfer(ethAmountForReward);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(911)

[33mWarning[0m for LockedEther in contract 'ICO':
    |
    |
  > |contract ICO is DSAuth, DSExec, DSMath {
    |    uint128 public ICOAmount;
    |    uint128 public ICOReward;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(771)

[31mViolation[0m for MissingInputValidation in contract 'ICO':
    |    }
    |
  > |    mapping (address => preICOInvestor) public investors;
    |
    |    preICO public preico;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(784)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |     */
    |
  > |    function add(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    }
    |
  > |    function mul(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x * y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    }
    |
  > |    function div(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        z = x / y;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |
    |contract ICO is DSAuth, DSExec, DSMath {
  > |    uint128 public ICOAmount;
    |    uint128 public ICOReward;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(772)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |contract ICO is DSAuth, DSExec, DSMath {
    |    uint128 public ICOAmount;
  > |    uint128 public ICOReward;
    |
    |    address[] investorsArray;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(773)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    mapping (address => preICOInvestor) public investors;
    |
  > |    preICO public preico;
    |    WordCoin public coin;
    |    bool public canGiveMoneyBack;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(786)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |
    |    preICO public preico;
  > |    WordCoin public coin;
    |    bool public canGiveMoneyBack;
    |    bool public rewardSent;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(787)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    preICO public preico;
    |    WordCoin public coin;
  > |    bool public canGiveMoneyBack;
    |    bool public rewardSent;
    |    uint public cost;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(788)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    WordCoin public coin;
    |    bool public canGiveMoneyBack;
  > |    bool public rewardSent;
    |    uint public cost;
    |    uint public tokenCost;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(789)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    bool public canGiveMoneyBack;
    |    bool public rewardSent;
  > |    uint public cost;
    |    uint public tokenCost;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(790)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    bool public rewardSent;
    |    uint public cost;
  > |    uint public tokenCost;
    |
    |    bool public isICOStopped;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(791)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    uint public tokenCost;
    |
  > |    bool public isICOStopped;
    |
    |    uint public totalDonations;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(793)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    bool public isICOStopped;
    |
  > |    uint public totalDonations;
    |
    |    uint public totalDonationsWithBonuses;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(795)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    uint public totalDonations;
    |
  > |    uint public totalDonationsWithBonuses;
    |
    |    modifier allowGetMoneyBack() {
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(797)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    }
    |
  > |    function startWeekOne() auth {
    |        assert(preico != address(0));
    |        tokenCost = div(preico.totalDonations(), preico.preICOTokenAmount());
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(836)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |
    |
  > |    function startWeekTwo() auth {
    |        cost = 105;
    |        LogStartWeek("Second week started");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(844)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    }
    |
  > |    function startWeekThree() auth {
    |        cost = 110;
    |        LogStartWeek("Third week started");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(849)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |
    |
  > |    function startWeekFour() auth {
    |        cost = 115;
    |        LogStartWeek("Fourth week started");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(855)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |
    |
  > |    function startWeekFive() auth {
    |        cost = 120;
    |        LogStartWeek("Last week started");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(861)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |
    |
  > |    function getMoneyBack() allowGetMoneyBack {
    |        assert(investors[msg.sender].amount > 0);
    |        msg.sender.transfer(investors[msg.sender].amount);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(878)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    }
    |
  > |    function sendPOSTokens() ICOStopped {
    |        assert(!investors[msg.sender].rewardSent);
    |        assert(investors[msg.sender].amount > 0);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(892)

[33mWarning[0m for MissingInputValidation in contract 'ICO':
    |    }
    |
  > |    function sendEthForReward() ICOStopped {
    |        assert(!preico.rewardWasSent(msg.sender));
    |        uint amount = div(mul(totalDonations, 3), 100);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(906)

[33mWarning[0m for TODReceiver in contract 'ICO':
    |    function getMoneyBack() allowGetMoneyBack {
    |        assert(investors[msg.sender].amount > 0);
  > |        msg.sender.transfer(investors[msg.sender].amount);
    |        investors[msg.sender].amount = 0;
    |        LogGetMoneyBack(msg.sender, investors[msg.sender].amount, "Money returned");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(880)

[33mWarning[0m for TODReceiver in contract 'ICO':
    |        uint ethAmountForReward = div(mul(amount,preico.part(msg.sender)), 1000000);
    |        preico.setRewardWasSent(msg.sender);
  > |        msg.sender.transfer(ethAmountForReward);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(911)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(93)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |        assert(this.balance - amount >= 0);
    |        assert(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(833)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |    function startWeekOne() auth {
    |        assert(preico != address(0));
  > |        tokenCost = div(preico.totalDonations(), preico.preICOTokenAmount());
    |        cost = 100;
    |        LogStartWeek("First week started");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(838)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |    function getMoneyBack() allowGetMoneyBack {
    |        assert(investors[msg.sender].amount > 0);
  > |        msg.sender.transfer(investors[msg.sender].amount);
    |        investors[msg.sender].amount = 0;
    |        LogGetMoneyBack(msg.sender, investors[msg.sender].amount, "Money returned");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(880)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |        assert(ICOAmount > 0);
    |        coin = initCoin;
  > |        coin.ICOmint(uint128(add(uint256(ICOAmount),uint256(ICOReward))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(889)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |        investors[msg.sender].rewardSent = true;
    |
  > |        coin.push(msg.sender, uint128(amount));
    |        ICOReward -= uint128(amount);
    |        LogSendPOSTokens(msg.sender, amount, "Sent prize tokens");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(901)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |
    |    function sendEthForReward() ICOStopped {
  > |        assert(!preico.rewardWasSent(msg.sender));
    |        uint amount = div(mul(totalDonations, 3), 100);
    |        uint ethAmountForReward = div(mul(amount,preico.part(msg.sender)), 1000000);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(907)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |        assert(!preico.rewardWasSent(msg.sender));
    |        uint amount = div(mul(totalDonations, 3), 100);
  > |        uint ethAmountForReward = div(mul(amount,preico.part(msg.sender)), 1000000);
    |        preico.setRewardWasSent(msg.sender);
    |        msg.sender.transfer(ethAmountForReward);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(909)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |        uint amount = div(mul(totalDonations, 3), 100);
    |        uint ethAmountForReward = div(mul(amount,preico.part(msg.sender)), 1000000);
  > |        preico.setRewardWasSent(msg.sender);
    |        msg.sender.transfer(ethAmountForReward);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(910)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |        uint ethAmountForReward = div(mul(amount,preico.part(msg.sender)), 1000000);
    |        preico.setRewardWasSent(msg.sender);
  > |        msg.sender.transfer(ethAmountForReward);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(911)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |
    |    function sendICOTokensBack(uint128 amount) ICOStopped auth{
  > |        assert(coin.balanceOf(this) > amount);
    |        coin.push(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(915)

[33mWarning[0m for UnhandledException in contract 'ICO':
    |    function sendICOTokensBack(uint128 amount) ICOStopped auth{
    |        assert(coin.balanceOf(this) > amount);
  > |        coin.push(msg.sender, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(916)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICO':
    |
    |    function sendEthForReward() ICOStopped {
  > |        assert(!preico.rewardWasSent(msg.sender));
    |        uint amount = div(mul(totalDonations, 3), 100);
    |        uint ethAmountForReward = div(mul(amount,preico.part(msg.sender)), 1000000);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(907)

[31mViolation[0m for UnrestrictedWrite in contract 'ICO':
    |    function startWeekOne() auth {
    |        assert(preico != address(0));
  > |        tokenCost = div(preico.totalDonations(), preico.preICOTokenAmount());
    |        cost = 100;
    |        LogStartWeek("First week started");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(838)

[31mViolation[0m for UnrestrictedWrite in contract 'ICO':
    |        assert(preico != address(0));
    |        tokenCost = div(preico.totalDonations(), preico.preICOTokenAmount());
  > |        cost = 100;
    |        LogStartWeek("First week started");
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(839)

[31mViolation[0m for UnrestrictedWrite in contract 'ICO':
    |        uint amount = div(mul(investors[msg.sender].amount, ICOReward), uint256(totalDonations));
    |
  > |        investors[msg.sender].rewardSent = true;
    |
    |        coin.push(msg.sender, uint128(amount));
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(899)

[31mViolation[0m for UnrestrictedWrite in contract 'ICO':
    |
    |        coin.push(msg.sender, uint128(amount));
  > |        ICOReward -= uint128(amount);
    |        LogSendPOSTokens(msg.sender, amount, "Sent prize tokens");
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(902)

[33mWarning[0m for UnrestrictedWrite in contract 'ICO':
    |        assert(investors[msg.sender].amount > 0);
    |        msg.sender.transfer(investors[msg.sender].amount);
  > |        investors[msg.sender].amount = 0;
    |        LogGetMoneyBack(msg.sender, investors[msg.sender].amount, "Money returned");
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(881)

[31mViolation[0m for DAO in contract 'preICO':
    |        uint amount = div(mul(investors[msg.sender].amount, preICOTokenAmount), uint256(totalDonationsWithBonuses));
    |
  > |        coin.push(msg.sender, uint128(amount));
    |        preICOTokenRemaining -= uint128(amount);
    |        investors[msg.sender].tokenSent = true;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(676)

[31mViolation[0m for DAO in contract 'preICO':
    |            LogSendTokens(msg.sender, amount, "TOTAL");
    |            if (!investors[investorsArray[i]].tokenSent) {
  > |                coin.push(investorsArray[i], uint128(amount));
    |                LogSendTokens(msg.sender, amount, "PUSH");
    |                investors[investorsArray[i]].tokenAmount = amount;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(691)

[31mViolation[0m for DAO in contract 'preICO':
    |
    |        uint amount = div(mul(investors[msg.sender].tokenAmount,10),100);
  > |        coin.push(msg.sender, uint128(amount));
    |        preICOTokenRewardRemaining -= uint128(amount);
    |        investors[msg.sender].largeBonusSent = true;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(718)

[33mWarning[0m for DAO in contract 'preICO':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(93)

[33mWarning[0m for DAO in contract 'preICO':
    |
    |    function sendICOTokensBack(uint128 amount) afterDeadline auth{
  > |        assert(coin.balanceOf(this) > amount);
    |        coin.push(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(726)

[33mWarning[0m for DAO in contract 'preICO':
    |    function sendICOTokensBack(uint128 amount) afterDeadline auth{
    |        assert(coin.balanceOf(this) > amount);
  > |        coin.push(msg.sender, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(727)

[33mWarning[0m for DAOConstantGas in contract 'preICO':
    |        assert(this.balance - amount >= 0);
    |        assert(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(709)

[31mViolation[0m for MissingInputValidation in contract 'preICO':
    |    }
    |
  > |    mapping (address => Investor) public investors;
    |
    |    uint public deadline;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(619)

[31mViolation[0m for MissingInputValidation in contract 'preICO':
    |    }
    |
  > |    function part( address who ) public constant returns (uint part) {
    |        part = div(mul(investors[who].amount, 1000000), totalDonationsWithBonuses);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(730)

[31mViolation[0m for MissingInputValidation in contract 'preICO':
    |    }
    |
  > |    function rewardWasSent (address who) public constant returns (bool wasSent)  {
    |        wasSent = investors[who].rewardSent;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(734)

[31mViolation[0m for MissingInputValidation in contract 'preICO':
    |    }
    |
  > |    function setRewardWasSent (address who) {
    |        assert(msg.sender == ICO);
    |        investors[who].rewardSent = true;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(738)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |     */
    |
  > |    function add(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    }
    |
  > |    function sub(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    }
    |
  > |    function mul(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x * y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    }
    |
  > |    function div(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        z = x / y;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |contract preICO is DSAuth, DSExec, DSMath {
    |
  > |    WordCoin  public  coin;
    |    address public ICO;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(606)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |
    |    WordCoin  public  coin;
  > |    address public ICO;
    |
    |    address[] investorsArray;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(607)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    mapping (address => Investor) public investors;
    |
  > |    uint public deadline;
    |    uint public start;
    |    uint public countDays;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(621)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |
    |    uint public deadline;
  > |    uint public start;
    |    uint public countDays;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(622)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    uint public deadline;
    |    uint public start;
  > |    uint public countDays;
    |
    |    bool public autoTokenSent;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(623)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    uint public countDays;
    |
  > |    bool public autoTokenSent;
    |
    |    uint public totalDonations;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(625)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    bool public autoTokenSent;
    |
  > |    uint public totalDonations;
    |    uint public totalDonationsWithBonuses;
    |    uint public donationsCount;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(627)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |
    |    uint public totalDonations;
  > |    uint public totalDonationsWithBonuses;
    |    uint public donationsCount;
    |    uint public ethReward;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(628)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    uint public totalDonations;
    |    uint public totalDonationsWithBonuses;
  > |    uint public donationsCount;
    |    uint public ethReward;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(629)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    uint public totalDonationsWithBonuses;
    |    uint public donationsCount;
  > |    uint public ethReward;
    |
    |    uint128 public preICOTokenAmount;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(630)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    uint public ethReward;
    |
  > |    uint128 public preICOTokenAmount;
    |    uint128 public preICOTokenRemaining;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(632)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |
    |    uint128 public preICOTokenAmount;
  > |    uint128 public preICOTokenRemaining;
    |
    |    uint128 public preICOTokenReward;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(633)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    uint128 public preICOTokenRemaining;
    |
  > |    uint128 public preICOTokenReward;
    |    uint128 public preICOTokenRewardRemaining;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(635)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |
    |    uint128 public preICOTokenReward;
  > |    uint128 public preICOTokenRewardRemaining;
    |
    |    event LogBounty(address user, uint128 amount, string result);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(636)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |
    |
  > |    function sendTokens() afterDeadline {
    |        assert(!investors[msg.sender].tokenSent);
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(671)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |    }
    |
  > |    function autoSend() afterDeadline {
    |        LogDonation(msg.sender, "START");
    |        assert(!autoTokenSent);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(683)

[33mWarning[0m for MissingInputValidation in contract 'preICO':
    |
    |
  > |    function getLargeBonus() {
    |        assert(investors[msg.sender].amount > 7 ether);
    |        assert(!investors[msg.sender].largeBonusSent);
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(713)

[33mWarning[0m for UnhandledException in contract 'preICO':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(93)

[33mWarning[0m for UnhandledException in contract 'preICO':
    |        deadline = now + countDays * 1 days;
    |        coin = initCoin;
  > |        coin.preICOmint(uint128(add(uint256(preICOTokenReward),uint256(preICOTokenAmount))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(667)

[33mWarning[0m for UnhandledException in contract 'preICO':
    |        uint amount = div(mul(investors[msg.sender].amount, preICOTokenAmount), uint256(totalDonationsWithBonuses));
    |
  > |        coin.push(msg.sender, uint128(amount));
    |        preICOTokenRemaining -= uint128(amount);
    |        investors[msg.sender].tokenSent = true;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(676)

[33mWarning[0m for UnhandledException in contract 'preICO':
    |            LogSendTokens(msg.sender, amount, "TOTAL");
    |            if (!investors[investorsArray[i]].tokenSent) {
  > |                coin.push(investorsArray[i], uint128(amount));
    |                LogSendTokens(msg.sender, amount, "PUSH");
    |                investors[investorsArray[i]].tokenAmount = amount;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(691)

[33mWarning[0m for UnhandledException in contract 'preICO':
    |        assert(this.balance - amount >= 0);
    |        assert(msg.sender == owner);
  > |        owner.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(709)

[33mWarning[0m for UnhandledException in contract 'preICO':
    |
    |        uint amount = div(mul(investors[msg.sender].tokenAmount,10),100);
  > |        coin.push(msg.sender, uint128(amount));
    |        preICOTokenRewardRemaining -= uint128(amount);
    |        investors[msg.sender].largeBonusSent = true;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(718)

[33mWarning[0m for UnhandledException in contract 'preICO':
    |
    |    function sendICOTokensBack(uint128 amount) afterDeadline auth{
  > |        assert(coin.balanceOf(this) > amount);
    |        coin.push(msg.sender, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(726)

[33mWarning[0m for UnhandledException in contract 'preICO':
    |    function sendICOTokensBack(uint128 amount) afterDeadline auth{
    |        assert(coin.balanceOf(this) > amount);
  > |        coin.push(msg.sender, amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(727)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'preICO':
    |        deadline = now + countDays * 1 days;
    |        coin = initCoin;
  > |        coin.preICOmint(uint128(add(uint256(preICOTokenReward),uint256(preICOTokenAmount))));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(667)

[31mViolation[0m for UnrestrictedWrite in contract 'preICO':
    |
    |        coin.push(msg.sender, uint128(amount));
  > |        preICOTokenRemaining -= uint128(amount);
    |        investors[msg.sender].tokenSent = true;
    |        investors[msg.sender].tokenAmount = amount;
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(677)

[31mViolation[0m for UnrestrictedWrite in contract 'preICO':
    |        coin.push(msg.sender, uint128(amount));
    |        preICOTokenRemaining -= uint128(amount);
  > |        investors[msg.sender].tokenSent = true;
    |        investors[msg.sender].tokenAmount = amount;
    |        LogSendTokens(msg.sender, amount, "Sent tokens");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(678)

[31mViolation[0m for UnrestrictedWrite in contract 'preICO':
    |        preICOTokenRemaining -= uint128(amount);
    |        investors[msg.sender].tokenSent = true;
  > |        investors[msg.sender].tokenAmount = amount;
    |        LogSendTokens(msg.sender, amount, "Sent tokens");
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(679)

[31mViolation[0m for UnrestrictedWrite in contract 'preICO':
    |                coin.push(investorsArray[i], uint128(amount));
    |                LogSendTokens(msg.sender, amount, "PUSH");
  > |                investors[investorsArray[i]].tokenAmount = amount;
    |                investors[investorsArray[i]].tokenSent = true;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(693)

[31mViolation[0m for UnrestrictedWrite in contract 'preICO':
    |                LogSendTokens(msg.sender, amount, "PUSH");
    |                investors[investorsArray[i]].tokenAmount = amount;
  > |                investors[investorsArray[i]].tokenSent = true;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(694)

[31mViolation[0m for UnrestrictedWrite in contract 'preICO':
    |            }
    |        }
  > |        autoTokenSent = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(697)

[31mViolation[0m for UnrestrictedWrite in contract 'preICO':
    |        uint amount = div(mul(investors[msg.sender].tokenAmount,10),100);
    |        coin.push(msg.sender, uint128(amount));
  > |        preICOTokenRewardRemaining -= uint128(amount);
    |        investors[msg.sender].largeBonusSent = true;
    |
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(719)

[31mViolation[0m for UnrestrictedWrite in contract 'preICO':
    |        coin.push(msg.sender, uint128(amount));
    |        preICOTokenRewardRemaining -= uint128(amount);
  > |        investors[msg.sender].largeBonusSent = true;
    |
    |        LogSendTokens(msg.sender, amount, "Sent tokens for 7 Eth donate");
  at /home/jiaming/mavs_srcs/contract@0xc4bb171729f2fbe23cdbb552ff13b53a9e08b4ee.sol(720)


