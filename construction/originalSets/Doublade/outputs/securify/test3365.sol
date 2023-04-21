Processing contract: /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol:DSAuth
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol:DSAuthEvents
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol:DSAuthority
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol:DSMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol:ERC20Events
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol:ViewlyMainSale
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
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(150)

[33mWarning[0m for LockedEther in contract 'DSAuth':
    |}
    |
  > |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
    |    address      public  owner;
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'DSAuth':
    |    }
    |
  > |    function isAuthorized(address src, bytes4 sig) internal view returns (bool) {
    |        if (src == address(this)) {
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(142)

[33mWarning[0m for UnhandledException in contract 'DSAuth':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(150)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        owner = owner_;
    |        LogSetOwner(owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'DSAuth':
    |        auth
    |    {
  > |        authority = authority_;
    |        LogSetAuthority(authority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(133)

[33mWarning[0m for LockedEther in contract 'DSAuthEvents':
    |}
    |
  > |contract DSAuthEvents {
    |    event LogSetAuthority (address indexed authority);
    |    event LogSetOwner     (address indexed owner);
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(107)

[33mWarning[0m for LockedEther in contract 'DSMath':
    |pragma solidity ^0.4.13;
    |
  > |contract DSMath {
    |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(18)

[33mWarning[0m for LockedEther in contract 'ERC20Events':
    |pragma solidity ^0.4.8;
    |
  > |contract ERC20Events {
    |    event Approval(address indexed src, address indexed guy, uint wad);
    |    event Transfer(address indexed src, address indexed dst, uint wad);
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(165)

[33mWarning[0m for DAO in contract 'ViewlyMainSale':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(150)

[33mWarning[0m for DAO in contract 'ViewlyMainSale':
    |    function recoverTokens(address token_) public auth {
    |        ERC20 token = ERC20(token_);
  > |        token.transfer(beneficiary, token.balanceOf(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(309)

[33mWarning[0m for DAOConstantGas in contract 'ViewlyMainSale':
    |        totalRefundedAmount += amount;
    |        totalContributedAmount -= amount;
  > |        contributor.transfer(amount);
    |        LogRefund(contributor, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(248)

[33mWarning[0m for DAOConstantGas in contract 'ViewlyMainSale':
    |        require(this.balance >= amount);
    |
  > |        beneficiary.transfer(amount);
    |        LogCollectAmount(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(275)

[33mWarning[0m for LockedEther in contract 'ViewlyMainSale':
    | * later receive VIEW tokens (outside of this contract).
    | */
  > |contract ViewlyMainSale is DSAuth, DSMath {
    |
    |    // STATE
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(185)

[31mViolation[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |    uint public totalRefundedAmount;             // stores all refunds
    |
  > |    mapping(address => uint256) public contributions;
    |    mapping(address => uint256) public refunds;
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |
    |    mapping(address => uint256) public contributions;
  > |    mapping(address => uint256) public refunds;
    |
    |    bool public whitelistRequired;
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(199)

[31mViolation[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |
    |    bool public whitelistRequired;
  > |    mapping(address => bool) public whitelist;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |
    |contract DSMath {
  > |    function add(uint x, uint y) internal pure returns (uint z) {
    |        require((z = x + y) >= x);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |
    |contract DSAuth is DSAuthEvents {
  > |    DSAuthority  public  authority;
    |    address      public  owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |contract DSAuth is DSAuthEvents {
    |    DSAuthority  public  authority;
  > |    address      public  owner;
    |
    |    function DSAuth() public {
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |    // STATE
    |
  > |    uint public minContributionAmount = 5 ether; // initial min contribution amount
    |    uint public maxTotalAmount = 4300 ether;     // initial min contribution amount
    |    address public beneficiary;                  // address to collect contributed amount to
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(189)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |
    |    uint public minContributionAmount = 5 ether; // initial min contribution amount
  > |    uint public maxTotalAmount = 4300 ether;     // initial min contribution amount
    |    address public beneficiary;                  // address to collect contributed amount to
    |    uint public startBlock;                      // start block of sale
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |    uint public minContributionAmount = 5 ether; // initial min contribution amount
    |    uint public maxTotalAmount = 4300 ether;     // initial min contribution amount
  > |    address public beneficiary;                  // address to collect contributed amount to
    |    uint public startBlock;                      // start block of sale
    |    uint public endBlock;                        // end block of sale
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |    uint public maxTotalAmount = 4300 ether;     // initial min contribution amount
    |    address public beneficiary;                  // address to collect contributed amount to
  > |    uint public startBlock;                      // start block of sale
    |    uint public endBlock;                        // end block of sale
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |    address public beneficiary;                  // address to collect contributed amount to
    |    uint public startBlock;                      // start block of sale
  > |    uint public endBlock;                        // end block of sale
    |
    |    uint public totalContributedAmount;          // stores all contributions
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |    uint public endBlock;                        // end block of sale
    |
  > |    uint public totalContributedAmount;          // stores all contributions
    |    uint public totalRefundedAmount;             // stores all refunds
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(195)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |
    |    uint public totalContributedAmount;          // stores all contributions
  > |    uint public totalRefundedAmount;             // stores all refunds
    |
    |    mapping(address => uint256) public contributions;
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |    mapping(address => uint256) public refunds;
    |
  > |    bool public whitelistRequired;
    |    mapping(address => bool) public whitelist;
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(201)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |    }
    |
  > |    function addToWhitelist(address[] contributors) public auth {
    |        require(contributors.length != 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |    }
    |
  > |    function removeFromWhitelist(address[] contributors) public auth {
    |        require(contributors.length != 0);
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(287)

[33mWarning[0m for MissingInputValidation in contract 'ViewlyMainSale':
    |    // PRIVATE
    |
  > |    function contribute() private saleOpen requireWhitelist {
    |        require(msg.value >= minContributionAmount);
    |        require(maxTotalAmount >= add(totalContributedAmount, msg.value));
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(315)

[33mWarning[0m for UnhandledException in contract 'ViewlyMainSale':
    |            return false;
    |        } else {
  > |            return authority.canCall(src, this, sig);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(150)

[33mWarning[0m for UnhandledException in contract 'ViewlyMainSale':
    |        totalRefundedAmount += amount;
    |        totalContributedAmount -= amount;
  > |        contributor.transfer(amount);
    |        LogRefund(contributor, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(248)

[33mWarning[0m for UnhandledException in contract 'ViewlyMainSale':
    |        require(this.balance >= amount);
    |
  > |        beneficiary.transfer(amount);
    |        LogCollectAmount(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(275)

[33mWarning[0m for UnhandledException in contract 'ViewlyMainSale':
    |    function recoverTokens(address token_) public auth {
    |        ERC20 token = ERC20(token_);
  > |        token.transfer(beneficiary, token.balanceOf(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(309)

[31mViolation[0m for UnrestrictedWrite in contract 'ViewlyMainSale':
    |        require(amount <= this.balance);
    |
  > |        contributions[contributor] = 0;
    |        refunds[contributor] += amount;
    |        totalRefundedAmount += amount;
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(244)

[31mViolation[0m for UnrestrictedWrite in contract 'ViewlyMainSale':
    |
    |        contributions[contributor] = 0;
  > |        refunds[contributor] += amount;
    |        totalRefundedAmount += amount;
    |        totalContributedAmount -= amount;
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(245)

[31mViolation[0m for UnrestrictedWrite in contract 'ViewlyMainSale':
    |        contributions[contributor] = 0;
    |        refunds[contributor] += amount;
  > |        totalRefundedAmount += amount;
    |        totalContributedAmount -= amount;
    |        contributor.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(246)

[31mViolation[0m for UnrestrictedWrite in contract 'ViewlyMainSale':
    |        refunds[contributor] += amount;
    |        totalRefundedAmount += amount;
  > |        totalContributedAmount -= amount;
    |        contributor.transfer(amount);
    |        LogRefund(contributor, amount);
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'ViewlyMainSale':
    |        require(minAmount > 0);
    |
  > |        minContributionAmount = minAmount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(255)

[31mViolation[0m for UnrestrictedWrite in contract 'ViewlyMainSale':
    |        require(maxAmount > 0);
    |
  > |        maxTotalAmount = maxAmount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'ViewlyMainSale':
    |        require(endBlock_ > startBlock_);
    |
  > |        startBlock = startBlock_;
    |        endBlock   = endBlock_;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(268)

[31mViolation[0m for UnrestrictedWrite in contract 'ViewlyMainSale':
    |
    |        startBlock = startBlock_;
  > |        endBlock   = endBlock_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(269)

[31mViolation[0m for UnrestrictedWrite in contract 'ViewlyMainSale':
    |
    |    function setWhitelistRequired(bool setting) public auth {
  > |        whitelistRequired = setting;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(296)

[31mViolation[0m for UnrestrictedWrite in contract 'ViewlyMainSale':
    |
    |        contributions[msg.sender] += msg.value;
  > |        totalContributedAmount += msg.value;
    |        LogContribute(msg.sender, msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(320)

[33mWarning[0m for UnrestrictedWrite in contract 'ViewlyMainSale':
    |        require(maxTotalAmount >= add(totalContributedAmount, msg.value));
    |
  > |        contributions[msg.sender] += msg.value;
    |        totalContributedAmount += msg.value;
    |        LogContribute(msg.sender, msg.value);
  at /home/jiaming/mavs_srcs/contract@0xdd1ace2f45962e4c1297c784009478865e3b13be.sol(319)


