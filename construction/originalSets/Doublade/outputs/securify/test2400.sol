Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:DSNote
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:EventfulMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:ExpiringMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:MatchingEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:MatchingMarket
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Decompilation failed.
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol:SimpleMarket
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
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(52)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(44)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(35)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(9)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |}
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(57)

[33mWarning[0m for LockedEther in contract 'DSNote':
    |}
    |
  > |contract DSNote {
    |    event LogNote(
    |        bytes4   indexed  sig,
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(458)

[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |}
    |
  > |contract ERC20Events {
    |    event Approval(address indexed src, address indexed guy, uint wad);
    |    event Transfer(address indexed src, address indexed dst, uint wad);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(125)

[33mWarning[0m for LockedEther in contract 'EventfulMarket':
    |}
    |
  > |contract EventfulMarket {
    |    event LogItemUpdate(uint id);
    |    event LogTrade(uint pay_amt, address indexed pay_gem,
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(142)

[33mWarning[0m for LockedEther in contract 'ExpiringMarket':
    |// offers can only be cancelled (offer and buy will throw).
    |
  > |contract ExpiringMarket is DSAuth, SimpleMarket {
    |    uint64 public close_time;
    |    bool public stopped;
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(415)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(52)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(288)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(289)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        delete offers[id];
    |
  > |        require( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(323)

[33mWarning[0m for UnhandledException in contract 'ExpiringMarket':
    |        offers[id] = info;
    |
  > |        require( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(52)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(288)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |        delete offers[id];
    |
  > |        require( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExpiringMarket':
    |        offers[id] = info;
    |
  > |        require( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'ExpiringMarket':
    |
    |    function stop() public auth {
  > |        stopped = true;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(454)

[33mWarning[0m for LockedEther in contract 'MatchingEvents':
    |}
    |
  > |contract MatchingEvents {
    |    event LogBuyEnabled(bool isEnabled);
    |    event LogMinSell(address pay_gem, uint min_amount);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(483)

[33mWarning[0m for LockedEther in contract 'SimpleMarket':
    |}
    |
  > |contract SimpleMarket is EventfulMarket, DSMath {
    |
    |    uint public last_offer_id;
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(193)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(288)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(289)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        delete offers[id];
    |
  > |        require( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(323)

[33mWarning[0m for UnhandledException in contract 'SimpleMarket':
    |        offers[id] = info;
    |
  > |        require( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(383)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleMarket':
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
  > |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(288)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleMarket':
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  > |        require( offer.pay_gem.transfer(msg.sender, quantity) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(289)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleMarket':
    |        delete offers[id];
    |
  > |        require( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SimpleMarket':
    |        offers[id] = info;
    |
  > |        require( pay_gem.transferFrom(msg.sender, this, pay_amt) );
    |
    |        LogItemUpdate(id);
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(383)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |    modifier synchronized {
    |        require(!locked);
  > |        locked = true;
    |        _;
    |        locked = false;
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(227)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        locked = true;
    |        _;
  > |        locked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(229)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        }
    |
  > |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
    |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(286)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |
    |        offers[id].pay_amt = sub(offer.pay_amt, quantity);
  > |        offers[id].buy_amt = sub(offer.buy_amt, spend);
    |        require( offer.buy_gem.transferFrom(msg.sender, offer.owner, spend) );
    |        require( offer.pay_gem.transfer(msg.sender, quantity) );
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(287)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |
    |        if (offers[id].pay_amt == 0) {
  > |          delete offers[id];
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(306)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        info.timestamp = uint64(now);
    |        id = _next_id();
  > |        offers[id] = info;
    |
    |        require( pay_gem.transferFrom(msg.sender, this, pay_amt) );
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(381)

[31mViolation[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        returns (uint)
    |    {
  > |        last_offer_id++; return last_offer_id;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |    modifier synchronized {
    |        require(!locked);
  > |        locked = true;
    |        _;
    |        locked = false;
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        locked = true;
    |        _;
  > |        locked = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'SimpleMarket':
    |        // read-only offer. Modify an offer by directly accessing offers[id]
    |        OfferInfo memory offer = offers[id];
  > |        delete offers[id];
    |
    |        require( offer.pay_gem.transfer(offer.owner, offer.pay_amt) );
  at /home/jiaming/mavs_srcs/contract@0x9b9ea61611a0ae2d90de993053a3be7db55a1226.sol(321)


