Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol:EventfulMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol:ExpiringMarket
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol:MatchingEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol:MatchingMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Decompilation failed.
Processing contract: /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol:SimpleMarket
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
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(250)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(214)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(254)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(250)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(209)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |}
    |
  > |contract DSMath {
    |    
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(16)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |}
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(178)

[33mWarning[0m for LockedEther in contract 'EventfulMarket':
    |}
    |
  > |contract EventfulMarket {
    |    event LogItemUpdate(uint id);
    |    event LogTrade(uint pay_amt, address indexed pay_gem,
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(259)

[31mViolation[0m for DAO in contract 'ExpiringMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(404)

[31mViolation[0m for DAO in contract 'ExpiringMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(405)

[33mWarning[0m for DAO in contract 'ExpiringMarket':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(250)

[33mWarning[0m for DAO in contract 'ExpiringMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(404)

[33mWarning[0m for DAO in contract 'ExpiringMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(405)

[33mWarning[0m for DAO in contract 'ExpiringMarket':
    |        delete offers[id];
    |
  > |        assert( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(438)

[33mWarning[0m for DAO in contract 'ExpiringMarket':
    |        offers[id] = info;
    |
  > |        assert( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(493)

[33mWarning[0m for LockedEther in contract 'ExpiringMarket':
    |// Simple Market with a market lifetime. When the close_time has been reached,
    |// offers can only be cancelled (offer and buy will throw).
  > |contract ExpiringMarket is DSAuth, SimpleMarket {
    |    uint64 public close_time;
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(519)

[31mViolation[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    uint public last_offer_id;
    |
  > |    mapping (uint => OfferInfo) public offers;
    |
    |    bool locked;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(314)

[31mViolation[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function isActive(uint id) constant returns (bool active) {
    |        return offers[id].active;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(350)

[31mViolation[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function getOwner(uint id) constant returns (address owner) {
    |        return offers[id].owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(354)

[31mViolation[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function getOffer(uint id) constant returns (uint, ERC20, uint, ERC20) {
    |      var offer = offers[id];
    |      return (offer.pay_amt, offer.pay_gem,
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(358)

[31mViolation[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    // ---- Public entrypoints ---- //
    |
  > |    function bump(bytes32 id_)
    |        can_buy(uint256(id_))
    |    {
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(366)

[31mViolation[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    // Accept given `quantity` of an offer. Transfers funds from caller to
    |    // offer maker, and from market to caller.
  > |    function buy(uint id, uint quantity)
    |        can_buy(id)
    |        synchronized
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(384)

[31mViolation[0m for MissingInputValidation in contract 'ExpiringMarket':
    |
    |    // Cancel an offer. Refunds offer maker.
  > |    function cancel(uint id)
    |        can_cancel(id)
    |        synchronized
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(429)

[31mViolation[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function kill(bytes32 id) {
    |        assert(cancel(uint256(id)));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(455)

[31mViolation[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function take(bytes32 id, uint128 maxTakeAmount) {
    |        assert(buy(uint256(id), maxTakeAmount));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(508)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function sub(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function mul(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        z = x * y;
    |        assert(x == 0 || z / x == y);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() {
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function assert(bool x) internal {
    |        if (!x) revert();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |contract SimpleMarket is EventfulMarket, DSMath {
    |
  > |    uint public last_offer_id;
    |
    |    mapping (uint => OfferInfo) public offers;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(312)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function make(
    |        ERC20    pay_gem,
    |        ERC20    buy_gem,
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(459)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function _next_id() internal returns (uint) {
    |        last_offer_id++; return last_offer_id;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(512)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |// Simple Market with a market lifetime. When the close_time has been reached,
    |// offers can only be cancelled (offer and buy will throw).
  > |contract ExpiringMarket is DSAuth, SimpleMarket {
    |    uint64 public close_time;
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(519)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |// offers can only be cancelled (offer and buy will throw).
    |contract ExpiringMarket is DSAuth, SimpleMarket {
  > |    uint64 public close_time;
    |    bool public stopped;
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(520)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |contract ExpiringMarket is DSAuth, SimpleMarket {
    |    uint64 public close_time;
  > |    bool public stopped;
    |
    |    // after close_time has been reached, no new offers are allowed
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(521)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function isClosed() constant returns (bool closed) {
    |        return stopped || getTime() > close_time;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(547)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function getTime() returns (uint64) {
    |        return uint64(now);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(551)

[33mWarning[0m for MissingInputValidation in contract 'ExpiringMarket':
    |    }
    |
  > |    function stop() auth {
    |        stopped = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(555)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(250)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(404)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(405)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        delete offers[id];
    |
  > |        assert( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(438)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        offers[id] = info;
    |
  > |        assert( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(493)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |        delete offers[id];
    |
  > |        assert( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(438)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |        offers[id] = info;
    |
  > |        assert( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(493)

[31mViolation[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |    modifier synchronized {
    |        assert(!locked);
  > |        locked = true;
    |        _;
    |        locked = false;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(345)

[31mViolation[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |        locked = true;
    |        _;
  > |        locked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(347)

[31mViolation[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |        }
    |
  > |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(402)

[31mViolation[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
  > |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(403)

[31mViolation[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |
    |        if (offers[id].pay_amt == 0) {
  > |          delete offers[id];
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(422)

[31mViolation[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |        // read-only offer. Modify an offer by directly accessing offers[id]
    |        OfferInfo memory offer = offers[id];
  > |        delete offers[id];
    |
    |        assert( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(436)

[31mViolation[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |        info.timestamp = uint64(now);
    |        id = _next_id();
  > |        offers[id] = info;
    |
    |        assert( pay_gem.transferFrom(msg.sender, this, pay_amt) );
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(491)

[31mViolation[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |
    |    function _next_id() internal returns (uint) {
  > |        last_offer_id++; return last_offer_id;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(513)

[33mWarning[0m for LockedEther in contract 'MatchingEvents':
    |}
    |
  > |contract MatchingEvents {
    |    event LogBuyEnabled(bool isEnabled);
    |    event LogMinSell(address pay_gem, uint min_amount);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(560)

[31mViolation[0m for DAO in contract 'SimpleMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(404)

[31mViolation[0m for DAO in contract 'SimpleMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(405)

[33mWarning[0m for DAO in contract 'SimpleMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(404)

[33mWarning[0m for DAO in contract 'SimpleMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(405)

[33mWarning[0m for DAO in contract 'SimpleMarket':
    |        delete offers[id];
    |
  > |        assert( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(438)

[33mWarning[0m for DAO in contract 'SimpleMarket':
    |        offers[id] = info;
    |
  > |        assert( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(493)

[33mWarning[0m for LockedEther in contract 'SimpleMarket':
    |}
    |
  > |contract SimpleMarket is EventfulMarket, DSMath {
    |
    |    uint public last_offer_id;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(310)

[31mViolation[0m for MissingInputValidation in contract 'SimpleMarket':
    |    uint public last_offer_id;
    |
  > |    mapping (uint => OfferInfo) public offers;
    |
    |    bool locked;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(314)

[31mViolation[0m for MissingInputValidation in contract 'SimpleMarket':
    |    }
    |
  > |    function isActive(uint id) constant returns (bool active) {
    |        return offers[id].active;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(350)

[31mViolation[0m for MissingInputValidation in contract 'SimpleMarket':
    |    }
    |
  > |    function getOwner(uint id) constant returns (address owner) {
    |        return offers[id].owner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(354)

[31mViolation[0m for MissingInputValidation in contract 'SimpleMarket':
    |    }
    |
  > |    function getOffer(uint id) constant returns (uint, ERC20, uint, ERC20) {
    |      var offer = offers[id];
    |      return (offer.pay_amt, offer.pay_gem,
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(358)

[31mViolation[0m for MissingInputValidation in contract 'SimpleMarket':
    |    // ---- Public entrypoints ---- //
    |
  > |    function bump(bytes32 id_)
    |        can_buy(uint256(id_))
    |    {
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(366)

[31mViolation[0m for MissingInputValidation in contract 'SimpleMarket':
    |    // Accept given `quantity` of an offer. Transfers funds from caller to
    |    // offer maker, and from market to caller.
  > |    function buy(uint id, uint quantity)
    |        can_buy(id)
    |        synchronized
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(384)

[31mViolation[0m for MissingInputValidation in contract 'SimpleMarket':
    |
    |    // Cancel an offer. Refunds offer maker.
  > |    function cancel(uint id)
    |        can_cancel(id)
    |        synchronized
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(429)

[31mViolation[0m for MissingInputValidation in contract 'SimpleMarket':
    |    }
    |
  > |    function kill(bytes32 id) {
    |        assert(cancel(uint256(id)));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(455)

[31mViolation[0m for MissingInputValidation in contract 'SimpleMarket':
    |    }
    |
  > |    function take(bytes32 id, uint128 maxTakeAmount) {
    |        assert(buy(uint256(id), maxTakeAmount));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(508)

[33mWarning[0m for MissingInputValidation in contract 'SimpleMarket':
    |    }
    |
  > |    function sub(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        assert((z = x - y) <= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SimpleMarket':
    |    }
    |
  > |    function mul(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        z = x * y;
    |        assert(x == 0 || z / x == y);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SimpleMarket':
    |}
    |
  > |contract SimpleMarket is EventfulMarket, DSMath {
    |
    |    uint public last_offer_id;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(310)

[33mWarning[0m for MissingInputValidation in contract 'SimpleMarket':
    |contract SimpleMarket is EventfulMarket, DSMath {
    |
  > |    uint public last_offer_id;
    |
    |    mapping (uint => OfferInfo) public offers;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(312)

[33mWarning[0m for MissingInputValidation in contract 'SimpleMarket':
    |    }
    |
  > |    function make(
    |        ERC20    pay_gem,
    |        ERC20    buy_gem,
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(459)

[33mWarning[0m for MissingInputValidation in contract 'SimpleMarket':
    |    }
    |
  > |    function _next_id() internal returns (uint) {
    |        last_offer_id++; return last_offer_id;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(512)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(404)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(405)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        delete offers[id];
    |
  > |        assert( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(438)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        offers[id] = info;
    |
  > |        assert( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(493)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleMarket':
    |        delete offers[id];
    |
  > |        assert( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(438)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleMarket':
    |        offers[id] = info;
    |
  > |        assert( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(493)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |    modifier synchronized {
    |        assert(!locked);
  > |        locked = true;
    |        _;
    |        locked = false;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(345)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        locked = true;
    |        _;
  > |        locked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(347)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        }
    |
  > |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(402)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
  > |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        assert( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        assert( offer.pay_gem.transfer(msg.sender, quantity) );
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(403)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |
    |        if (offers[id].pay_amt == 0) {
  > |          delete offers[id];
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(422)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        // read-only offer. Modify an offer by directly accessing offers[id]
    |        OfferInfo memory offer = offers[id];
  > |        delete offers[id];
    |
    |        assert( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(436)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        info.timestamp = uint64(now);
    |        id = _next_id();
  > |        offers[id] = info;
    |
    |        assert( pay_gem.transferFrom(msg.sender, this, pay_amt) );
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(491)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |
    |    function _next_id() internal returns (uint) {
  > |        last_offer_id++; return last_offer_id;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(513)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |    modifier synchronized {
    |        assert(!locked);
  > |        locked = true;
    |        _;
    |        locked = false;
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        locked = true;
    |        _;
  > |        locked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(347)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        // read-only offer. Modify an offer by directly accessing offers[id]
    |        OfferInfo memory offer = offers[id];
  > |        delete offers[id];
    |
    |        assert( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
  at /home/jiaming/mavs_srcs/contract@0x3aa927a97594c3ab7d7bf0d47c71c3877d1de4a1.sol(436)


