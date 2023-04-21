Processing contract: /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol:IContractId
Processing contract: /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol:Math
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol:PlatformTerms
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Math':
    |pragma solidity 0.4.25;
    |
  > |contract Math {
    |
    |    ////////////////////////
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(3)

[33mWarning[0m for LockedEther in contract 'PlatformTerms':
    |
    |/// @title set terms of Platform (investor's network) of the ETO
  > |contract PlatformTerms is Math, IContractId {
    |
    |    ////////////////////////
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |
    |    // divide v by d, round up if remainder is 0.5 or more
  > |    function divRound(uint256 v, uint256 d)
    |        internal
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    // mind loss of precision as decimal fractions do not have finite binary expansion
    |    // do not use instead of division
  > |    function decimalFraction(uint256 amount, uint256 frac)
    |        internal
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    // computes part/total of amount with maximum precision (multiplication first)
    |    // part and total must have the same units
  > |    function proportion(uint256 amount, uint256 part, uint256 total)
    |        internal
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    //
    |
  > |    function mul(uint256 a, uint256 b)
    |        internal
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    }
    |
  > |    function add(uint256 a, uint256 b)
    |        internal
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |
    |    // fraction of fee deduced on successful ETO (see Math.sol for fraction definition)
  > |    uint256 public constant PLATFORM_FEE_FRACTION = 3 * 10**16;
    |    // fraction of tokens deduced on succesful ETO
    |    uint256 public constant TOKEN_PARTICIPATION_FEE_FRACTION = 2 * 10**16;
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    uint256 public constant PLATFORM_FEE_FRACTION = 3 * 10**16;
    |    // fraction of tokens deduced on succesful ETO
  > |    uint256 public constant TOKEN_PARTICIPATION_FEE_FRACTION = 2 * 10**16;
    |    // share of Neumark reward platform operator gets
    |    // actually this is a divisor that splits Neumark reward in two parts
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    // actually this is a divisor that splits Neumark reward in two parts
    |    // the results of division belongs to platform operator, the remaining reward part belongs to investor
  > |    uint256 public constant PLATFORM_NEUMARK_SHARE = 2; // 50:50 division
    |    // ICBM investors whitelisted by default
    |    bool public constant IS_ICBM_INVESTOR_WHITELISTED = true;
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(126)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    uint256 public constant PLATFORM_NEUMARK_SHARE = 2; // 50:50 division
    |    // ICBM investors whitelisted by default
  > |    bool public constant IS_ICBM_INVESTOR_WHITELISTED = true;
    |
    |    // minimum ticket size Platform accepts in EUR ULPS
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |
    |    // minimum ticket size Platform accepts in EUR ULPS
  > |    uint256 public constant MIN_TICKET_EUR_ULPS = 100 * 10**18;
    |    // maximum ticket size Platform accepts in EUR ULPS
    |    // no max ticket in general prospectus regulation
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |
    |    // min duration from setting the date to ETO start
  > |    uint256 public constant DATE_TO_WHITELIST_MIN_DURATION = 7 days;
    |    // token rate expires after
    |    uint256 public constant TOKEN_RATE_EXPIRES_AFTER = 4 hours;
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    uint256 public constant DATE_TO_WHITELIST_MIN_DURATION = 7 days;
    |    // token rate expires after
  > |    uint256 public constant TOKEN_RATE_EXPIRES_AFTER = 4 hours;
    |
    |    // duration constraints
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |
    |    // duration constraints
  > |    uint256 public constant MIN_WHITELIST_DURATION = 0 days;
    |    uint256 public constant MAX_WHITELIST_DURATION = 30 days;
    |    uint256 public constant MIN_PUBLIC_DURATION = 0 days;
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    // duration constraints
    |    uint256 public constant MIN_WHITELIST_DURATION = 0 days;
  > |    uint256 public constant MAX_WHITELIST_DURATION = 30 days;
    |    uint256 public constant MIN_PUBLIC_DURATION = 0 days;
    |    uint256 public constant MAX_PUBLIC_DURATION = 60 days;
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    uint256 public constant MIN_WHITELIST_DURATION = 0 days;
    |    uint256 public constant MAX_WHITELIST_DURATION = 30 days;
  > |    uint256 public constant MIN_PUBLIC_DURATION = 0 days;
    |    uint256 public constant MAX_PUBLIC_DURATION = 60 days;
    |
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    uint256 public constant MAX_WHITELIST_DURATION = 30 days;
    |    uint256 public constant MIN_PUBLIC_DURATION = 0 days;
  > |    uint256 public constant MAX_PUBLIC_DURATION = 60 days;
    |
    |    // minimum length of whole offer
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |
    |    // minimum length of whole offer
  > |    uint256 public constant MIN_OFFER_DURATION = 1 days;
    |    // quarter should be enough for everyone
    |    uint256 public constant MAX_OFFER_DURATION = 90 days;
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    uint256 public constant MIN_OFFER_DURATION = 1 days;
    |    // quarter should be enough for everyone
  > |    uint256 public constant MAX_OFFER_DURATION = 90 days;
    |
    |    uint256 public constant MIN_SIGNING_DURATION = 14 days;
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(150)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    uint256 public constant MAX_OFFER_DURATION = 90 days;
    |
  > |    uint256 public constant MIN_SIGNING_DURATION = 14 days;
    |    uint256 public constant MAX_SIGNING_DURATION = 60 days;
    |
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |
    |    uint256 public constant MIN_SIGNING_DURATION = 14 days;
  > |    uint256 public constant MAX_SIGNING_DURATION = 60 days;
    |
    |    uint256 public constant MIN_CLAIM_DURATION = 7 days;
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    uint256 public constant MAX_SIGNING_DURATION = 60 days;
    |
  > |    uint256 public constant MIN_CLAIM_DURATION = 7 days;
    |    uint256 public constant MAX_CLAIM_DURATION = 30 days;
    |
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |
    |    uint256 public constant MIN_CLAIM_DURATION = 7 days;
  > |    uint256 public constant MAX_CLAIM_DURATION = 30 days;
    |
    |    // time after which claimable tokens become recycleable in fee disbursal pool
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |
    |    // time after which claimable tokens become recycleable in fee disbursal pool
  > |    uint256 public constant DEFAULT_DISBURSAL_RECYCLE_AFTER_DURATION = 4 * 365 days;
    |
    |    ////////////////////////
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |
    |    // calculates investor's and platform operator's neumarks from total reward
  > |    function calculateNeumarkDistribution(uint256 rewardNmk)
    |        public
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    }
    |
  > |    function calculatePlatformTokenFee(uint256 tokenAmount)
    |        public
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    }
    |
  > |    function calculatePlatformFee(uint256 amount)
    |        public
    |        pure
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'PlatformTerms':
    |    //
    |
  > |    function contractId() public pure returns (bytes32 id, uint256 version) {
    |        return (0x95482babc4e32de6c4dc3910ee7ae62c8e427efde6bc4e9ce0d6d93e24c39323, 1);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x31f618d1fd4c62a6c7d0a7a162f08f44eac3e13a.sol(198)


