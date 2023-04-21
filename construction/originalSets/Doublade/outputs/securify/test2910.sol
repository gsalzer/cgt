Processing contract: /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol:ConflictResolutionInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol:ConflictResolutionManager
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol:Destroyable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol:GameChannel
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol:GameChannelBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol:GameChannelConflict
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol:MathUtil
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ConflictResolutionManager':
    |}
    |
  > |contract ConflictResolutionManager is Ownable {
    |    /// @dev Conflict resolution contract.
    |    ConflictResolutionInterface public conflictRes;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'ConflictResolutionManager':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        pendingOwner = _newOwner;
    |        emit LogOwnerShipTransferInitiated(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'ConflictResolutionManager':
    |     * @param _newConflictResAddress New conflict resolution contract address.
    |     */
  > |    function updateConflictResolution(address _newConflictResAddress) public onlyOwner {
    |        newConflictRes = _newConflictResAddress;
    |        updateTime = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolutionManager':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolutionManager':
    |contract Ownable {
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    event LogOwnerShipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolutionManager':
    |     * @dev New owner can accpet ownership.
    |     */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolutionManager':
    |contract ConflictResolutionManager is Ownable {
    |    /// @dev Conflict resolution contract.
  > |    ConflictResolutionInterface public conflictRes;
    |
    |    /// @dev New Conflict resolution contract.
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolutionManager':
    |
    |    /// @dev New Conflict resolution contract.
  > |    address public newConflictRes = 0;
    |
    |    /// @dev Time update of new conflict resolution contract was initiated.
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolutionManager':
    |
    |    /// @dev Time update of new conflict resolution contract was initiated.
  > |    uint public updateTime = 0;
    |
    |    /// @dev Min time before new conflict res contract can be activated after initiating update.
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolutionManager':
    |
    |    /// @dev Min time before new conflict res contract can be activated after initiating update.
  > |    uint public constant MIN_TIMEOUT = 3 days;
    |
    |    /// @dev Min time before new conflict res contract can be activated after initiating update.
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolutionManager':
    |
    |    /// @dev Min time before new conflict res contract can be activated after initiating update.
  > |    uint public constant MAX_TIMEOUT = 6 days;
    |
    |    /// @dev Update of conflict resolution contract was initiated.
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'ConflictResolutionManager':
    |     * @dev Active new conflict resolution contract.
    |     */
  > |    function activateConflictResolution() public onlyOwner {
    |        require(newConflictRes != 0);
    |        require(updateTime != 0);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'ConflictResolutionManager':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        pendingOwner = _newOwner;
    |        emit LogOwnerShipTransferInitiated(owner, _newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'ConflictResolutionManager':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'ConflictResolutionManager':
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'ConflictResolutionManager':
    |     */
    |    function updateConflictResolution(address _newConflictResAddress) public onlyOwner {
  > |        newConflictRes = _newConflictResAddress;
    |        updateTime = block.timestamp;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'ConflictResolutionManager':
    |    function updateConflictResolution(address _newConflictResAddress) public onlyOwner {
    |        newConflictRes = _newConflictResAddress;
  > |        updateTime = block.timestamp;
    |
    |        emit LogUpdatingConflictResolution(_newConflictResAddress);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'ConflictResolutionManager':
    |        require(updateTime + MIN_TIMEOUT <= block.timestamp && block.timestamp <= updateTime + MAX_TIMEOUT);
    |
  > |        conflictRes = ConflictResolutionInterface(newConflictRes);
    |        newConflictRes = 0;
    |        updateTime = 0;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'ConflictResolutionManager':
    |
    |        conflictRes = ConflictResolutionInterface(newConflictRes);
  > |        newConflictRes = 0;
    |        updateTime = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'ConflictResolutionManager':
    |        conflictRes = ConflictResolutionInterface(newConflictRes);
    |        newConflictRes = 0;
  > |        updateTime = 0;
    |
    |        emit LogUpdatedConflictResolution(newConflictRes);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(178)

[33mWarning[0m for LockedEther in contract 'Destroyable':
    |}
    |
  > |contract Destroyable is Pausable {
    |    /// @dev After pausing the contract for 20 days owner can selfdestruct it.
    |    uint public constant TIMEOUT_DESTROY = 20 days;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'Destroyable':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        pendingOwner = _newOwner;
    |        emit LogOwnerShipTransferInitiated(owner, _newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Destroyable':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Destroyable':
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Destroyable':
    |     */
    |    function pause() public onlyOwner onlyNotPaused {
  > |        paused = true;
    |        timePaused = block.timestamp;
    |        emit LogPause();
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'Destroyable':
    |    function pause() public onlyOwner onlyNotPaused {
    |        paused = true;
  > |        timePaused = block.timestamp;
    |        emit LogPause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'Destroyable':
    |     */
    |    function unpause() public onlyOwner onlyPaused {
  > |        paused = false;
    |        timePaused = 0;
    |        emit LogUnpause();
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'Destroyable':
    |    function unpause() public onlyOwner onlyPaused {
    |        paused = false;
  > |        timePaused = 0;
    |        emit LogUnpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(229)

[31mViolation[0m for DAOConstantGas in contract 'GameChannel':
    |
    |        pendingReturns[_address] = 0;
  > |        if (_address.send(valueToSend) == false) {
    |            pendingReturns[_address] = valueToSend;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(574)

[33mWarning[0m for DAOConstantGas in contract 'GameChannel':
    |
    |        pendingReturns[msg.sender] = 0;
  > |        msg.sender.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(418)

[33mWarning[0m for DAOConstantGas in contract 'GameChannel':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[33mWarning[0m for DAOConstantGas in contract 'GameChannel':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[33mWarning[0m for DAOConstantGas in contract 'GameChannel':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for LockedEther in contract 'GameChannel':
    |}
    |
  > |contract GameChannel is GameChannelConflict {
    |    /**
    |     * @dev contract constructor
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(1090)

[31mViolation[0m for TODAmount in contract 'GameChannel':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[31mViolation[0m for TODAmount in contract 'GameChannel':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for TODAmount in contract 'GameChannel':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[31mViolation[0m for TODReceiver in contract 'GameChannel':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[31mViolation[0m for TODReceiver in contract 'GameChannel':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[31mViolation[0m for TODReceiver in contract 'GameChannel':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for TODReceiver in contract 'GameChannel':
    |
    |        pendingReturns[msg.sender] = 0;
  > |        msg.sender.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(418)

[33mWarning[0m for TODReceiver in contract 'GameChannel':
    |
    |        pendingReturns[_address] = 0;
  > |        if (_address.send(valueToSend) == false) {
    |            pendingReturns[_address] = valueToSend;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(574)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |    /// @dev Modifier, which only allows to execute if house stake is high enough.
    |    modifier onlyValidHouseStake(uint _activeGames) {
  > |        uint minHouseStake = conflictRes.minHouseStake(_activeGames);
    |        require(houseStake >= minHouseStake);
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(341)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |
    |        pendingReturns[msg.sender] = 0;
  > |        msg.sender.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(418)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |     */
    |    function withdrawHouseStake(uint value) public onlyOwner {
  > |        uint minHouseStake = conflictRes.minHouseStake(activeGames);
    |
    |        require(value <= houseStake && houseStake - value >= minHouseStake);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(467)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |     */
    |    function payOut(address _playerAddress, uint128 _stake, int _balance) internal {
  > |        assert(_balance <= conflictRes.maxBalance());
    |        assert((int(_stake) + _balance) >= 0); // safe as _balance (see line above), _stake ranges are fixed.
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(541)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |
    |        pendingReturns[_address] = 0;
  > |        if (_address.send(valueToSend) == false) {
    |            pendingReturns[_address] = valueToSend;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(574)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |
    |        (r, s, v) = signatureSplit(_sig);
  > |        address addressRecover = ecrecover(_hash, v, r, s);
    |        require(addressRecover == _address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(642)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |        // theoretically we have enough data to calculate winner
    |        // but as player did not respond assume he has lost.
  > |        int newBalance = conflictRes.serverForceGameEnd(
    |            game.gameType,
    |            game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(911)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |        require(game.status == GameStatus.PLAYER_INITIATED_END);
    |
  > |        int newBalance = conflictRes.playerForceGameEnd(
    |            game.gameType,
    |            game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(935)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |        uint gameId = playerGameId[_playerAddress];
    |        Game storage game = gameIdGame[gameId];
  > |        int maxBalance = conflictRes.maxBalance();
    |
    |        require(gameId == _gameId);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(976)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |        require(keccak256(abi.encodePacked(_playerSeed)) == _playerHash);
    |        require(-int(game.stake) <= _balance && _balance <= maxBalance); // save to cast as ranges are fixed
  > |        require(conflictRes.isValidBet(_gameType, _num, _value));
    |        require(int(game.stake) + _balance - int(_value) >= 0); // save to cast as ranges are fixed
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(982)

[33mWarning[0m for UnhandledException in contract 'GameChannel':
    |     */
    |    function endGameConflict(Game storage _game, uint _gameId, address _playerAddress) private {
  > |        int newBalance = conflictRes.endGameConflict(
    |            _game.gameType,
    |            _game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(1076)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |    /// @dev Modifier, which only allows to execute if house stake is high enough.
    |    modifier onlyValidHouseStake(uint _activeGames) {
  > |        uint minHouseStake = conflictRes.minHouseStake(_activeGames);
    |        require(houseStake >= minHouseStake);
    |        _;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(341)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |     */
    |    function withdrawHouseStake(uint value) public onlyOwner {
  > |        uint minHouseStake = conflictRes.minHouseStake(activeGames);
    |
    |        require(value <= houseStake && houseStake - value >= minHouseStake);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |     */
    |    function payOut(address _playerAddress, uint128 _stake, int _balance) internal {
  > |        assert(_balance <= conflictRes.maxBalance());
    |        assert((int(_stake) + _balance) >= 0); // safe as _balance (see line above), _stake ranges are fixed.
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |
    |        pendingReturns[_address] = 0;
  > |        if (_address.send(valueToSend) == false) {
    |            pendingReturns[_address] = valueToSend;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(574)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |
    |        (r, s, v) = signatureSplit(_sig);
  > |        address addressRecover = ecrecover(_hash, v, r, s);
    |        require(addressRecover == _address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(642)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |        // theoretically we have enough data to calculate winner
    |        // but as player did not respond assume he has lost.
  > |        int newBalance = conflictRes.serverForceGameEnd(
    |            game.gameType,
    |            game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(911)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |        require(game.status == GameStatus.PLAYER_INITIATED_END);
    |
  > |        int newBalance = conflictRes.playerForceGameEnd(
    |            game.gameType,
    |            game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(935)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |        uint gameId = playerGameId[_playerAddress];
    |        Game storage game = gameIdGame[gameId];
  > |        int maxBalance = conflictRes.maxBalance();
    |
    |        require(gameId == _gameId);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(976)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |        require(keccak256(abi.encodePacked(_playerSeed)) == _playerHash);
    |        require(-int(game.stake) <= _balance && _balance <= maxBalance); // save to cast as ranges are fixed
  > |        require(conflictRes.isValidBet(_gameType, _num, _value));
    |        require(int(game.stake) + _balance - int(_value) >= 0); // save to cast as ranges are fixed
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(982)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |     */
    |    function endGameConflict(Game storage _game, uint _gameId, address _playerAddress) private {
  > |        int newBalance = conflictRes.endGameConflict(
    |            _game.gameType,
    |            _game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(1076)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannel':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChannel':
    |
    |        // update last transfer timestamp
  > |        lastProfitTransferTimestamp = block.timestamp;
    |
    |        if (houseProfit <= 0) {
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(428)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChannel':
    |        assert(houseStake >= toTransfer);
    |
  > |        houseProfit = 0;
    |        houseStake = houseStake - toTransfer;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(439)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChannel':
    |
    |        houseProfit = 0;
  > |        houseStake = houseStake - toTransfer;
    |
    |        houseAddress.transfer(toTransfer);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        require(toTransfer > 0);
    |
  > |        pendingReturns[msg.sender] = 0;
    |        msg.sender.transfer(toTransfer);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        internal
    |    {
  > |        _game.status = GameStatus.ENDED;
    |
    |        assert(activeGames > 0);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(524)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |
    |        assert(activeGames > 0);
  > |        activeGames = activeGames - 1;
    |
    |        payOut(_playerAddress, _game.stake, _balance);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(527)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        }
    |
  > |        houseProfit = houseProfit - _balance;
    |
    |        int newHouseStake = int(houseStake) - _balance; // safe to cast and sub as houseStake, balance ranges are fixed
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(553)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        int newHouseStake = int(houseStake) - _balance; // safe to cast and sub as houseStake, balance ranges are fixed
    |        assert(newHouseStake >= 0);
  > |        houseStake = uint(newHouseStake);
    |
    |        pendingReturns[_playerAddress] += valuePlayer;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(557)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        houseStake = uint(newHouseStake);
    |
  > |        pendingReturns[_playerAddress] += valuePlayer;
    |        if (pendingReturns[_playerAddress] > 0) {
    |            safeSend(_playerAddress);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(559)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        assert(valueToSend > 0);
    |
  > |        pendingReturns[_address] = 0;
    |        if (_address.send(valueToSend) == false) {
    |            pendingReturns[_address] = valueToSend;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        pendingReturns[_address] = 0;
    |        if (_address.send(valueToSend) == false) {
  > |            pendingReturns[_address] = valueToSend;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |
    |        uint gameId = gameIdCntr++;
  > |        playerGameId[msg.sender] = gameId;
    |        Game storage newGame = gameIdGame[gameId];
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(1144)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        pendingOwner = _newOwner;
    |        emit LogOwnerShipTransferInitiated(owner, _newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |     */
    |    function updateConflictResolution(address _newConflictResAddress) public onlyOwner {
  > |        newConflictRes = _newConflictResAddress;
    |        updateTime = block.timestamp;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |    function updateConflictResolution(address _newConflictResAddress) public onlyOwner {
    |        newConflictRes = _newConflictResAddress;
  > |        updateTime = block.timestamp;
    |
    |        emit LogUpdatingConflictResolution(_newConflictResAddress);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        require(updateTime + MIN_TIMEOUT <= block.timestamp && block.timestamp <= updateTime + MAX_TIMEOUT);
    |
  > |        conflictRes = ConflictResolutionInterface(newConflictRes);
    |        newConflictRes = 0;
    |        updateTime = 0;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |
    |        conflictRes = ConflictResolutionInterface(newConflictRes);
  > |        newConflictRes = 0;
    |        updateTime = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        conflictRes = ConflictResolutionInterface(newConflictRes);
    |        newConflictRes = 0;
  > |        updateTime = 0;
    |
    |        emit LogUpdatedConflictResolution(newConflictRes);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |     */
    |    function pause() public onlyOwner onlyNotPaused {
  > |        paused = true;
    |        timePaused = block.timestamp;
    |        emit LogPause();
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |    function pause() public onlyOwner onlyNotPaused {
    |        paused = true;
  > |        timePaused = block.timestamp;
    |        emit LogPause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |     */
    |    function unpause() public onlyOwner onlyPaused {
  > |        paused = false;
    |        timePaused = 0;
    |        emit LogUnpause();
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |    function unpause() public onlyOwner onlyPaused {
    |        paused = false;
  > |        timePaused = 0;
    |        emit LogUnpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        onlyValidTransferTimeSpan(_profitTransferTimeSpan)
    |    {
  > |        profitTransferTimeSpan = _profitTransferTimeSpan;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |     */
    |    function addHouseStake() public payable onlyOwner {
  > |        houseStake += msg.value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        require(houseProfit <= 0 || uint(houseProfit) <= houseStake - value);
    |
  > |        houseStake = houseStake - value;
    |        owner.transfer(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |     */
    |    function withdrawAll() public onlyOwner onlyPausedSince(3 days) {
  > |        houseProfit = 0;
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        houseProfit = 0;
    |        uint toTransfer = houseStake;
  > |        houseStake = 0;
    |        owner.transfer(toTransfer);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |     */
    |    function setHouseAddress(address _houseAddress) public onlyOwner {
  > |        houseAddress = _houseAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |    function setStakeRequirements(uint128 _minStake, uint128 _maxStake) public onlyOwner {
    |        require(_minStake > 0 && _minStake <= _maxStake);
  > |        minStake = _minStake;
    |        maxStake = _maxStake;
    |        emit LogStakeLimitsModified(minStake, maxStake);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(501)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        require(_minStake > 0 && _minStake <= _maxStake);
    |        minStake = _minStake;
  > |        maxStake = _maxStake;
    |        emit LogStakeLimitsModified(minStake, maxStake);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(502)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |
    |        if (game.status == GameStatus.ACTIVE) {
  > |            game.endInitiatedTime = block.timestamp;
    |            game.status = GameStatus.SERVER_INITIATED_END;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(886)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannel':
    |        if (game.status == GameStatus.ACTIVE) {
    |            game.endInitiatedTime = block.timestamp;
  > |            game.status = GameStatus.SERVER_INITIATED_END;
    |
    |            emit LogServerRequestedEnd(msg.sender, gameId);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(887)

[33mWarning[0m for DAOConstantGas in contract 'GameChannelBase':
    |
    |        pendingReturns[msg.sender] = 0;
  > |        msg.sender.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(418)

[33mWarning[0m for DAOConstantGas in contract 'GameChannelBase':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[33mWarning[0m for DAOConstantGas in contract 'GameChannelBase':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[33mWarning[0m for DAOConstantGas in contract 'GameChannelBase':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for LockedEther in contract 'GameChannelBase':
    |}
    |
  > |contract GameChannelBase is Destroyable, ConflictResolutionManager {
    |    /// @dev Different game session states.
    |    enum GameStatus {
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(246)

[31mViolation[0m for TODAmount in contract 'GameChannelBase':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[31mViolation[0m for TODAmount in contract 'GameChannelBase':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for TODAmount in contract 'GameChannelBase':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[31mViolation[0m for TODReceiver in contract 'GameChannelBase':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[31mViolation[0m for TODReceiver in contract 'GameChannelBase':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[31mViolation[0m for TODReceiver in contract 'GameChannelBase':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for TODReceiver in contract 'GameChannelBase':
    |
    |        pendingReturns[msg.sender] = 0;
  > |        msg.sender.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(418)

[33mWarning[0m for UnhandledException in contract 'GameChannelBase':
    |
    |        pendingReturns[msg.sender] = 0;
  > |        msg.sender.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(418)

[33mWarning[0m for UnhandledException in contract 'GameChannelBase':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[33mWarning[0m for UnhandledException in contract 'GameChannelBase':
    |     */
    |    function withdrawHouseStake(uint value) public onlyOwner {
  > |        uint minHouseStake = conflictRes.minHouseStake(activeGames);
    |
    |        require(value <= houseStake && houseStake - value >= minHouseStake);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(467)

[33mWarning[0m for UnhandledException in contract 'GameChannelBase':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[33mWarning[0m for UnhandledException in contract 'GameChannelBase':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelBase':
    |     */
    |    function withdrawHouseStake(uint value) public onlyOwner {
  > |        uint minHouseStake = conflictRes.minHouseStake(activeGames);
    |
    |        require(value <= houseStake && houseStake - value >= minHouseStake);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelBase':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelBase':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |
    |        // update last transfer timestamp
  > |        lastProfitTransferTimestamp = block.timestamp;
    |
    |        if (houseProfit <= 0) {
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(428)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |        assert(houseStake >= toTransfer);
    |
  > |        houseProfit = 0;
    |        houseStake = houseStake - toTransfer;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(439)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |
    |        houseProfit = 0;
  > |        houseStake = houseStake - toTransfer;
    |
    |        houseAddress.transfer(toTransfer);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |        require(toTransfer > 0);
    |
  > |        pendingReturns[msg.sender] = 0;
    |        msg.sender.transfer(toTransfer);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        pendingOwner = _newOwner;
    |        emit LogOwnerShipTransferInitiated(owner, _newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |     */
    |    function updateConflictResolution(address _newConflictResAddress) public onlyOwner {
  > |        newConflictRes = _newConflictResAddress;
    |        updateTime = block.timestamp;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |    function updateConflictResolution(address _newConflictResAddress) public onlyOwner {
    |        newConflictRes = _newConflictResAddress;
  > |        updateTime = block.timestamp;
    |
    |        emit LogUpdatingConflictResolution(_newConflictResAddress);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |        require(updateTime + MIN_TIMEOUT <= block.timestamp && block.timestamp <= updateTime + MAX_TIMEOUT);
    |
  > |        conflictRes = ConflictResolutionInterface(newConflictRes);
    |        newConflictRes = 0;
    |        updateTime = 0;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |
    |        conflictRes = ConflictResolutionInterface(newConflictRes);
  > |        newConflictRes = 0;
    |        updateTime = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |        conflictRes = ConflictResolutionInterface(newConflictRes);
    |        newConflictRes = 0;
  > |        updateTime = 0;
    |
    |        emit LogUpdatedConflictResolution(newConflictRes);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |     */
    |    function pause() public onlyOwner onlyNotPaused {
  > |        paused = true;
    |        timePaused = block.timestamp;
    |        emit LogPause();
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |    function pause() public onlyOwner onlyNotPaused {
    |        paused = true;
  > |        timePaused = block.timestamp;
    |        emit LogPause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |     */
    |    function unpause() public onlyOwner onlyPaused {
  > |        paused = false;
    |        timePaused = 0;
    |        emit LogUnpause();
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |    function unpause() public onlyOwner onlyPaused {
    |        paused = false;
  > |        timePaused = 0;
    |        emit LogUnpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |        onlyValidTransferTimeSpan(_profitTransferTimeSpan)
    |    {
  > |        profitTransferTimeSpan = _profitTransferTimeSpan;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |     */
    |    function addHouseStake() public payable onlyOwner {
  > |        houseStake += msg.value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |        require(houseProfit <= 0 || uint(houseProfit) <= houseStake - value);
    |
  > |        houseStake = houseStake - value;
    |        owner.transfer(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |     */
    |    function withdrawAll() public onlyOwner onlyPausedSince(3 days) {
  > |        houseProfit = 0;
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |        houseProfit = 0;
    |        uint toTransfer = houseStake;
  > |        houseStake = 0;
    |        owner.transfer(toTransfer);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |     */
    |    function setHouseAddress(address _houseAddress) public onlyOwner {
  > |        houseAddress = _houseAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |    function setStakeRequirements(uint128 _minStake, uint128 _maxStake) public onlyOwner {
    |        require(_minStake > 0 && _minStake <= _maxStake);
  > |        minStake = _minStake;
    |        maxStake = _maxStake;
    |        emit LogStakeLimitsModified(minStake, maxStake);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(501)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelBase':
    |        require(_minStake > 0 && _minStake <= _maxStake);
    |        minStake = _minStake;
  > |        maxStake = _maxStake;
    |        emit LogStakeLimitsModified(minStake, maxStake);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(502)

[31mViolation[0m for DAOConstantGas in contract 'GameChannelConflict':
    |
    |        pendingReturns[_address] = 0;
  > |        if (_address.send(valueToSend) == false) {
    |            pendingReturns[_address] = valueToSend;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(574)

[33mWarning[0m for DAOConstantGas in contract 'GameChannelConflict':
    |
    |        pendingReturns[msg.sender] = 0;
  > |        msg.sender.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(418)

[33mWarning[0m for DAOConstantGas in contract 'GameChannelConflict':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[33mWarning[0m for DAOConstantGas in contract 'GameChannelConflict':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[33mWarning[0m for DAOConstantGas in contract 'GameChannelConflict':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for LockedEther in contract 'GameChannelConflict':
    |}
    |
  > |contract GameChannelConflict is GameChannelBase {
    |    /**
    |     * @dev Contract constructor.
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(707)

[31mViolation[0m for TODAmount in contract 'GameChannelConflict':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[31mViolation[0m for TODAmount in contract 'GameChannelConflict':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for TODAmount in contract 'GameChannelConflict':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[31mViolation[0m for TODReceiver in contract 'GameChannelConflict':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[31mViolation[0m for TODReceiver in contract 'GameChannelConflict':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[31mViolation[0m for TODReceiver in contract 'GameChannelConflict':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for TODReceiver in contract 'GameChannelConflict':
    |
    |        pendingReturns[msg.sender] = 0;
  > |        msg.sender.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(418)

[33mWarning[0m for TODReceiver in contract 'GameChannelConflict':
    |
    |        pendingReturns[_address] = 0;
  > |        if (_address.send(valueToSend) == false) {
    |            pendingReturns[_address] = valueToSend;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(574)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |
    |        pendingReturns[msg.sender] = 0;
  > |        msg.sender.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(418)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |        houseStake = houseStake - toTransfer;
    |
  > |        houseAddress.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(442)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |     */
    |    function withdrawHouseStake(uint value) public onlyOwner {
  > |        uint minHouseStake = conflictRes.minHouseStake(activeGames);
    |
    |        require(value <= houseStake && houseStake - value >= minHouseStake);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(467)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |     */
    |    function payOut(address _playerAddress, uint128 _stake, int _balance) internal {
  > |        assert(_balance <= conflictRes.maxBalance());
    |        assert((int(_stake) + _balance) >= 0); // safe as _balance (see line above), _stake ranges are fixed.
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(541)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |
    |        pendingReturns[_address] = 0;
  > |        if (_address.send(valueToSend) == false) {
    |            pendingReturns[_address] = valueToSend;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(574)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |
    |        (r, s, v) = signatureSplit(_sig);
  > |        address addressRecover = ecrecover(_hash, v, r, s);
    |        require(addressRecover == _address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(642)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |        // theoretically we have enough data to calculate winner
    |        // but as player did not respond assume he has lost.
  > |        int newBalance = conflictRes.serverForceGameEnd(
    |            game.gameType,
    |            game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(911)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |        require(game.status == GameStatus.PLAYER_INITIATED_END);
    |
  > |        int newBalance = conflictRes.playerForceGameEnd(
    |            game.gameType,
    |            game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(935)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |        uint gameId = playerGameId[_playerAddress];
    |        Game storage game = gameIdGame[gameId];
  > |        int maxBalance = conflictRes.maxBalance();
    |
    |        require(gameId == _gameId);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(976)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |        require(keccak256(abi.encodePacked(_playerSeed)) == _playerHash);
    |        require(-int(game.stake) <= _balance && _balance <= maxBalance); // save to cast as ranges are fixed
  > |        require(conflictRes.isValidBet(_gameType, _num, _value));
    |        require(int(game.stake) + _balance - int(_value) >= 0); // save to cast as ranges are fixed
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(982)

[33mWarning[0m for UnhandledException in contract 'GameChannelConflict':
    |     */
    |    function endGameConflict(Game storage _game, uint _gameId, address _playerAddress) private {
  > |        int newBalance = conflictRes.endGameConflict(
    |            _game.gameType,
    |            _game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(1076)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelConflict':
    |     */
    |    function withdrawHouseStake(uint value) public onlyOwner {
  > |        uint minHouseStake = conflictRes.minHouseStake(activeGames);
    |
    |        require(value <= houseStake && houseStake - value >= minHouseStake);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(467)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelConflict':
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  > |        owner.transfer(toTransfer);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(483)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelConflict':
    |     */
    |    function payOut(address _playerAddress, uint128 _stake, int _balance) internal {
  > |        assert(_balance <= conflictRes.maxBalance());
    |        assert((int(_stake) + _balance) >= 0); // safe as _balance (see line above), _stake ranges are fixed.
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(541)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelConflict':
    |
    |        pendingReturns[_address] = 0;
  > |        if (_address.send(valueToSend) == false) {
    |            pendingReturns[_address] = valueToSend;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(574)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelConflict':
    |
    |        (r, s, v) = signatureSplit(_sig);
  > |        address addressRecover = ecrecover(_hash, v, r, s);
    |        require(addressRecover == _address);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(642)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelConflict':
    |        // theoretically we have enough data to calculate winner
    |        // but as player did not respond assume he has lost.
  > |        int newBalance = conflictRes.serverForceGameEnd(
    |            game.gameType,
    |            game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(911)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelConflict':
    |        require(game.status == GameStatus.PLAYER_INITIATED_END);
    |
  > |        int newBalance = conflictRes.playerForceGameEnd(
    |            game.gameType,
    |            game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(935)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelConflict':
    |        uint gameId = playerGameId[_playerAddress];
    |        Game storage game = gameIdGame[gameId];
  > |        int maxBalance = conflictRes.maxBalance();
    |
    |        require(gameId == _gameId);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(976)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelConflict':
    |        require(keccak256(abi.encodePacked(_playerSeed)) == _playerHash);
    |        require(-int(game.stake) <= _balance && _balance <= maxBalance); // save to cast as ranges are fixed
  > |        require(conflictRes.isValidBet(_gameType, _num, _value));
    |        require(int(game.stake) + _balance - int(_value) >= 0); // save to cast as ranges are fixed
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(982)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelConflict':
    |     */
    |    function endGameConflict(Game storage _game, uint _gameId, address _playerAddress) private {
  > |        int newBalance = conflictRes.endGameConflict(
    |            _game.gameType,
    |            _game.betNum,
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(1076)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GameChannelConflict':
    |
    |        houseStake = houseStake - value;
  > |        owner.transfer(value);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(473)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |
    |        // update last transfer timestamp
  > |        lastProfitTransferTimestamp = block.timestamp;
    |
    |        if (houseProfit <= 0) {
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(428)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        assert(houseStake >= toTransfer);
    |
  > |        houseProfit = 0;
    |        houseStake = houseStake - toTransfer;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(439)

[31mViolation[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |
    |        houseProfit = 0;
  > |        houseStake = houseStake - toTransfer;
    |
    |        houseAddress.transfer(toTransfer);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(440)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        require(toTransfer > 0);
    |
  > |        pendingReturns[msg.sender] = 0;
    |        msg.sender.transfer(toTransfer);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        internal
    |    {
  > |        _game.status = GameStatus.ENDED;
    |
    |        assert(activeGames > 0);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(524)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |
    |        assert(activeGames > 0);
  > |        activeGames = activeGames - 1;
    |
    |        payOut(_playerAddress, _game.stake, _balance);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(527)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        }
    |
  > |        houseProfit = houseProfit - _balance;
    |
    |        int newHouseStake = int(houseStake) - _balance; // safe to cast and sub as houseStake, balance ranges are fixed
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(553)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        int newHouseStake = int(houseStake) - _balance; // safe to cast and sub as houseStake, balance ranges are fixed
    |        assert(newHouseStake >= 0);
  > |        houseStake = uint(newHouseStake);
    |
    |        pendingReturns[_playerAddress] += valuePlayer;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(557)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        houseStake = uint(newHouseStake);
    |
  > |        pendingReturns[_playerAddress] += valuePlayer;
    |        if (pendingReturns[_playerAddress] > 0) {
    |            safeSend(_playerAddress);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(559)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        assert(valueToSend > 0);
    |
  > |        pendingReturns[_address] = 0;
    |        if (_address.send(valueToSend) == false) {
    |            pendingReturns[_address] = valueToSend;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(573)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        pendingReturns[_address] = 0;
    |        if (_address.send(valueToSend) == false) {
  > |            pendingReturns[_address] = valueToSend;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(575)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        pendingOwner = _newOwner;
    |        emit LogOwnerShipTransferInitiated(owner, _newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |     */
    |    function updateConflictResolution(address _newConflictResAddress) public onlyOwner {
  > |        newConflictRes = _newConflictResAddress;
    |        updateTime = block.timestamp;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |    function updateConflictResolution(address _newConflictResAddress) public onlyOwner {
    |        newConflictRes = _newConflictResAddress;
  > |        updateTime = block.timestamp;
    |
    |        emit LogUpdatingConflictResolution(_newConflictResAddress);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        require(updateTime + MIN_TIMEOUT <= block.timestamp && block.timestamp <= updateTime + MAX_TIMEOUT);
    |
  > |        conflictRes = ConflictResolutionInterface(newConflictRes);
    |        newConflictRes = 0;
    |        updateTime = 0;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |
    |        conflictRes = ConflictResolutionInterface(newConflictRes);
  > |        newConflictRes = 0;
    |        updateTime = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        conflictRes = ConflictResolutionInterface(newConflictRes);
    |        newConflictRes = 0;
  > |        updateTime = 0;
    |
    |        emit LogUpdatedConflictResolution(newConflictRes);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |     */
    |    function pause() public onlyOwner onlyNotPaused {
  > |        paused = true;
    |        timePaused = block.timestamp;
    |        emit LogPause();
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |    function pause() public onlyOwner onlyNotPaused {
    |        paused = true;
  > |        timePaused = block.timestamp;
    |        emit LogPause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |     */
    |    function unpause() public onlyOwner onlyPaused {
  > |        paused = false;
    |        timePaused = 0;
    |        emit LogUnpause();
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |    function unpause() public onlyOwner onlyPaused {
    |        paused = false;
  > |        timePaused = 0;
    |        emit LogUnpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        onlyValidTransferTimeSpan(_profitTransferTimeSpan)
    |    {
  > |        profitTransferTimeSpan = _profitTransferTimeSpan;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(453)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |     */
    |    function addHouseStake() public payable onlyOwner {
  > |        houseStake += msg.value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(460)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        require(houseProfit <= 0 || uint(houseProfit) <= houseStake - value);
    |
  > |        houseStake = houseStake - value;
    |        owner.transfer(value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(472)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |     */
    |    function withdrawAll() public onlyOwner onlyPausedSince(3 days) {
  > |        houseProfit = 0;
    |        uint toTransfer = houseStake;
    |        houseStake = 0;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(480)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        houseProfit = 0;
    |        uint toTransfer = houseStake;
  > |        houseStake = 0;
    |        owner.transfer(toTransfer);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(482)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |     */
    |    function setHouseAddress(address _houseAddress) public onlyOwner {
  > |        houseAddress = _houseAddress;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(491)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |    function setStakeRequirements(uint128 _minStake, uint128 _maxStake) public onlyOwner {
    |        require(_minStake > 0 && _minStake <= _maxStake);
  > |        minStake = _minStake;
    |        maxStake = _maxStake;
    |        emit LogStakeLimitsModified(minStake, maxStake);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(501)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        require(_minStake > 0 && _minStake <= _maxStake);
    |        minStake = _minStake;
  > |        maxStake = _maxStake;
    |        emit LogStakeLimitsModified(minStake, maxStake);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(502)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |
    |        if (game.status == GameStatus.ACTIVE) {
  > |            game.endInitiatedTime = block.timestamp;
    |            game.status = GameStatus.SERVER_INITIATED_END;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(886)

[33mWarning[0m for UnrestrictedWrite in contract 'GameChannelConflict':
    |        if (game.status == GameStatus.ACTIVE) {
    |            game.endInitiatedTime = block.timestamp;
  > |            game.status = GameStatus.SERVER_INITIATED_END;
    |
    |            emit LogServerRequestedEnd(msg.sender, gameId);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(887)

[33mWarning[0m for LockedEther in contract 'MathUtil':
    |}
    |
  > |library MathUtil {
    |    /**
    |     * @dev Returns the absolute value of _val.
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(48)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |    address public pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        pendingOwner = _newOwner;
    |        emit LogOwnerShipTransferInitiated(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    event LogOwnerShipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @dev New owner can accpet ownership.
    |     */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        pendingOwner = _newOwner;
    |        emit LogOwnerShipTransferInitiated(owner, _newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(123)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |    /// @dev Is contract paused.
    |    bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(184)

[31mViolation[0m for MissingInputValidation in contract 'Pausable':
    |     * @param _newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        pendingOwner = _newOwner;
    |        emit LogOwnerShipTransferInitiated(owner, _newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |    address public pendingOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |    address public owner;
  > |    address public pendingOwner;
    |
    |    event LogOwnerShipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev New owner can accpet ownership.
    |     */
  > |    function claimOwnership() public onlyPendingOwner {
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Pausable is Ownable {
    |    /// @dev Is contract paused.
  > |    bool public paused = false;
    |
    |    /// @dev Time pause was called
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |    /// @dev Time pause was called
  > |    uint public timePaused = 0;
    |
    |    /// @dev Modifier, which only allows function execution if not paused.
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(189)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev Pause contract. No new game sessions can be created.
    |     */
  > |    function pause() public onlyOwner onlyNotPaused {
    |        paused = true;
    |        timePaused = block.timestamp;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(218)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev Unpause contract.
    |     */
  > |    function unpause() public onlyOwner onlyPaused {
    |        paused = false;
    |        timePaused = 0;
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(227)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        pendingOwner = _newOwner;
    |        emit LogOwnerShipTransferInitiated(owner, _newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function claimOwnership() public onlyPendingOwner {
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
  > |        owner = pendingOwner;
    |        pendingOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        emit LogOwnerShipTransferred(owner, pendingOwner);
    |        owner = pendingOwner;
  > |        pendingOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() public onlyOwner onlyNotPaused {
  > |        paused = true;
    |        timePaused = block.timestamp;
    |        emit LogPause();
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function pause() public onlyOwner onlyNotPaused {
    |        paused = true;
  > |        timePaused = block.timestamp;
    |        emit LogPause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() public onlyOwner onlyPaused {
  > |        paused = false;
    |        timePaused = 0;
    |        emit LogUnpause();
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function unpause() public onlyOwner onlyPaused {
    |        paused = false;
  > |        timePaused = 0;
    |        emit LogUnpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf8b9092e809de87932b28ffaa00d520b04359aa.sol(229)


