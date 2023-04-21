Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:Court
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:EtherNomin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:ExternStateProxyFeeToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:ExternStateProxyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:Havven
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:HavvenEscrow
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:LimitedSetup
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:Proxy
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:Proxyable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:SafeDecimalMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:SelfDestructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol:TokenState
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'Court':
    |        }
    |
  > |        uint participation = safeDiv_dec(totalVotes, havven.totalSupply());
    |        uint fractionInFavour = safeDiv_dec(yeas, totalVotes);
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(691)

[33mWarning[0m for DAO in contract 'Court':
    |
    |        // Ensure the voter's vote weight is current.
  > |        havven.recomputeAccountLastAverageBalance(msg.sender);
    |
    |        uint weight;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(760)

[33mWarning[0m for DAO in contract 'Court':
    |        // the start of the vote. Select the right period if
    |        // a fee period rolls over in the middle of the vote.
  > |        if (motionStartTime[motionID] < havven.feePeriodStartTime()) {
    |            weight = havven.penultimateAverageBalance(msg.sender);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(766)

[33mWarning[0m for DAO in contract 'Court':
    |        // a fee period rolls over in the middle of the vote.
    |        if (motionStartTime[motionID] < havven.feePeriodStartTime()) {
  > |            weight = havven.penultimateAverageBalance(msg.sender);
    |        } else {
    |            weight = havven.lastAverageBalance(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(767)

[33mWarning[0m for LockedEther in contract 'Court':
    |*/
    |
  > |contract Court is Owned, SafeDecimalMath {
    |
    |    /* ========== STATE VARIABLES ========== */
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(495)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    }
    |
  > |    function nominateOwner(address _owner)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |
    |    // Mapping from motion IDs to target addresses.
  > |    mapping(uint => address) public motionTarget;
    |
    |    // The ID a motion on an address is currently operating at.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(536)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    // The ID a motion on an address is currently operating at.
    |    // Zero if no such motion is running.
  > |    mapping(address => uint) public targetMotionID;
    |
    |    // The timestamp at which a motion began. This is used to determine
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(540)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    // and then the confirmation period terminates no later than
    |    // (t + votingPeriod + confirmationPeriod).
  > |    mapping(uint => uint) public motionStartTime;
    |
    |    // The tallies for and against confiscation of a given balance.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(548)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    // These are set to zero at the start of a motion, and also on conclusion,
    |    // just to keep the state clean.
  > |    mapping(uint => uint) public votesFor;
    |    mapping(uint => uint) public votesAgainst;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(553)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    // just to keep the state clean.
    |    mapping(uint => uint) public votesFor;
  > |    mapping(uint => uint) public votesAgainst;
    |
    |    // The last/penultimate average balance of a user at the time they voted
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(554)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    // A given account's vote in some confiscation motion.
    |    // This requires the default value of the Vote enum to correspond to an abstention.
  > |    mapping(address => mapping(uint => Vote)) public vote;
    |
    |    /* ========== CONSTRUCTOR ========== */
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(572)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    /* ========== SETTERS ========== */
    |
  > |    function setMinStandingBalance(uint balance)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(587)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    /* There is a motion in progress on the specified
    |     * account, and votes are being accepted in that motion. */
  > |    function motionVoting(uint motionID)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(639)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    /* A vote on the target account has concluded, but the motion
    |     * has not yet been approved, vetoed, or closed. */
  > |    function motionConfirming(uint motionID)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(653)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |
    |    /* A vote motion either not begun, or it has completely terminated. */
  > |    function motionWaiting(uint motionID)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(666)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    /* If the motion was to terminate at this instant, it would pass.
    |     * That is: there was sufficient participation and a sizeable enough majority. */
  > |    function motionPasses(uint motionID)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(678)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |     * may elect to start such a motion.
    |     * Returns the ID of the motion that was begun. */
  > |    function beginMotion(address target)
    |        external
    |        returns (uint)
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(715)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    /* The sender casts a vote in favour of confiscation of the
    |     * target account's nomin balance. */
  > |    function voteFor(uint motionID)
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(782)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    /* The sender casts a vote against confiscation of the
    |     * target account's nomin balance. */
  > |    function voteAgainst(uint motionID)
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(793)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    /* Cancel an existing vote by the sender on a motion
    |     * to confiscate the target balance. */
  > |    function cancelVote(uint motionID)
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(804)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    /* If a motion has concluded, or if it lasted its full duration but not passed,
    |     * then anyone may close it. */
  > |    function closeMotion(uint motionID)
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(848)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |    /* The foundation may only confiscate a balance during the confirmation
    |     * period after a motion has passed. */
  > |    function approveMotion(uint motionID)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(857)

[31mViolation[0m for MissingInputValidation in contract 'Court':
    |
    |    /* The foundation may veto a motion at any time. */
  > |    function vetoMotion(uint motionID)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(869)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |
    |contract Owned {
  > |    address public owner;
    |    address public nominatedOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |contract Owned {
    |    address public owner;
  > |    address public nominatedOwner;
    |
    |    function Owned(address _owner)
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    }
    |
  > |    function acceptOwnership()
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |
    |    // Number of decimal places in the representation.
  > |    uint8 public constant decimals = 18;
    |
    |    // The number representing 1.0.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |
    |    // The number representing 1.0.
  > |    uint public constant UNIT = 10 ** uint(decimals);
    |
    |    /* True iff adding x and y will not overflow. */
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |
    |    /* Return the result of adding x and y, throwing an exception in case of overflow. */
  > |    function safeAdd(uint x, uint y)
    |        pure
    |        internal
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(273)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |
    |    /* Return the result of subtracting y from x, throwing an exception in case of overflow. */
  > |    function safeSub(uint x, uint y)
    |        pure
    |        internal
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(292)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |
    |    /* Return the result of multiplying x and y, throwing an exception in case of overflow.*/
  > |    function safeMul(uint x, uint y)
    |        pure
    |        internal
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(314)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |
    |    /* Return the result of dividing x by y, throwing an exception if the divisor is zero. */
  > |    function safeDiv(uint x, uint y)
    |        pure
    |        internal
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(358)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |     * Throws an exception in case of overflow or zero divisor; x must be less than 2^256 / UNIT.
    |     * Internal rounding is downward: a similar caveat holds as with safeDecMul().*/
  > |    function safeDiv_dec(uint x, uint y)
    |        pure
    |        internal
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(373)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |
    |    // The addresses of the token contracts this confiscation court interacts with.
  > |    Havven public havven;
    |    EtherNomin public nomin;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(500)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    // The addresses of the token contracts this confiscation court interacts with.
    |    Havven public havven;
  > |    EtherNomin public nomin;
    |
    |    // The minimum havven balance required to be considered to have standing
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(501)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    // The minimum havven balance required to be considered to have standing
    |    // to begin confiscation proceedings.
  > |    uint public minStandingBalance = 100 * UNIT;
    |
    |    // The voting period lasts for this duration,
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(505)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    // The voting period lasts for this duration,
    |    // and if set, must fall within the given bounds.
  > |    uint public votingPeriod = 1 weeks;
    |    uint constant MIN_VOTING_PERIOD = 3 days;
    |    uint constant MAX_VOTING_PERIOD = 4 weeks;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(509)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    // or veto a motion that has concluded.
    |    // If set, the confirmation duration must fall within the given bounds.
  > |    uint public confirmationPeriod = 1 weeks;
    |    uint constant MIN_CONFIRMATION_PERIOD = 1 days;
    |    uint constant MAX_CONFIRMATION_PERIOD = 2 weeks;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(516)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    // in order for a quorum to be reached.
    |    // The participation fraction required may be set no lower than 10%.
  > |    uint public requiredParticipation = 3 * UNIT / 10;
    |    uint constant MIN_REQUIRED_PARTICIPATION = UNIT / 10;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(523)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    // confiscation for the motion to pass.
    |    // The required majority may be no lower than 50%.
  > |    uint public requiredMajority = (2 * UNIT) / 3;
    |    uint constant MIN_REQUIRED_MAJORITY = UNIT / 2;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(529)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    }
    |
  > |    function setVotingPeriod(uint duration)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(597)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    }
    |
  > |    function setConfirmationPeriod(uint duration)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(609)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    }
    |
  > |    function setRequiredParticipation(uint fraction)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(618)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    }
    |
  > |    function setRequiredMajority(uint fraction)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(626)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    /* Shared vote setup function between voteFor and voteAgainst.
    |     * Returns the voter's vote weight. */
  > |    function setupVote(uint motionID)
    |        internal
    |        returns (uint)
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(745)

[33mWarning[0m for MissingInputValidation in contract 'Court':
    |    }
    |
  > |    function _closeMotion(uint motionID)
    |        internal
    |    {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(835)

[33mWarning[0m for UnhandledException in contract 'Court':
    |        // Require that the voting period is no longer than a single fee period,
    |        // So that a single vote can span at most two fee periods.
  > |        require(duration <= havven.targetFeePeriodDurationSeconds());
    |        votingPeriod = duration;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(605)

[33mWarning[0m for UnhandledException in contract 'Court':
    |        }
    |
  > |        uint participation = safeDiv_dec(totalVotes, havven.totalSupply());
    |        uint fractionInFavour = safeDiv_dec(yeas, totalVotes);
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(691)

[33mWarning[0m for UnhandledException in contract 'Court':
    |    {
    |        // A confiscation motion must be mooted by someone with standing.
  > |        require((havven.balanceOf(msg.sender) >= minStandingBalance) ||
    |                msg.sender == owner);
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(720)

[33mWarning[0m for UnhandledException in contract 'Court':
    |        // Require that the voting period is longer than a single fee period,
    |        // So that a single vote can span at most two fee periods.
  > |        require(votingPeriod <= havven.targetFeePeriodDurationSeconds());
    |
    |        // There must be no confiscation motion already running for this account.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(725)

[33mWarning[0m for UnhandledException in contract 'Court':
    |
    |        // Disallow votes on accounts that have previously been frozen.
  > |        require(!nomin.frozen(target));
    |
    |        uint motionID = nextMotionID++;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(731)

[33mWarning[0m for UnhandledException in contract 'Court':
    |
    |        // Ensure the voter's vote weight is current.
  > |        havven.recomputeAccountLastAverageBalance(msg.sender);
    |
    |        uint weight;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(760)

[33mWarning[0m for UnhandledException in contract 'Court':
    |        // the start of the vote. Select the right period if
    |        // a fee period rolls over in the middle of the vote.
  > |        if (motionStartTime[motionID] < havven.feePeriodStartTime()) {
    |            weight = havven.penultimateAverageBalance(msg.sender);
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(766)

[33mWarning[0m for UnhandledException in contract 'Court':
    |        // a fee period rolls over in the middle of the vote.
    |        if (motionStartTime[motionID] < havven.feePeriodStartTime()) {
  > |            weight = havven.penultimateAverageBalance(msg.sender);
    |        } else {
    |            weight = havven.lastAverageBalance(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(767)

[33mWarning[0m for UnhandledException in contract 'Court':
    |            weight = havven.penultimateAverageBalance(msg.sender);
    |        } else {
  > |            weight = havven.lastAverageBalance(msg.sender);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(769)

[33mWarning[0m for UnhandledException in contract 'Court':
    |        require(motionConfirming(motionID) && motionPasses(motionID));
    |        address target = motionTarget[motionID];
  > |        nomin.confiscateBalance(target);
    |        _closeMotion(motionID);
    |        emit MotionApproved(motionID, motionID);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(863)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Court':
    |        // Require that the voting period is no longer than a single fee period,
    |        // So that a single vote can span at most two fee periods.
  > |        require(duration <= havven.targetFeePeriodDurationSeconds());
    |        votingPeriod = duration;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(605)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Court':
    |    {
    |        // A confiscation motion must be mooted by someone with standing.
  > |        require((havven.balanceOf(msg.sender) >= minStandingBalance) ||
    |                msg.sender == owner);
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(720)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Court':
    |        // Require that the voting period is longer than a single fee period,
    |        // So that a single vote can span at most two fee periods.
  > |        require(votingPeriod <= havven.targetFeePeriodDurationSeconds());
    |
    |        // There must be no confiscation motion already running for this account.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(725)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Court':
    |
    |        // Disallow votes on accounts that have previously been frozen.
  > |        require(!nomin.frozen(target));
    |
    |        uint motionID = nextMotionID++;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(731)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Court':
    |        require(motionConfirming(motionID) && motionPasses(motionID));
    |        address target = motionTarget[motionID];
  > |        nomin.confiscateBalance(target);
    |        _closeMotion(motionID);
    |        emit MotionApproved(motionID, motionID);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(863)

[31mViolation[0m for UnrestrictedWrite in contract 'Court':
    |        require(!nomin.frozen(target));
    |
  > |        uint motionID = nextMotionID++;
    |        motionTarget[motionID] = target;
    |        targetMotionID[target] = motionID;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(733)

[31mViolation[0m for UnrestrictedWrite in contract 'Court':
    |
    |        uint motionID = nextMotionID++;
  > |        motionTarget[motionID] = target;
    |        targetMotionID[target] = motionID;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(734)

[31mViolation[0m for UnrestrictedWrite in contract 'Court':
    |        uint motionID = nextMotionID++;
    |        motionTarget[motionID] = target;
  > |        targetMotionID[target] = motionID;
    |
    |        motionStartTime[motionID] = now;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(735)

[31mViolation[0m for UnrestrictedWrite in contract 'Court':
    |        targetMotionID[target] = motionID;
    |
  > |        motionStartTime[motionID] = now;
    |        emit MotionBegun(msg.sender, msg.sender, target, target, motionID, motionID);
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(737)

[31mViolation[0m for UnrestrictedWrite in contract 'Court':
    |        internal
    |    {
  > |        delete targetMotionID[motionTarget[motionID]];
    |        delete motionTarget[motionID];
    |        delete motionStartTime[motionID];
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(838)

[31mViolation[0m for UnrestrictedWrite in contract 'Court':
    |    {
    |        delete targetMotionID[motionTarget[motionID]];
  > |        delete motionTarget[motionID];
    |        delete motionStartTime[motionID];
    |        delete votesFor[motionID];
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(839)

[31mViolation[0m for UnrestrictedWrite in contract 'Court':
    |        delete targetMotionID[motionTarget[motionID]];
    |        delete motionTarget[motionID];
  > |        delete motionStartTime[motionID];
    |        delete votesFor[motionID];
    |        delete votesAgainst[motionID];
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(840)

[31mViolation[0m for UnrestrictedWrite in contract 'Court':
    |        delete motionTarget[motionID];
    |        delete motionStartTime[motionID];
  > |        delete votesFor[motionID];
    |        delete votesAgainst[motionID];
    |        emit MotionClosed(motionID, motionID);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(841)

[31mViolation[0m for UnrestrictedWrite in contract 'Court':
    |        delete motionStartTime[motionID];
    |        delete votesFor[motionID];
  > |        delete votesAgainst[motionID];
    |        emit MotionClosed(motionID, motionID);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(842)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |        }
    |
  > |        delete voteWeight[msg.sender][motionID];
    |        delete vote[msg.sender][motionID];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(831)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |
    |        delete voteWeight[msg.sender][motionID];
  > |        delete vote[msg.sender][motionID];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(832)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |        // the foundation can set this value such that
    |        // anyone or no one can actually start a motion.
  > |        minStandingBalance = balance;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(594)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |        // So that a single vote can span at most two fee periods.
    |        require(duration <= havven.targetFeePeriodDurationSeconds());
  > |        votingPeriod = duration;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(606)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |        require(MIN_CONFIRMATION_PERIOD <= duration &&
    |                duration <= MAX_CONFIRMATION_PERIOD);
  > |        confirmationPeriod = duration;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(615)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |    {
    |        require(MIN_REQUIRED_PARTICIPATION <= fraction);
  > |        requiredParticipation = fraction;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(623)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |    {
    |        require(MIN_REQUIRED_MAJORITY <= fraction);
  > |        requiredMajority = fraction;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(631)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |        internal
    |    {
  > |        delete targetMotionID[motionTarget[motionID]];
    |        delete motionTarget[motionID];
    |        delete motionStartTime[motionID];
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(838)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |    {
    |        delete targetMotionID[motionTarget[motionID]];
  > |        delete motionTarget[motionID];
    |        delete motionStartTime[motionID];
    |        delete votesFor[motionID];
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(839)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |        delete targetMotionID[motionTarget[motionID]];
    |        delete motionTarget[motionID];
  > |        delete motionStartTime[motionID];
    |        delete votesFor[motionID];
    |        delete votesAgainst[motionID];
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(840)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |        delete motionTarget[motionID];
    |        delete motionStartTime[motionID];
  > |        delete votesFor[motionID];
    |        delete votesAgainst[motionID];
    |        emit MotionClosed(motionID, motionID);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(841)

[33mWarning[0m for UnrestrictedWrite in contract 'Court':
    |        delete motionStartTime[motionID];
    |        delete votesFor[motionID];
  > |        delete votesAgainst[motionID];
    |        emit MotionClosed(motionID, motionID);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(842)

[33mWarning[0m for LockedEther in contract 'ExternStateProxyFeeToken':
    |*/
    |
  > |contract ExternStateProxyFeeToken is Proxyable, SafeDecimalMath {
    |
    |    /* ========== STATE VARIABLES ========== */
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(915)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyFeeToken':
    |        returns (uint)
    |    {
  > |        return state.balanceOf(account);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(989)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyFeeToken':
    |        returns (uint)
    |    {
  > |        return state.allowance(from, to);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(997)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyFeeToken':
    |        returns (uint)
    |    {
  > |        return state.balanceOf(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1042)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyFeeToken':
    |    {
    |        address sender = messageSender;
  > |        state.setAllowance(sender, spender, value);
    |
    |        emit Approval(sender, spender, value);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1105)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyFeeToken':
    |
    |        // Safe subtraction ensures an exception is thrown if the balance is insufficient.
  > |        state.setBalanceOf(address(this), safeSub(state.balanceOf(address(this)), value));
    |        state.setBalanceOf(account, safeAdd(state.balanceOf(account), value));
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1125)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyFeeToken':
    |        // Safe subtraction ensures an exception is thrown if the balance is insufficient.
    |        state.setBalanceOf(address(this), safeSub(state.balanceOf(address(this)), value));
  > |        state.setBalanceOf(account, safeAdd(state.balanceOf(account), value));
    |
    |        emit FeesWithdrawn(account, account, value);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1126)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyFeeToken':
    |
    |        // Empty donations are disallowed.
  > |        uint balance = state.balanceOf(sender);
    |        require(balance != 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1143)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyFeeToken':
    |
    |        // safeSub ensures the donor has sufficient balance.
  > |        state.setBalanceOf(sender, safeSub(balance, n));
    |        state.setBalanceOf(address(this), safeAdd(state.balanceOf(address(this)), n));
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1147)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyFeeToken':
    |        // safeSub ensures the donor has sufficient balance.
    |        state.setBalanceOf(sender, safeSub(balance, n));
  > |        state.setBalanceOf(address(this), safeAdd(state.balanceOf(address(this)), n));
    |
    |        emit FeesDonated(sender, sender, n);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1148)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyFeeToken':
    |        returns (uint)
    |    {
  > |        return state.balanceOf(account);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(989)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyFeeToken':
    |        returns (uint)
    |    {
  > |        return state.allowance(from, to);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(997)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyFeeToken':
    |        returns (uint)
    |    {
  > |        return state.balanceOf(address(this));
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1042)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyFeeToken':
    |    {
    |        address sender = messageSender;
  > |        state.setAllowance(sender, spender, value);
    |
    |        emit Approval(sender, spender, value);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyFeeToken':
    |
    |        // Safe subtraction ensures an exception is thrown if the balance is insufficient.
  > |        state.setBalanceOf(address(this), safeSub(state.balanceOf(address(this)), value));
    |        state.setBalanceOf(account, safeAdd(state.balanceOf(account), value));
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1125)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyFeeToken':
    |        // Safe subtraction ensures an exception is thrown if the balance is insufficient.
    |        state.setBalanceOf(address(this), safeSub(state.balanceOf(address(this)), value));
  > |        state.setBalanceOf(account, safeAdd(state.balanceOf(account), value));
    |
    |        emit FeesWithdrawn(account, account, value);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyFeeToken':
    |
    |        // Empty donations are disallowed.
  > |        uint balance = state.balanceOf(sender);
    |        require(balance != 0);
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1143)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyFeeToken':
    |
    |        // safeSub ensures the donor has sufficient balance.
  > |        state.setBalanceOf(sender, safeSub(balance, n));
    |        state.setBalanceOf(address(this), safeAdd(state.balanceOf(address(this)), n));
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyFeeToken':
    |        // safeSub ensures the donor has sufficient balance.
    |        state.setBalanceOf(sender, safeSub(balance, n));
  > |        state.setBalanceOf(address(this), safeAdd(state.balanceOf(address(this)), n));
    |
    |        emit FeesDonated(sender, sender, n);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1148)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyFeeToken':
    |    {
    |        if (Proxy(msg.sender) != proxy) {
  > |            messageSender = msg.sender;
    |        }
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyFeeToken':
    |    {
    |        if (Proxy(msg.sender) != proxy) {
  > |            messageSender = msg.sender;
    |        }
    |        require(messageSender == owner);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyFeeToken':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyFeeToken':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyFeeToken':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyFeeToken':
    |        onlyOwner
    |    {
  > |        proxy = _proxy;
    |        emit ProxyChanged(_proxy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyFeeToken':
    |        onlyProxy
    |    {
  > |        messageSender = sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyFeeToken':
    |    {
    |        require(_transferFeeRate <= MAX_TRANSFER_FEE_RATE);
  > |        transferFeeRate = _transferFeeRate;
    |        emit TransferFeeRateUpdated(_transferFeeRate);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(962)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyFeeToken':
    |        optionalProxy_onlyOwner
    |    {
  > |        feeAuthority = _feeAuthority;
    |        emit FeeAuthorityUpdated(_feeAuthority);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(970)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyFeeToken':
    |        optionalProxy_onlyOwner
    |    {
  > |        state = _state;
    |        emit StateUpdated(_state);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(978)

[33mWarning[0m for LockedEther in contract 'ExternStateProxyToken':
    |*/
    |
  > |contract ExternStateProxyToken is SafeDecimalMath, Proxyable {
    |
    |    /* ========== STATE VARIABLES ========== */
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1849)

[31mViolation[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |    }
    |
  > |    function nominateOwner(address _owner)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |        public { }
    |
  > |    function setProxy(Proxy _proxy)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |    }
    |
  > |    function setMessageSender(address sender)
    |        external
    |        onlyProxy
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(198)

[31mViolation[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |    /* ========== VIEWS ========== */
    |
  > |    function allowance(address tokenOwner, address spender)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1886)

[31mViolation[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |    }
    |
  > |    function balanceOf(address account)
    |        public
    |        view
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1894)

[31mViolation[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |    /* ========== MUTATIVE FUNCTIONS ========== */
    |
  > |    function setState(TokenState _state)
    |        external
    |        optionalProxy_onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1904)

[31mViolation[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |    }
    |
  > |    function approve(address spender, uint value)
    |        external
    |        optionalProxy
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1945)

[33mWarning[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |
    |contract Owned {
  > |    address public owner;
    |    address public nominatedOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |contract Owned {
    |    address public owner;
  > |    address public nominatedOwner;
    |
    |    function Owned(address _owner)
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |    }
    |
  > |    function acceptOwnership()
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |contract Proxyable is Owned {
    |    // the proxy this contract exists behind.
  > |    Proxy public proxy;
    |
    |    // The caller of the proxy, passed through to this contract.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |
    |    // Number of decimal places in the representation.
  > |    uint8 public constant decimals = 18;
    |
    |    // The number representing 1.0.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |
    |    // The number representing 1.0.
  > |    uint public constant UNIT = 10 ** uint(decimals);
    |
    |    /* True iff adding x and y will not overflow. */
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |
    |    // Stores balances and allowances.
  > |    TokenState public state;
    |
    |    // Other ERC20 fields
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1854)

[33mWarning[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |
    |    // Other ERC20 fields
  > |    string public name;
    |    string public symbol;
    |    uint public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1857)

[33mWarning[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |    // Other ERC20 fields
    |    string public name;
  > |    string public symbol;
    |    uint public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1858)

[33mWarning[0m for MissingInputValidation in contract 'ExternStateProxyToken':
    |    string public name;
    |    string public symbol;
  > |    uint public totalSupply;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1859)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyToken':
    |        returns (uint)
    |    {
  > |        return state.allowance(tokenOwner, spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1891)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyToken':
    |        returns (uint)
    |    {
  > |        return state.balanceOf(account);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1899)

[33mWarning[0m for UnhandledException in contract 'ExternStateProxyToken':
    |    {
    |        address sender = messageSender;
  > |        state.setAllowance(sender, spender, value);
    |        emit Approval(sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1951)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyToken':
    |        returns (uint)
    |    {
  > |        return state.allowance(tokenOwner, spender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1891)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyToken':
    |        returns (uint)
    |    {
  > |        return state.balanceOf(account);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1899)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExternStateProxyToken':
    |    {
    |        address sender = messageSender;
  > |        state.setAllowance(sender, spender, value);
    |        emit Approval(sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1951)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyToken':
    |    {
    |        if (Proxy(msg.sender) != proxy) {
  > |            messageSender = msg.sender;
    |        }
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyToken':
    |    {
    |        if (Proxy(msg.sender) != proxy) {
  > |            messageSender = msg.sender;
    |        }
    |        require(messageSender == owner);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyToken':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyToken':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyToken':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyToken':
    |        onlyOwner
    |    {
  > |        proxy = _proxy;
    |        emit ProxyChanged(_proxy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyToken':
    |        onlyProxy
    |    {
  > |        messageSender = sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'ExternStateProxyToken':
    |        optionalProxy_onlyOwner
    |    {
  > |        state = _state;
    |        emit StateUpdated(_state);
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1908)

[31mViolation[0m for LockedEther in contract 'HavvenEscrow':
    |*/
    |
  > |contract HavvenEscrow is Owned, LimitedSetup(8 weeks), SafeDecimalMath {    
    |    // The corresponding Havven contract.
    |    Havven public havven;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1987)

[33mWarning[0m for UnhandledException in contract 'HavvenEscrow':
    |        setupFunction
    |    {
  > |        havven.transfer(havven, quantity);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2135)

[33mWarning[0m for UnhandledException in contract 'HavvenEscrow':
    |        require(quantity != 0);
    |        totalVestedBalance = safeAdd(totalVestedBalance, quantity);
  > |        require(totalVestedBalance <= havven.balanceOf(this));
    |
    |        if (vestingSchedules[account].length == 0) {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2165)

[33mWarning[0m for UnhandledException in contract 'HavvenEscrow':
    |        if (total != 0) {
    |            totalVestedBalance = safeSub(totalVestedBalance, total);
  > |            havven.transfer(msg.sender, total);
    |            emit Vested(msg.sender, msg.sender,
    |                   now, total);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2216)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HavvenEscrow':
    |        setupFunction
    |    {
  > |        havven.transfer(havven, quantity);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2135)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HavvenEscrow':
    |        require(quantity != 0);
    |        totalVestedBalance = safeAdd(totalVestedBalance, quantity);
  > |        require(totalVestedBalance <= havven.balanceOf(this));
    |
    |        if (vestingSchedules[account].length == 0) {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HavvenEscrow':
    |        if (total != 0) {
    |            totalVestedBalance = safeSub(totalVestedBalance, total);
  > |            havven.transfer(msg.sender, total);
    |            emit Vested(msg.sender, msg.sender,
    |                   now, total);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2216)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |/*
  > |-----------------------------------------------------------------
    |FILE HEADER
    |-----------------------------------------------------------------
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |*/
    |
  > |contract HavvenEscrow is Owned, LimitedSetup(8 weeks), SafeDecimalMath {    
    |    // The corresponding Havven contract.
    |    Havven public havven;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(1987)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |        onlyOwner
    |    {
  > |        havven = _havven;
    |        emit HavvenUpdated(_havven);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2018)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |    {
    |        delete vestingSchedules[account];
  > |        totalVestedBalance = safeSub(totalVestedBalance, totalVestedAccountBalance[account]);
    |        delete totalVestedAccountBalance[account];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2145)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |        delete vestingSchedules[account];
    |        totalVestedBalance = safeSub(totalVestedBalance, totalVestedAccountBalance[account]);
  > |        delete totalVestedAccountBalance[account];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2146)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |        require(now < time);
    |        require(quantity != 0);
  > |        totalVestedBalance = safeAdd(totalVestedBalance, quantity);
    |        require(totalVestedBalance <= havven.balanceOf(this));
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2164)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |
    |        if (vestingSchedules[account].length == 0) {
  > |            totalVestedAccountBalance[account] = quantity;
    |        } else {
    |            // Disallow adding new vested havvens earlier than the last one.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2168)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |            // Since entries are only appended, this means that no vesting date can be repeated.
    |            require(getVestingTime(account, numVestingEntries(account) - 1) < time);
  > |            totalVestedAccountBalance[account] = safeAdd(totalVestedAccountBalance[account], quantity);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2173)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |            vestingSchedules[msg.sender][i] = [0, 0];
    |            total = safeAdd(total, qty);
  > |            totalVestedAccountBalance[msg.sender] = safeSub(totalVestedAccountBalance[msg.sender], qty);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2211)

[33mWarning[0m for UnrestrictedWrite in contract 'HavvenEscrow':
    |
    |        if (total != 0) {
  > |            totalVestedBalance = safeSub(totalVestedBalance, total);
    |            havven.transfer(msg.sender, total);
    |            emit Vested(msg.sender, msg.sender,
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2215)

[33mWarning[0m for LockedEther in contract 'LimitedSetup':
    |*/
    |
  > |contract LimitedSetup {
    |
    |    uint constructionTime;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(36)

[33mWarning[0m for LockedEther in contract 'Owned':
    |*/
    |
  > |contract Owned {
    |    address public owner;
    |    address public nominatedOwner;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function nominateOwner(address _owner)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    address public nominatedOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public nominatedOwner;
    |
    |    function Owned(address _owner)
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function acceptOwnership()
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(96)

[33mWarning[0m for LockedEther in contract 'Proxy':
    |*/
    |
  > |contract Proxy is Owned {
    |    Proxyable target;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'Proxy':
    |    }
    |
  > |    function nominateOwner(address _owner)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |
    |contract Owned {
  > |    address public owner;
    |    address public nominatedOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |contract Owned {
    |    address public owner;
  > |    address public nominatedOwner;
    |
    |    function Owned(address _owner)
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |    }
    |
  > |    function acceptOwnership()
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Proxy':
    |    }
    |
  > |    function _setTarget(address _target) 
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxy':
    |    {
    |        require(_target != address(0));
  > |        target = Proxyable(_target);
    |        emit TargetChanged(_target);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(137)

[33mWarning[0m for LockedEther in contract 'Proxyable':
    |*/
    |
  > |contract Proxyable is Owned {
    |    // the proxy this contract exists behind.
    |    Proxy public proxy;
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'Proxyable':
    |    }
    |
  > |    function nominateOwner(address _owner)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'Proxyable':
    |        public { }
    |
  > |    function setProxy(Proxy _proxy)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(190)

[31mViolation[0m for MissingInputValidation in contract 'Proxyable':
    |    }
    |
  > |    function setMessageSender(address sender)
    |        external
    |        onlyProxy
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'Proxyable':
    |
    |contract Owned {
  > |    address public owner;
    |    address public nominatedOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'Proxyable':
    |contract Owned {
    |    address public owner;
  > |    address public nominatedOwner;
    |
    |    function Owned(address _owner)
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'Proxyable':
    |    }
    |
  > |    function acceptOwnership()
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Proxyable':
    |contract Proxyable is Owned {
    |    // the proxy this contract exists behind.
  > |    Proxy public proxy;
    |
    |    // The caller of the proxy, passed through to this contract.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxyable':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxyable':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxyable':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxyable':
    |        onlyOwner
    |    {
  > |        proxy = _proxy;
    |        emit ProxyChanged(_proxy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'Proxyable':
    |        onlyProxy
    |    {
  > |        messageSender = sender;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(202)

[33mWarning[0m for LockedEther in contract 'SafeDecimalMath':
    |*/
    |
  > |contract SafeDecimalMath {
    |
    |    // Number of decimal places in the representation.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(255)

[33mWarning[0m for MissingInputValidation in contract 'SafeDecimalMath':
    |
    |    // Number of decimal places in the representation.
  > |    uint8 public constant decimals = 18;
    |
    |    // The number representing 1.0.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'SafeDecimalMath':
    |
    |    // The number representing 1.0.
  > |    uint public constant UNIT = 10 ** uint(decimals);
    |
    |    /* True iff adding x and y will not overflow. */
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(261)

[33mWarning[0m for LockedEther in contract 'SelfDestructible':
    |*/
    |
  > |contract SelfDestructible is Owned {
    |	
    |	uint public initiationTime = ~uint(0);
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2242)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfDestructible':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfDestructible':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfDestructible':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfDestructible':
    |		onlyOwner
    |	{
  > |		beneficiary = _beneficiary;
    |		emit SelfDestructBeneficiaryUpdated(_beneficiary);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2259)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfDestructible':
    |		onlyOwner
    |	{
  > |		initiationTime = now;
    |		emit SelfDestructInitiated(SD_DURATION);
    |	}
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2267)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfDestructible':
    |		onlyOwner
    |	{
  > |		initiationTime = ~uint(0);
    |		emit SelfDestructTerminated();
    |	}
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2275)

[33mWarning[0m for LockedEther in contract 'TokenState':
    |*/
    |
  > |contract TokenState is Owned {
    |
    |    // the address of the contract that can modify balances and allowances
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2791)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |    }
    |
  > |    function nominateOwner(address _owner)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |
    |    // ERC20 fields.
  > |    mapping(address => uint) public balanceOf;
    |    mapping(address => mapping(address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2798)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |    // ERC20 fields.
    |    mapping(address => uint) public balanceOf;
  > |    mapping(address => mapping(address => uint256)) public allowance;
    |
    |    function TokenState(address _owner, address _associatedContract)
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2799)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |
    |    // Change the associated contract to a new address
  > |    function setAssociatedContract(address _associatedContract)
    |        external
    |        onlyOwner
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2812)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |    }
    |
  > |    function setAllowance(address tokenOwner, address spender, uint value)
    |        external
    |        onlyAssociatedContract
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2820)

[31mViolation[0m for MissingInputValidation in contract 'TokenState':
    |    }
    |
  > |    function setBalanceOf(address account, uint value)
    |        external
    |        onlyAssociatedContract
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2827)

[33mWarning[0m for MissingInputValidation in contract 'TokenState':
    |
    |contract Owned {
  > |    address public owner;
    |    address public nominatedOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'TokenState':
    |contract Owned {
    |    address public owner;
  > |    address public nominatedOwner;
    |
    |    function Owned(address _owner)
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'TokenState':
    |    }
    |
  > |    function acceptOwnership()
    |        external
    |    {
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'TokenState':
    |    // the address of the contract that can modify balances and allowances
    |    // this can only be changed by the owner of this contract
  > |    address public associatedContract;
    |
    |    // ERC20 fields.
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2795)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        onlyOwner
    |    {
  > |        nominatedOwner = _owner;
    |        emit OwnerNominated(_owner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        require(msg.sender == nominatedOwner);
    |        emit OwnerChanged(owner, nominatedOwner);
  > |        owner = nominatedOwner;
    |        nominatedOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        emit OwnerChanged(owner, nominatedOwner);
    |        owner = nominatedOwner;
  > |        nominatedOwner = address(0);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        onlyOwner
    |    {
  > |        associatedContract = _associatedContract;
    |        emit AssociatedContractUpdated(_associatedContract);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2816)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        onlyAssociatedContract
    |    {
  > |        allowance[tokenOwner][spender] = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2824)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenState':
    |        onlyAssociatedContract
    |    {
  > |        balanceOf[account] = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x971e78e0c92392a4e39099835cf7e6ab535b2227.sol(2831)


