Processing contract: /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol:ConflictResolution
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol:ConflictResolutionInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol:MathUtil
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ConflictResolution':
    |}
    |
  > |contract ConflictResolution is ConflictResolutionInterface {
    |    uint public constant DICE_RANGE = 100;
    |    uint public constant HOUSE_EDGE = 150;
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |
    |contract ConflictResolution is ConflictResolutionInterface {
  > |    uint public constant DICE_RANGE = 100;
    |    uint public constant HOUSE_EDGE = 150;
    |    uint public constant HOUSE_EDGE_DIVISOR = 10000;
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |contract ConflictResolution is ConflictResolutionInterface {
    |    uint public constant DICE_RANGE = 100;
  > |    uint public constant HOUSE_EDGE = 150;
    |    uint public constant HOUSE_EDGE_DIVISOR = 10000;
    |
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |    uint public constant DICE_RANGE = 100;
    |    uint public constant HOUSE_EDGE = 150;
  > |    uint public constant HOUSE_EDGE_DIVISOR = 10000;
    |
    |    uint public constant SERVER_TIMEOUT = 6 hours;
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |    uint public constant HOUSE_EDGE_DIVISOR = 10000;
    |
  > |    uint public constant SERVER_TIMEOUT = 6 hours;
    |    uint public constant PLAYER_TIMEOUT = 6 hours;
    |
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |
    |    uint public constant SERVER_TIMEOUT = 6 hours;
  > |    uint public constant PLAYER_TIMEOUT = 6 hours;
    |
    |    uint8 public constant DICE_LOWER = 1; ///< @dev dice game lower number wins
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |    uint public constant PLAYER_TIMEOUT = 6 hours;
    |
  > |    uint8 public constant DICE_LOWER = 1; ///< @dev dice game lower number wins
    |    uint8 public constant DICE_HIGHER = 2; ///< @dev dice game higher number wins
    |
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |
    |    uint8 public constant DICE_LOWER = 1; ///< @dev dice game lower number wins
  > |    uint8 public constant DICE_HIGHER = 2; ///< @dev dice game higher number wins
    |
    |    uint public constant MAX_BET_VALUE = 2e16; /// max 0.02 ether bet
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |    uint8 public constant DICE_HIGHER = 2; ///< @dev dice game higher number wins
    |
  > |    uint public constant MAX_BET_VALUE = 2e16; /// max 0.02 ether bet
    |    uint public constant MIN_BET_VALUE = 1e13; /// min 0.00001 ether bet
    |
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |
    |    uint public constant MAX_BET_VALUE = 2e16; /// max 0.02 ether bet
  > |    uint public constant MIN_BET_VALUE = 1e13; /// min 0.00001 ether bet
    |
    |    int public constant NOT_ENDED_FINE = 1e15; /// 0.001 ether
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |    uint public constant MIN_BET_VALUE = 1e13; /// min 0.00001 ether bet
    |
  > |    int public constant NOT_ENDED_FINE = 1e15; /// 0.001 ether
    |
    |    int public constant MAX_BALANCE = int(MAX_BET_VALUE) * 100 * 5;
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |    int public constant NOT_ENDED_FINE = 1e15; /// 0.001 ether
    |
  > |    int public constant MAX_BALANCE = int(MAX_BET_VALUE) * 100 * 5;
    |
    |    modifier onlyValidBet(uint8 _gameType, uint _betNum, uint _betValue) {
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * @return True if bet is valid false otherwise.
    |     */
  > |    function isValidBet(uint8 _gameType, uint _betNum, uint _betValue) public pure returns(bool) {
    |        bool validValue = MIN_BET_VALUE <= _betValue && _betValue <= MAX_BET_VALUE;
    |        bool validGame = false;
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * @return Max balance.
    |     */
  > |    function maxBalance() public pure returns(int) {
    |        return MAX_BALANCE;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * Calculate minimum needed house stake.
    |     */
  > |    function minHouseStake(uint activeGames) public pure returns(uint) {
    |        return  MathUtil.min(activeGames, 1) * MAX_BET_VALUE * 400;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * @return New game session balance.
    |     */
  > |    function serverForceGameEnd(
    |        uint8 _gameType,
    |        uint _betNum,
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(162)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * @return New game session balance.
    |     */
  > |    function playerForceGameEnd(
    |        uint8 _gameType,
    |        uint _betNum,
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(206)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * return new balance.
    |     */
  > |    function processBet(
    |        uint8 _gameType,
    |        uint _betNum,
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * return profit of player
    |     */
  > |    function calculateProfit(uint8 _gameType, uint _betNum, uint _betValue) private pure returns(int) {
    |        uint betValueInGwei = _betValue / 1e9; // convert to gwei
    |        int res = 0;
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(275)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * @return player profit in gwei.
    |     */
  > |    function calcProfitFromTotalWon(uint _totalWon, uint _betValue) private pure returns(int) {
    |        // safe to multiply as _totalWon range is fixed.
    |        uint houseEdgeValue = _totalWon * HOUSE_EDGE / HOUSE_EDGE_DIVISOR;
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(294)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * @return Players' profit.
    |     */
  > |    function calculateProfitGameType1(uint _betNum, uint _betValue) private pure returns(int) {
    |        assert(_betNum > 0 && _betNum < DICE_RANGE);
    |
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(308)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * @return Players' profit.
    |     */
  > |    function calculateProfitGameType2(uint _betNum, uint _betValue) private pure returns(int) {
    |        assert(_betNum >= 0 && _betNum < DICE_RANGE - 1);
    |
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(322)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * @return true if player has won.
    |     */
  > |    function hasPlayerWon(
    |        uint8 _gameType,
    |        uint _betNum,
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(334)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * @return True if player has won false if he lost.
    |     */
  > |    function calculateWinnerGameType1(uint _randomNum, uint _betNum) private pure returns(bool) {
    |        assert(_betNum > 0 && _betNum < DICE_RANGE);
    |
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(362)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * @return True if player has won false if he lost.
    |     */
  > |    function calculateWinnerGameType2(uint _randomNum, uint _betNum) private pure returns(bool) {
    |        assert(_betNum >= 0 && _betNum < DICE_RANGE - 1);
    |
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(375)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolution':
    |     * @dev Calculate minimum.
    |     */
  > |    function min(uint _val1, uint _val2) internal pure returns(uint) {
    |        return _val1 <= _val2 ? _val1 : _val2;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(407)

[33mWarning[0m for LockedEther in contract 'MathUtil':
    |}
    |
  > |library MathUtil {
    |    /**
    |     * @dev Returns the absolute value of _val.
  at /home/jiaming/mavs_srcs/contract@0xddde2d9a455a038ea1f54ba9553dd093c75cf299.sol(383)


