Processing contract: /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol:NumeraireDelegate
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol:NumeraireShared
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol:Safe
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol:Shareable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol:StoppableShareable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'NumeraireDelegate':
    |
    |        if (_etherValue > 0) {
  > |            if (!_staker.send(_etherValue)) {
    |                stake.amount = originalStakeAmount;
    |                balanceOf[_staker] -= originalStakeAmount; // safe because we just added it
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(359)

[33mWarning[0m for LockedEther in contract 'NumeraireDelegate':
    |
    |// Whoever creates the contract has the power to stop it, this person can be changed via transferOwnership(_new_address)
  > |contract NumeraireDelegate is StoppableShareable, NumeraireShared {
    |
    |    function NumeraireDelegate(address[] _owners, uint256 _num_required) StoppableShareable(_owners, _num_required) {
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(320)

[33mWarning[0m for TODAmount in contract 'NumeraireDelegate':
    |
    |        if (_etherValue > 0) {
  > |            if (!_staker.send(_etherValue)) {
    |                stake.amount = originalStakeAmount;
    |                balanceOf[_staker] -= originalStakeAmount; // safe because we just added it
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(359)

[33mWarning[0m for TODReceiver in contract 'NumeraireDelegate':
    |
    |        if (_etherValue > 0) {
  > |            if (!_staker.send(_etherValue)) {
    |                stake.amount = originalStakeAmount;
    |                balanceOf[_staker] -= originalStakeAmount; // safe because we just added it
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(359)

[33mWarning[0m for UnhandledException in contract 'NumeraireDelegate':
    |
    |        if (_etherValue > 0) {
  > |            if (!_staker.send(_etherValue)) {
    |                stake.amount = originalStakeAmount;
    |                balanceOf[_staker] -= originalStakeAmount; // safe because we just added it
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(359)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NumeraireDelegate':
    |
    |        if (_etherValue > 0) {
  > |            if (!_staker.send(_etherValue)) {
    |                stake.amount = originalStakeAmount;
    |                balanceOf[_staker] -= originalStakeAmount; // safe because we just added it
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(359)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        require(_value <= getMintable());
    |
  > |        balanceOf[numerai] = safeAdd(balanceOf[numerai], _value);
    |        totalSupply = safeAdd(totalSupply, _value);
    |        total_minted = safeAdd(total_minted, _value);
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |
    |        balanceOf[numerai] = safeAdd(balanceOf[numerai], _value);
  > |        totalSupply = safeAdd(totalSupply, _value);
    |        total_minted = safeAdd(total_minted, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        balanceOf[numerai] = safeAdd(balanceOf[numerai], _value);
    |        totalSupply = safeAdd(totalSupply, _value);
  > |        total_minted = safeAdd(total_minted, _value);
    |
    |        // Notify anyone listening.
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(335)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        require(round.resolutionTime <= block.timestamp);
    |
  > |        stake.amount = 0;
    |        balanceOf[_staker] = safeAdd(balanceOf[_staker], originalStakeAmount);
    |        stake.resolved = true;
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(353)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |
    |        stake.amount = 0;
  > |        balanceOf[_staker] = safeAdd(balanceOf[_staker], originalStakeAmount);
    |        stake.resolved = true;
    |        stake.successful = _successful;
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(354)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        stake.amount = 0;
    |        balanceOf[_staker] = safeAdd(balanceOf[_staker], originalStakeAmount);
  > |        stake.resolved = true;
    |        stake.successful = _successful;
    |
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(355)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        balanceOf[_staker] = safeAdd(balanceOf[_staker], originalStakeAmount);
    |        stake.resolved = true;
  > |        stake.successful = _successful;
    |
    |        if (_etherValue > 0) {
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(356)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        if (_etherValue > 0) {
    |            if (!_staker.send(_etherValue)) {
  > |                stake.amount = originalStakeAmount;
    |                balanceOf[_staker] -= originalStakeAmount; // safe because we just added it
    |                stake.resolved = false;
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |            if (!_staker.send(_etherValue)) {
    |                stake.amount = originalStakeAmount;
  > |                balanceOf[_staker] -= originalStakeAmount; // safe because we just added it
    |                stake.resolved = false;
    |                stake.successful = false;
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |                stake.amount = originalStakeAmount;
    |                balanceOf[_staker] -= originalStakeAmount; // safe because we just added it
  > |                stake.resolved = false;
    |                stake.successful = false;
    |                return false;
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(362)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |                balanceOf[_staker] -= originalStakeAmount; // safe because we just added it
    |                stake.resolved = false;
  > |                stake.successful = false;
    |                return false;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |
    |        stake.amount = 0;
  > |        totalSupply = safeSubtract(totalSupply, originalStakeAmount);
    |        stake.resolved = true;
    |        stake.successful = false;
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(383)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        stake.amount = 0;
    |        totalSupply = safeSubtract(totalSupply, originalStakeAmount);
  > |        stake.resolved = true;
    |        stake.successful = false;
    |
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        totalSupply = safeSubtract(totalSupply, originalStakeAmount);
    |        stake.resolved = true;
  > |        stake.successful = false;
    |
    |        StakeDestroyed(_tournamentID, _roundID, _staker, _tag);
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(385)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        // Keep these two lines together so that the Solidity optimizer can
    |        // merge them into a single SSTORE.
  > |        stake.amount = shrink128(safeAdd(stake.amount, _value));
    |        stake.confidence = shrink128(_confidence);
    |
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        // merge them into a single SSTORE.
    |        stake.amount = shrink128(safeAdd(stake.amount, _value));
  > |        stake.confidence = shrink128(_confidence);
    |
    |        balanceOf[_staker] = safeSubtract(balanceOf[_staker], _value);
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(420)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        stake.confidence = shrink128(_confidence);
    |
  > |        balanceOf[_staker] = safeSubtract(balanceOf[_staker], _value);
    |
    |        // Notify anyone listening.
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(422)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        require(balanceOf[numerai] >= _value);
    |
  > |        balanceOf[numerai] = safeSubtract(balanceOf[numerai], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(444)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |
    |        balanceOf[numerai] = safeSubtract(balanceOf[numerai], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |
    |        // Notify anyone listening.
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(445)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |        require(balanceOf[_from] >= _value);
    |
  > |        balanceOf[_from] = safeSubtract(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(462)

[33mWarning[0m for UnrestrictedWrite in contract 'NumeraireDelegate':
    |
    |        balanceOf[_from] = safeSubtract(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(463)

[31mViolation[0m for LockedEther in contract 'NumeraireShared':
    |// Class variables used both in NumeraireBackend and NumeraireDelegate
    |
  > |contract NumeraireShared is Safe {
    |
    |    address public numerai = this;
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(253)

[31mViolation[0m for MissingInputValidation in contract 'NumeraireShared':
    |    // ERC20 requires totalSupply, balanceOf, and allowance
    |    uint256 public totalSupply;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(268)

[31mViolation[0m for MissingInputValidation in contract 'NumeraireShared':
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    mapping (uint => Tournament) public tournaments;  // tournamentID
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(269)

[31mViolation[0m for MissingInputValidation in contract 'NumeraireShared':
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  > |    mapping (uint => Tournament) public tournaments;  // tournamentID
    |
    |    struct Tournament {
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(271)

[33mWarning[0m for MissingInputValidation in contract 'NumeraireShared':
    |contract Safe {
    |    // Check if it is safe to add two numbers
  > |    function safeAdd(uint a, uint b) internal returns (uint) {
    |        uint c = a + b;
    |        assert(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'NumeraireShared':
    |
    |    // Check if it is safe to subtract two numbers
  > |    function safeSubtract(uint a, uint b) internal returns (uint) {
    |        uint c = a - b;
    |        assert(b <= a && c <= a);
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'NumeraireShared':
    |    }
    |
  > |    function safeMultiply(uint a, uint b) internal returns (uint) {
    |        uint c = a * b;
    |        assert(a == 0 || (c / a) == b);
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'NumeraireShared':
    |contract NumeraireShared is Safe {
    |
  > |    address public numerai = this;
    |
    |    // Cap the total supply and the weekly supply
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(255)

[33mWarning[0m for MissingInputValidation in contract 'NumeraireShared':
    |
    |    // Cap the total supply and the weekly supply
  > |    uint256 public supply_cap = 21000000e18; // 21 million
    |    uint256 public weekly_disbursement = 96153846153846153846153;
    |
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(258)

[33mWarning[0m for MissingInputValidation in contract 'NumeraireShared':
    |    // Cap the total supply and the weekly supply
    |    uint256 public supply_cap = 21000000e18; // 21 million
  > |    uint256 public weekly_disbursement = 96153846153846153846153;
    |
    |    uint256 public initial_disbursement;
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(259)

[33mWarning[0m for MissingInputValidation in contract 'NumeraireShared':
    |    uint256 public weekly_disbursement = 96153846153846153846153;
    |
  > |    uint256 public initial_disbursement;
    |    uint256 public deploy_time;
    |
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'NumeraireShared':
    |
    |    uint256 public initial_disbursement;
  > |    uint256 public deploy_time;
    |
    |    uint256 public total_minted;
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(262)

[33mWarning[0m for MissingInputValidation in contract 'NumeraireShared':
    |    uint256 public deploy_time;
    |
  > |    uint256 public total_minted;
    |
    |    // ERC20 requires totalSupply, balanceOf, and allowance
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(264)

[33mWarning[0m for MissingInputValidation in contract 'NumeraireShared':
    |
    |    // ERC20 requires totalSupply, balanceOf, and allowance
  > |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(267)

[33mWarning[0m for MissingInputValidation in contract 'NumeraireShared':
    |
    |    // Calculate allowable disbursement
  > |    function getMintable() constant returns (uint256) {
    |        return
    |            safeSubtract(
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(308)

[31mViolation[0m for LockedEther in contract 'Safe':
    |}
    |
  > |contract Safe {
    |    // Check if it is safe to add two numbers
    |    function safeAdd(uint a, uint b) internal returns (uint) {
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(214)

[33mWarning[0m for LockedEther in contract 'Shareable':
    | * use modifiers onlyowner (just own owned) or onlymanyowners(hash), whereby the same hash must be provided by some number (specified in constructor) of the set of owners (specified in the constructor) before the interior is executed.
    | */
  > |contract Shareable {
    |  // TYPES
    |
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(14)

[33mWarning[0m for LockedEther in contract 'StoppableShareable':
    | * emergency stop mechanism.
    | */
  > |contract StoppableShareable is Shareable {
    |  bool public stopped;
    |  bool public stoppable = true;
  at /home/jiaming/mavs_srcs/contract@0x3548718a49ee7cd348e50290d446d9f1a1f9c59e.sol(186)


