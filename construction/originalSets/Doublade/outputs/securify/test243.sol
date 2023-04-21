Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:EventfulMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:ExpiringMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:MatchingEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:MatchingMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Decompilation failed.
Processing contract: /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol:SimpleMarket
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
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(53)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(45)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(28)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(36)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(9)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(59)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |}
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(451)

[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |
    |
  > |contract ERC20Events {
    |    event Approval(address indexed src, address indexed guy, uint wad);
    |    event Transfer(address indexed src, address indexed dst, uint wad);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(128)

[33mWarning[0m for LockedEther in contract 'EventfulMarket':
    |
    |
  > |contract EventfulMarket {
    |    event LogItemUpdate(uint id);
    |    event LogTrade(uint pay_amt, address indexed pay_gem, uint buy_amt, address indexed buy_gem);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(146)

[33mWarning[0m for LockedEther in contract 'ExpiringMarket':
    |// Simple Market with a market lifetime. When the close_time has been reached,
    |// offers can only be cancelled (offer and buy will throw).
  > |contract ExpiringMarket is DSAuth, SimpleMarket {
    |    uint64 public close_time;
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(408)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(53)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(287)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(288)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        delete offers[id];
    |
  > |        require( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(322)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        offers[id] = info;
    |
  > |        require( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(380)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(53)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(288)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |        delete offers[id];
    |
  > |        require( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |        offers[id] = info;
    |
  > |        require( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(380)

[33mWarning[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |        auth
    |    {
  > |        owner = owner_;
    |        emit LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |        auth
    |    {
  > |        authority = authority_;
    |        emit LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |
    |    function stop() public auth {
  > |        stopped = true;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(447)

[33mWarning[0m for LockedEther in contract 'MatchingEvents':
    |}
    |
  > |contract MatchingEvents {
    |    event LogBuyEnabled(bool isEnabled);
    |    event LogMinSell(address pay_gem, uint min_amount);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(476)

[33mWarning[0m for LockedEther in contract 'SimpleMarket':
    |}
    |
  > |contract SimpleMarket is EventfulMarket, DSMath {
    |    uint public last_offer_id;
    |    mapping (uint => OfferInfo) public offers;
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(196)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(287)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(288)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        delete offers[id];
    |
  > |        require( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(322)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        offers[id] = info;
    |
  > |        require( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(380)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(287)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(288)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleMarket':
    |        delete offers[id];
    |
  > |        require( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleMarket':
    |        offers[id] = info;
    |
  > |        require( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(380)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |    modifier synchronized {
    |        require(!locked);
  > |        locked = true;
    |        _;
    |        locked = false;
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        locked = true;
    |        _;
  > |        locked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        }
    |
  > |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(285)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
  > |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        require( offer.pay_gem.transfer(msg.sender, quantity) );
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(286)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |
    |        if (offers[id].pay_amt == 0) {
  > |            delete offers[id];
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(305)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        info.timestamp = uint64(now);
    |        id = _next_id();
  > |        offers[id] = info;
    |
    |        require( pay_gem.transferFrom(msg.sender, this, pay_amt) );
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(378)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |
    |    function _next_id() internal returns (uint) {
  > |        last_offer_id++;
    |        return last_offer_id;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |    modifier synchronized {
    |        require(!locked);
  > |        locked = true;
    |        _;
    |        locked = false;
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        locked = true;
    |        _;
  > |        locked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        // read-only offer. Modify an offer by directly accessing offers[id]
    |        OfferInfo memory offer = offers[id];
  > |        delete offers[id];
    |
    |        require( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
  at /home/jiaming/mavs_srcs/contract@0x10d985f648c00c177fad972248e5787d6f921633.sol(320)


