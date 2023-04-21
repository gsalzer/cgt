Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:ChallengeScienceInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:Destructible
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:DungeonBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:DungeonChallenge
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:DungeonCoreBeta
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:DungeonStructs
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:DungeonToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:DungeonTraining
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:DungeonTransportation
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:EjectableOwnable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:HeroToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:JointOwnable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:PullPayment
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol:TrainingScienceInterface
[33mWarning[0m for LockedEther in contract 'Destructible':
    | * @dev Base contract that can be destroyed by owner. All funds in contract will be sent to the owner.
    | */
  > |contract Destructible is Ownable {
    |
    |  function Destructible() public payable { }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'Destructible':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for DAOConstantGas in contract 'DungeonBase':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for LockedEther in contract 'DungeonBase':
    | * holds all the base storage variables, and some commonly used functions.
    | */
  > |contract DungeonBase is EjectableOwnable, Pausable, PullPayment, DungeonStructs {
    |
    |    /* ======== TOKEN CONTRACTS ======== */
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(841)

[33mWarning[0m for TODReceiver in contract 'DungeonBase':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnhandledException in contract 'DungeonBase':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonBase':
    |
    |    totalPayments = totalPayments.sub(payment);
  > |    payments[payee] = 0;
    |
    |    assert(payee.send(payment));
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonBase':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonBase':
    |    */
    |    function removeOwnership() onlyOwner public {
  > |        owner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonBase':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonBase':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonBase':
    |     */
    |    function setDungeonTokenContract(address _newDungeonTokenContract) onlyOwner external {
  > |        dungeonTokenContract = DungeonToken(_newDungeonTokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(885)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonBase':
    |     */
    |    function setHeroTokenContract(address _newHeroTokenContract) onlyOwner external {
  > |        heroTokenContract = HeroToken(_newHeroTokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(893)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonBase':
    |     */
    |    function setChallengeScienceContract(address _newChallengeScienceAddress) onlyOwner external {
  > |        challengeScienceContract = ChallengeScienceInterface(_newChallengeScienceAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(901)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonBase':
    |     */
    |    function setTrainingScienceContract(address _newTrainingScienceAddress) onlyOwner external {
  > |        trainingScienceContract = TrainingScienceInterface(_newTrainingScienceAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(909)

[33mWarning[0m for DAOConstantGas in contract 'DungeonChallenge':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for LockedEther in contract 'DungeonChallenge':
    |}
    |
  > |contract DungeonChallenge is DungeonTransportation {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1179)

[33mWarning[0m for TODReceiver in contract 'DungeonChallenge':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |     */
    |    function _getTop5HeroesPower(address _address, uint _dungeonId) internal view returns (uint) {
  > |        uint heroCount = heroTokenContract.balanceOf(_address);
    |
    |        if (heroCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(930)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |
    |        for (uint i = 0; i < heroCount; i++) {
  > |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
    |            (,,, genes) = heroTokenContract.heroes(heroId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(940)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
  > |            (,,, genes) = heroTokenContract.heroes(heroId);
    |            // Power of dungeonId = 0 (no super hero boost).
    |            heroPowers[i] = _getHeroPower(genes, _dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(942)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |    function _getHeroPower(uint _genes, uint _dungeonId) internal view returns (uint) {
    |        uint difficulty;
  > |        (,, difficulty,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate total stats power.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(975)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        uint difficulty;
    |        uint capacity;
  > |        (,, difficulty, capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |
    |        // Disallow weaker user to transport to "difficult" dungeon.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1072)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(originDungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1086)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |    function _transport(uint _originDungeonId, uint _destinationDungeonId) private {
    |        // If a player do not have any hero, claim first hero.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1099)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |
    |        // If a player do not have any hero, claim first hero first.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            heroId = claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1127)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        }
    |
  > |        (,,,heroGenes) = heroTokenContract.heroes(heroId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1131)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        // If a player do not tranport to any dungeon yet, and it is the first time claiming the hero,
    |        // set the dungeon location, increment the #0 Holyland player count by 1.
  > |        if (playerToDungeonID[msg.sender] == 0 && heroTokenContract.balanceOf(msg.sender) == 0) {
    |            dungeonPlayerCount[0]++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1140)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        }
    |
  > |        return heroTokenContract.createHero(0, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1144)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |     */
    |    modifier dungeonCanTransport(uint _destinationDungeonId) {
  > |        require(_destinationDungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        uint capacity;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1165)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        uint status;
    |        uint capacity;
  > |        (,status,,capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |        require(status == 0 || status == 1);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1168)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        uint difficulty;
    |        uint seedGenes;
  > |        (,, difficulty,,,,, seedGenes,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Checks for payment, any exceeding funds will be transferred back to the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1241)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(_dungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1249)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        uint rewards;
    |        uint floorGenes;
  > |        (,,,, floorNumber,, rewards,, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Get the hero gene, or claim first hero.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1265)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |            // ** STORAGE UPDATE **
    |            // Add new floor with the new floor genes and new rewards.
  > |            dungeonTokenContract.addDungeonNewFloor(_dungeonId, newRewards, newFloorGenes);
    |
    |            // Mark the challenge rewards available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1299)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |
    |            // Mark the master rewards available to be withdrawed by the dungeon master.
  > |            asyncSend(dungeonTokenContract.ownerOf(_dungeonId), masterRewards);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1305)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        // ** STORAGE UPDATE **
    |        // Trigger the cooldown for the hero.
  > |        heroTokenContract.triggerCooldown(_heroId);
    |
    |        // Emit the DungeonChallenged event.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1310)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        uint seedGenes;
    |        uint floorGenes;
  > |        (,,,,,, seedGenes, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate the new floor gene.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1333)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |
    |        // Call the external closed source secret function that determines the resulting floor "genes".
  > |        uint newFloorGenes = challengeScienceContract.mixGenes(floorGenes, seedGenes);
    |
    |        uint newFloorPower = _getDungeonPower(newFloorGenes);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1339)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |     */
    |    modifier dungeonCanChallenge(uint _dungeonId) {
  > |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint creationTime;
    |        uint status;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1412)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        uint creationTime;
    |        uint status;
  > |        (creationTime, status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |        require(status == 0 || status == 2);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1415)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |     */
    |    modifier heroAllowedToChallenge(uint _heroId) {
  > |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
    |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1431)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
  > |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
    |
    |            uint cooldownStartTime;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1433)

[33mWarning[0m for UnhandledException in contract 'DungeonChallenge':
    |
    |            uint cooldownStartTime;
  > |            (, cooldownStartTime,,) = heroTokenContract.heroes(_heroId);
    |            require(cooldownStartTime + challengeCooldownTime <= now);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1436)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |     */
    |    function _getTop5HeroesPower(address _address, uint _dungeonId) internal view returns (uint) {
  > |        uint heroCount = heroTokenContract.balanceOf(_address);
    |
    |        if (heroCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(930)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |
    |        for (uint i = 0; i < heroCount; i++) {
  > |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
    |            (,,, genes) = heroTokenContract.heroes(heroId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(940)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
  > |            (,,, genes) = heroTokenContract.heroes(heroId);
    |            // Power of dungeonId = 0 (no super hero boost).
    |            heroPowers[i] = _getHeroPower(genes, _dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(942)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |    function _getHeroPower(uint _genes, uint _dungeonId) internal view returns (uint) {
    |        uint difficulty;
  > |        (,, difficulty,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate total stats power.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(975)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        uint difficulty;
    |        uint capacity;
  > |        (,, difficulty, capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |
    |        // Disallow weaker user to transport to "difficult" dungeon.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1072)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(originDungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1086)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |    function _transport(uint _originDungeonId, uint _destinationDungeonId) private {
    |        // If a player do not have any hero, claim first hero.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1099)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |
    |        // If a player do not have any hero, claim first hero first.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            heroId = claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        }
    |
  > |        (,,,heroGenes) = heroTokenContract.heroes(heroId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        // If a player do not tranport to any dungeon yet, and it is the first time claiming the hero,
    |        // set the dungeon location, increment the #0 Holyland player count by 1.
  > |        if (playerToDungeonID[msg.sender] == 0 && heroTokenContract.balanceOf(msg.sender) == 0) {
    |            dungeonPlayerCount[0]++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1140)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        }
    |
  > |        return heroTokenContract.createHero(0, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |     */
    |    modifier dungeonCanTransport(uint _destinationDungeonId) {
  > |        require(_destinationDungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        uint capacity;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        uint status;
    |        uint capacity;
  > |        (,status,,capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |        require(status == 0 || status == 1);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        uint difficulty;
    |        uint seedGenes;
  > |        (,, difficulty,,,,, seedGenes,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Checks for payment, any exceeding funds will be transferred back to the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(_dungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        uint rewards;
    |        uint floorGenes;
  > |        (,,,, floorNumber,, rewards,, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Get the hero gene, or claim first hero.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1265)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |            // ** STORAGE UPDATE **
    |            // Add new floor with the new floor genes and new rewards.
  > |            dungeonTokenContract.addDungeonNewFloor(_dungeonId, newRewards, newFloorGenes);
    |
    |            // Mark the challenge rewards available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |
    |            // Mark the master rewards available to be withdrawed by the dungeon master.
  > |            asyncSend(dungeonTokenContract.ownerOf(_dungeonId), masterRewards);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1305)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        // ** STORAGE UPDATE **
    |        // Trigger the cooldown for the hero.
  > |        heroTokenContract.triggerCooldown(_heroId);
    |
    |        // Emit the DungeonChallenged event.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        uint seedGenes;
    |        uint floorGenes;
  > |        (,,,,,, seedGenes, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate the new floor gene.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1333)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |
    |        // Call the external closed source secret function that determines the resulting floor "genes".
  > |        uint newFloorGenes = challengeScienceContract.mixGenes(floorGenes, seedGenes);
    |
    |        uint newFloorPower = _getDungeonPower(newFloorGenes);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1339)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |     */
    |    modifier dungeonCanChallenge(uint _dungeonId) {
  > |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint creationTime;
    |        uint status;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        uint creationTime;
    |        uint status;
  > |        (creationTime, status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |        require(status == 0 || status == 2);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1415)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |     */
    |    modifier heroAllowedToChallenge(uint _heroId) {
  > |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
    |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1431)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
  > |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
    |
    |            uint cooldownStartTime;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonChallenge':
    |
    |            uint cooldownStartTime;
  > |            (, cooldownStartTime,,) = heroTokenContract.heroes(_heroId);
    |            require(cooldownStartTime + challengeCooldownTime <= now);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1436)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |    */
    |    function removeOwnership() onlyOwner public {
  > |        owner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |
    |    totalPayments = totalPayments.sub(payment);
  > |    payments[payee] = 0;
    |
    |    assert(payee.send(payment));
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |   */
    |  function asyncSend(address dest, uint256 amount) internal {
  > |    payments[dest] = payments[dest].add(amount);
    |    totalPayments = totalPayments.add(amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setDungeonTokenContract(address _newDungeonTokenContract) onlyOwner external {
  > |        dungeonTokenContract = DungeonToken(_newDungeonTokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(885)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setHeroTokenContract(address _newHeroTokenContract) onlyOwner external {
  > |        heroTokenContract = HeroToken(_newHeroTokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(893)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setChallengeScienceContract(address _newChallengeScienceAddress) onlyOwner external {
  > |        challengeScienceContract = ChallengeScienceInterface(_newChallengeScienceAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(901)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setTrainingScienceContract(address _newTrainingScienceAddress) onlyOwner external {
  > |        trainingScienceContract = TrainingScienceInterface(_newTrainingScienceAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(909)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |        // ** STORAGE UPDATE **
    |        // Update player location.
  > |        playerToDungeonID[msg.sender] = _destinationDungeonId;
    |
    |        // Emit the DungeonChallenged event.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1110)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setTransportationFeeMultiplier(uint _newTransportationFeeMultiplier) onlyOwner external {
  > |        transportationFeeMultiplier = _newTransportationFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1154)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setChallengeFeeMultiplier(uint _newChallengeFeeMultiplier) onlyOwner external {
  > |        challengeFeeMultiplier = _newChallengeFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1358)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setChallengeRewardsPercent(uint _newChallengeRewardsPercent) onlyOwner external {
  > |        challengeRewardsPercent = _newChallengeRewardsPercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1365)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setMasterRewardsPercent(uint _newMasterRewardsPercent) onlyOwner external {
  > |        masterRewardsPercent = _newMasterRewardsPercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1372)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setChallengeCooldownTime(uint _newChallengeCooldownTime) onlyOwner external {
  > |        challengeCooldownTime = _newChallengeCooldownTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1379)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setDungeonPreparationTime(uint _newDungeonPreparationTime) onlyOwner external {
  > |        dungeonPreparationTime = _newDungeonPreparationTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1386)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setRushTimeChallengeRewardsPercent(uint _newRushTimeChallengeRewardsPercent) onlyOwner external {
  > |        rushTimeChallengeRewardsPercent = _newRushTimeChallengeRewardsPercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1393)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonChallenge':
    |     */
    |    function setRushTimeFloorCount(uint _newRushTimeFloorCount) onlyOwner external {
  > |        rushTimeFloorCount = _newRushTimeFloorCount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1400)

[33mWarning[0m for DAOConstantGas in contract 'DungeonCoreBeta':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for LockedEther in contract 'DungeonCoreBeta':
    | *  Since all dungeons and heroes are stored as tokens in external contracts, they remains immutable.
    | */
  > |contract DungeonCoreBeta is Destructible, DungeonTraining {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1650)

[33mWarning[0m for TODReceiver in contract 'DungeonCoreBeta':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |     */
    |    function _getTop5HeroesPower(address _address, uint _dungeonId) internal view returns (uint) {
  > |        uint heroCount = heroTokenContract.balanceOf(_address);
    |
    |        if (heroCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(930)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |
    |        for (uint i = 0; i < heroCount; i++) {
  > |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
    |            (,,, genes) = heroTokenContract.heroes(heroId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(940)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
  > |            (,,, genes) = heroTokenContract.heroes(heroId);
    |            // Power of dungeonId = 0 (no super hero boost).
    |            heroPowers[i] = _getHeroPower(genes, _dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(942)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |    function _getHeroPower(uint _genes, uint _dungeonId) internal view returns (uint) {
    |        uint difficulty;
  > |        (,, difficulty,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate total stats power.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(975)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        uint difficulty;
    |        uint capacity;
  > |        (,, difficulty, capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |
    |        // Disallow weaker user to transport to "difficult" dungeon.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1072)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(originDungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1086)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |    function _transport(uint _originDungeonId, uint _destinationDungeonId) private {
    |        // If a player do not have any hero, claim first hero.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1099)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |
    |        // If a player do not have any hero, claim first hero first.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            heroId = claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1127)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        }
    |
  > |        (,,,heroGenes) = heroTokenContract.heroes(heroId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1131)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        // If a player do not tranport to any dungeon yet, and it is the first time claiming the hero,
    |        // set the dungeon location, increment the #0 Holyland player count by 1.
  > |        if (playerToDungeonID[msg.sender] == 0 && heroTokenContract.balanceOf(msg.sender) == 0) {
    |            dungeonPlayerCount[0]++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1140)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        }
    |
  > |        return heroTokenContract.createHero(0, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1144)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |     */
    |    modifier dungeonCanTransport(uint _destinationDungeonId) {
  > |        require(_destinationDungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        uint capacity;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1165)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        uint status;
    |        uint capacity;
  > |        (,status,,capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |        require(status == 0 || status == 1);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1168)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        uint difficulty;
    |        uint seedGenes;
  > |        (,, difficulty,,,,, seedGenes,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Checks for payment, any exceeding funds will be transferred back to the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1241)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(_dungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1249)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        uint rewards;
    |        uint floorGenes;
  > |        (,,,, floorNumber,, rewards,, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Get the hero gene, or claim first hero.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1265)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |            // ** STORAGE UPDATE **
    |            // Add new floor with the new floor genes and new rewards.
  > |            dungeonTokenContract.addDungeonNewFloor(_dungeonId, newRewards, newFloorGenes);
    |
    |            // Mark the challenge rewards available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1299)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |
    |            // Mark the master rewards available to be withdrawed by the dungeon master.
  > |            asyncSend(dungeonTokenContract.ownerOf(_dungeonId), masterRewards);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1305)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        // ** STORAGE UPDATE **
    |        // Trigger the cooldown for the hero.
  > |        heroTokenContract.triggerCooldown(_heroId);
    |
    |        // Emit the DungeonChallenged event.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1310)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        uint seedGenes;
    |        uint floorGenes;
  > |        (,,,,,, seedGenes, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate the new floor gene.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1333)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |
    |        // Call the external closed source secret function that determines the resulting floor "genes".
  > |        uint newFloorGenes = challengeScienceContract.mixGenes(floorGenes, seedGenes);
    |
    |        uint newFloorPower = _getDungeonPower(newFloorGenes);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1339)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |     */
    |    modifier dungeonCanChallenge(uint _dungeonId) {
  > |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint creationTime;
    |        uint status;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1412)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        uint creationTime;
    |        uint status;
  > |        (creationTime, status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |        require(status == 0 || status == 2);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1415)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |     */
    |    modifier heroAllowedToChallenge(uint _heroId) {
  > |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
    |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1431)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
  > |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
    |
    |            uint cooldownStartTime;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1433)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |
    |            uint cooldownStartTime;
  > |            (, cooldownStartTime,,) = heroTokenContract.heroes(_heroId);
    |            require(cooldownStartTime + challengeCooldownTime <= now);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1436)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        uint seedGenes;
    |        uint floorGenes;
  > |        (creationTime,,difficulty,,floorNumber,,rewards,seedGenes,floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Check for _trainingTimes abnormality, we probably won't have any feature that train a hero 10 times with a single call.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1520)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(_dungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1544)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        uint floorNumber;
    |        uint floorGenes;
  > |        (,,,, floorNumber,,,, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Determine if the hero training is successful or not, and the resulting genes.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1560)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |     */
    |    modifier dungeonCanTrain(uint _dungeonId) {
  > |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        (,status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1619)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
  > |        (,status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |        require(status == 0 || status == 3);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1621)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |     */
    |    modifier heroAllowedToTrain(uint _heroId) {
  > |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only train with your own hero.
    |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1634)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only train with your own hero.
  > |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
    |        }
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1636)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |     */
    |    function getDungeonDetails(uint _id) external view returns (uint creationTime, uint status, uint difficulty, uint capacity, bool isReady, uint playerCount) {
  > |        require(_id < dungeonTokenContract.totalSupply());
    |
    |        // Didn't get the "floorCreationTime" because of Stack Too Deep error.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1672)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |
    |        // Didn't get the "floorCreationTime" because of Stack Too Deep error.
  > |        (creationTime, status, difficulty, capacity,,,,,) = dungeonTokenContract.dungeons(_id);
    |
    |        // Dungeon is ready to be challenged (not in preparation mode).
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1675)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |     */
    |    function getDungeonFloorDetails(uint _id) external view returns (uint floorNumber, uint floorCreationTime, uint rewards, uint seedGenes, uint floorGenes) {
  > |        require(_id < dungeonTokenContract.totalSupply());
    |
    |        // Didn't get the "floorCreationTime" because of Stack Too Deep error.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1687)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |
    |        // Didn't get the "floorCreationTime" because of Stack Too Deep error.
  > |        (,,,, floorNumber, floorCreationTime, rewards, seedGenes, floorGenes) = dungeonTokenContract.dungeons(_id);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1690)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |     */
    |    function getHeroDetails(uint _id) external view returns (uint creationTime, uint cooldownStartTime, uint cooldownIndex, uint genes, bool isReady) {
  > |        require(_id < heroTokenContract.totalSupply());
    |
    |        (creationTime, cooldownStartTime, cooldownIndex, genes) = heroTokenContract.heroes(_id);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1698)

[33mWarning[0m for UnhandledException in contract 'DungeonCoreBeta':
    |        require(_id < heroTokenContract.totalSupply());
    |
  > |        (creationTime, cooldownStartTime, cooldownIndex, genes) = heroTokenContract.heroes(_id);
    |
    |        // Hero is ready to challenge (not in cooldown mode).
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1700)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |     */
    |    function _getTop5HeroesPower(address _address, uint _dungeonId) internal view returns (uint) {
  > |        uint heroCount = heroTokenContract.balanceOf(_address);
    |
    |        if (heroCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(930)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |
    |        for (uint i = 0; i < heroCount; i++) {
  > |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
    |            (,,, genes) = heroTokenContract.heroes(heroId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(940)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
  > |            (,,, genes) = heroTokenContract.heroes(heroId);
    |            // Power of dungeonId = 0 (no super hero boost).
    |            heroPowers[i] = _getHeroPower(genes, _dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(942)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |    function _getHeroPower(uint _genes, uint _dungeonId) internal view returns (uint) {
    |        uint difficulty;
  > |        (,, difficulty,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate total stats power.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(975)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        uint difficulty;
    |        uint capacity;
  > |        (,, difficulty, capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |
    |        // Disallow weaker user to transport to "difficult" dungeon.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1072)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(originDungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1086)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |    function _transport(uint _originDungeonId, uint _destinationDungeonId) private {
    |        // If a player do not have any hero, claim first hero.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1099)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |
    |        // If a player do not have any hero, claim first hero first.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            heroId = claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        }
    |
  > |        (,,,heroGenes) = heroTokenContract.heroes(heroId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        // If a player do not tranport to any dungeon yet, and it is the first time claiming the hero,
    |        // set the dungeon location, increment the #0 Holyland player count by 1.
  > |        if (playerToDungeonID[msg.sender] == 0 && heroTokenContract.balanceOf(msg.sender) == 0) {
    |            dungeonPlayerCount[0]++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1140)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        }
    |
  > |        return heroTokenContract.createHero(0, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |     */
    |    modifier dungeonCanTransport(uint _destinationDungeonId) {
  > |        require(_destinationDungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        uint capacity;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        uint status;
    |        uint capacity;
  > |        (,status,,capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |        require(status == 0 || status == 1);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        uint difficulty;
    |        uint seedGenes;
  > |        (,, difficulty,,,,, seedGenes,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Checks for payment, any exceeding funds will be transferred back to the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(_dungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        uint rewards;
    |        uint floorGenes;
  > |        (,,,, floorNumber,, rewards,, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Get the hero gene, or claim first hero.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1265)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |            // ** STORAGE UPDATE **
    |            // Add new floor with the new floor genes and new rewards.
  > |            dungeonTokenContract.addDungeonNewFloor(_dungeonId, newRewards, newFloorGenes);
    |
    |            // Mark the challenge rewards available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |
    |            // Mark the master rewards available to be withdrawed by the dungeon master.
  > |            asyncSend(dungeonTokenContract.ownerOf(_dungeonId), masterRewards);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1305)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        // ** STORAGE UPDATE **
    |        // Trigger the cooldown for the hero.
  > |        heroTokenContract.triggerCooldown(_heroId);
    |
    |        // Emit the DungeonChallenged event.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        uint seedGenes;
    |        uint floorGenes;
  > |        (,,,,,, seedGenes, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate the new floor gene.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1333)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |
    |        // Call the external closed source secret function that determines the resulting floor "genes".
  > |        uint newFloorGenes = challengeScienceContract.mixGenes(floorGenes, seedGenes);
    |
    |        uint newFloorPower = _getDungeonPower(newFloorGenes);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1339)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |     */
    |    modifier dungeonCanChallenge(uint _dungeonId) {
  > |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint creationTime;
    |        uint status;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        uint creationTime;
    |        uint status;
  > |        (creationTime, status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |        require(status == 0 || status == 2);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1415)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |     */
    |    modifier heroAllowedToChallenge(uint _heroId) {
  > |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
    |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1431)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
  > |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
    |
    |            uint cooldownStartTime;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |
    |            uint cooldownStartTime;
  > |            (, cooldownStartTime,,) = heroTokenContract.heroes(_heroId);
    |            require(cooldownStartTime + challengeCooldownTime <= now);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1436)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        uint seedGenes;
    |        uint floorGenes;
  > |        (creationTime,,difficulty,,floorNumber,,rewards,seedGenes,floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Check for _trainingTimes abnormality, we probably won't have any feature that train a hero 10 times with a single call.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1520)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(_dungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1544)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        uint floorNumber;
    |        uint floorGenes;
  > |        (,,,, floorNumber,,,, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Determine if the hero training is successful or not, and the resulting genes.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1560)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |     */
    |    modifier dungeonCanTrain(uint _dungeonId) {
  > |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        (,status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1619)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
  > |        (,status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |        require(status == 0 || status == 3);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1621)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |     */
    |    modifier heroAllowedToTrain(uint _heroId) {
  > |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only train with your own hero.
    |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1634)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only train with your own hero.
  > |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
    |        }
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1636)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |     */
    |    function getDungeonDetails(uint _id) external view returns (uint creationTime, uint status, uint difficulty, uint capacity, bool isReady, uint playerCount) {
  > |        require(_id < dungeonTokenContract.totalSupply());
    |
    |        // Didn't get the "floorCreationTime" because of Stack Too Deep error.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1672)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |
    |        // Didn't get the "floorCreationTime" because of Stack Too Deep error.
  > |        (creationTime, status, difficulty, capacity,,,,,) = dungeonTokenContract.dungeons(_id);
    |
    |        // Dungeon is ready to be challenged (not in preparation mode).
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1675)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |     */
    |    function getDungeonFloorDetails(uint _id) external view returns (uint floorNumber, uint floorCreationTime, uint rewards, uint seedGenes, uint floorGenes) {
  > |        require(_id < dungeonTokenContract.totalSupply());
    |
    |        // Didn't get the "floorCreationTime" because of Stack Too Deep error.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1687)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |
    |        // Didn't get the "floorCreationTime" because of Stack Too Deep error.
  > |        (,,,, floorNumber, floorCreationTime, rewards, seedGenes, floorGenes) = dungeonTokenContract.dungeons(_id);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1690)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |     */
    |    function getHeroDetails(uint _id) external view returns (uint creationTime, uint cooldownStartTime, uint cooldownIndex, uint genes, bool isReady) {
  > |        require(_id < heroTokenContract.totalSupply());
    |
    |        (creationTime, cooldownStartTime, cooldownIndex, genes) = heroTokenContract.heroes(_id);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1698)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonCoreBeta':
    |        require(_id < heroTokenContract.totalSupply());
    |
  > |        (creationTime, cooldownStartTime, cooldownIndex, genes) = heroTokenContract.heroes(_id);
    |
    |        // Hero is ready to challenge (not in cooldown mode).
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1700)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |    */
    |    function removeOwnership() onlyOwner public {
  > |        owner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |
    |    totalPayments = totalPayments.sub(payment);
  > |    payments[payee] = 0;
    |
    |    assert(payee.send(payment));
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |   */
    |  function asyncSend(address dest, uint256 amount) internal {
  > |    payments[dest] = payments[dest].add(amount);
    |    totalPayments = totalPayments.add(amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setDungeonTokenContract(address _newDungeonTokenContract) onlyOwner external {
  > |        dungeonTokenContract = DungeonToken(_newDungeonTokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(885)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setHeroTokenContract(address _newHeroTokenContract) onlyOwner external {
  > |        heroTokenContract = HeroToken(_newHeroTokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(893)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setChallengeScienceContract(address _newChallengeScienceAddress) onlyOwner external {
  > |        challengeScienceContract = ChallengeScienceInterface(_newChallengeScienceAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(901)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setTrainingScienceContract(address _newTrainingScienceAddress) onlyOwner external {
  > |        trainingScienceContract = TrainingScienceInterface(_newTrainingScienceAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(909)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |        // ** STORAGE UPDATE **
    |        // Update player location.
  > |        playerToDungeonID[msg.sender] = _destinationDungeonId;
    |
    |        // Emit the DungeonChallenged event.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1110)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setTransportationFeeMultiplier(uint _newTransportationFeeMultiplier) onlyOwner external {
  > |        transportationFeeMultiplier = _newTransportationFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1154)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setChallengeFeeMultiplier(uint _newChallengeFeeMultiplier) onlyOwner external {
  > |        challengeFeeMultiplier = _newChallengeFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1358)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setChallengeRewardsPercent(uint _newChallengeRewardsPercent) onlyOwner external {
  > |        challengeRewardsPercent = _newChallengeRewardsPercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1365)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setMasterRewardsPercent(uint _newMasterRewardsPercent) onlyOwner external {
  > |        masterRewardsPercent = _newMasterRewardsPercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1372)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setChallengeCooldownTime(uint _newChallengeCooldownTime) onlyOwner external {
  > |        challengeCooldownTime = _newChallengeCooldownTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1379)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setDungeonPreparationTime(uint _newDungeonPreparationTime) onlyOwner external {
  > |        dungeonPreparationTime = _newDungeonPreparationTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1386)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setRushTimeChallengeRewardsPercent(uint _newRushTimeChallengeRewardsPercent) onlyOwner external {
  > |        rushTimeChallengeRewardsPercent = _newRushTimeChallengeRewardsPercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1393)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |     */
    |    function setRushTimeFloorCount(uint _newRushTimeFloorCount) onlyOwner external {
  > |        rushTimeFloorCount = _newRushTimeFloorCount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1400)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |    /// @dev Updates the fee contribution multiplier required for calling trainX().
    |    function setTrainingFeeMultiplier(uint _newTrainingFeeMultiplier) onlyOwner external {
  > |        trainingFeeMultiplier = _newTrainingFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1598)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |    /// @dev Updates the fee contribution multiplier for preparation period required for calling trainX().
    |    function setPreparationPeriodTrainingFeeMultiplier(uint _newPreparationPeriodTrainingFeeMultiplier) onlyOwner external {
  > |        preparationPeriodTrainingFeeMultiplier = _newPreparationPeriodTrainingFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1603)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonCoreBeta':
    |    /// @dev Updates the fee contribution multiplier required for calling trainEquipment().
    |    function setEquipmentTrainingFeeMultiplier(uint _newEquipmentTrainingFeeMultiplier) onlyOwner external {
  > |        equipmentTrainingFeeMultiplier = _newEquipmentTrainingFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1608)

[33mWarning[0m for LockedEther in contract 'DungeonStructs':
    |}
    |
  > |contract DungeonStructs {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(275)

[33mWarning[0m for LockedEther in contract 'DungeonToken':
    | * @dev See the DungeonStructs contract to see the details of the Dungeon token data structure.
    | */
  > |contract DungeonToken is ERC721, DungeonStructs, Pausable, JointOwnable {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |        // When creating new token, _from is 0x0, but we can't account that address.
    |        if (_from != address(0)) {
  > |            ownershipTokenCount[_from]--;
    |
    |            // Remove the _tokenId from ownerTokens[_from]
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(473)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |    require(_anotherOwner != 0);
    |    AnotherOwnerAssigned(_anotherOwner);
  > |    anotherOwner1 = _anotherOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |    require(_anotherOwner != 0);
    |    AnotherOwnerAssigned(_anotherOwner);
  > |    anotherOwner2 = _anotherOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
    |        // Increment the ownershipTokenCount.
  > |        ownershipTokenCount[_to]++;
    |
    |        // Transfer ownership.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(463)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |
    |        // Transfer ownership.
  > |        tokenIndexToOwner[_tokenId] = _to;
    |
    |        // Add the _tokenId to ownerTokens[_to]
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(466)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |
    |        // Add the _tokenId to ownerTokens[_to]
  > |        ownerTokens[_to].push(_tokenId);
    |
    |        // When creating new token, _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(469)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |        // UPDATE STORAGE
    |        // Create a new dungeon.
  > |        dungeons.push(Dungeon(uint32(now), 0, uint8(_difficulty), uint16(_capacity), 0, 0, 0, _seedGenes, 0));
    |
    |        // Token id is the index in the storage array.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(537)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |     */
    |    function setDungeonStatus(uint _id, uint _newStatus) eitherOwner tokenExists(_id) external {
  > |        dungeons[_id].status = uint8(_newStatus);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(560)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |     */
    |    function addDungeonRewards(uint _id, uint _additinalRewards) eitherOwner tokenExists(_id) external {
  > |        dungeons[_id].rewards += uint128(_additinalRewards);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(568)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |        Dungeon storage dungeon = dungeons[_id];
    |
  > |        dungeon.floorNumber++;
    |        dungeon.floorCreationTime = uint32(now);
    |        dungeon.rewards = uint128(_newRewards);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(579)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |
    |        dungeon.floorNumber++;
  > |        dungeon.floorCreationTime = uint32(now);
    |        dungeon.rewards = uint128(_newRewards);
    |        dungeon.floorGenes = _newFloorGenes;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(580)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |        dungeon.floorNumber++;
    |        dungeon.floorCreationTime = uint32(now);
  > |        dungeon.rewards = uint128(_newRewards);
    |        dungeon.floorGenes = _newFloorGenes;
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(581)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonToken':
    |        dungeon.floorCreationTime = uint32(now);
    |        dungeon.rewards = uint128(_newRewards);
  > |        dungeon.floorGenes = _newFloorGenes;
    |
    |        // Emit the NewDungeonFloor event.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(582)

[33mWarning[0m for DAOConstantGas in contract 'DungeonTraining':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for LockedEther in contract 'DungeonTraining':
    |}
    |
  > |contract DungeonTraining is DungeonChallenge {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1444)

[33mWarning[0m for TODReceiver in contract 'DungeonTraining':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |     */
    |    function _getTop5HeroesPower(address _address, uint _dungeonId) internal view returns (uint) {
  > |        uint heroCount = heroTokenContract.balanceOf(_address);
    |
    |        if (heroCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(930)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |
    |        for (uint i = 0; i < heroCount; i++) {
  > |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
    |            (,,, genes) = heroTokenContract.heroes(heroId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(940)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
  > |            (,,, genes) = heroTokenContract.heroes(heroId);
    |            // Power of dungeonId = 0 (no super hero boost).
    |            heroPowers[i] = _getHeroPower(genes, _dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(942)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |    function _getHeroPower(uint _genes, uint _dungeonId) internal view returns (uint) {
    |        uint difficulty;
  > |        (,, difficulty,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate total stats power.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(975)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        uint difficulty;
    |        uint capacity;
  > |        (,, difficulty, capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |
    |        // Disallow weaker user to transport to "difficult" dungeon.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1072)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(originDungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1086)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |    function _transport(uint _originDungeonId, uint _destinationDungeonId) private {
    |        // If a player do not have any hero, claim first hero.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1099)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |
    |        // If a player do not have any hero, claim first hero first.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            heroId = claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1127)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        }
    |
  > |        (,,,heroGenes) = heroTokenContract.heroes(heroId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1131)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        // If a player do not tranport to any dungeon yet, and it is the first time claiming the hero,
    |        // set the dungeon location, increment the #0 Holyland player count by 1.
  > |        if (playerToDungeonID[msg.sender] == 0 && heroTokenContract.balanceOf(msg.sender) == 0) {
    |            dungeonPlayerCount[0]++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1140)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        }
    |
  > |        return heroTokenContract.createHero(0, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1144)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |     */
    |    modifier dungeonCanTransport(uint _destinationDungeonId) {
  > |        require(_destinationDungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        uint capacity;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1165)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        uint status;
    |        uint capacity;
  > |        (,status,,capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |        require(status == 0 || status == 1);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1168)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        uint difficulty;
    |        uint seedGenes;
  > |        (,, difficulty,,,,, seedGenes,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Checks for payment, any exceeding funds will be transferred back to the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1241)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(_dungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1249)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        uint rewards;
    |        uint floorGenes;
  > |        (,,,, floorNumber,, rewards,, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Get the hero gene, or claim first hero.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1265)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |            // ** STORAGE UPDATE **
    |            // Add new floor with the new floor genes and new rewards.
  > |            dungeonTokenContract.addDungeonNewFloor(_dungeonId, newRewards, newFloorGenes);
    |
    |            // Mark the challenge rewards available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1299)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |
    |            // Mark the master rewards available to be withdrawed by the dungeon master.
  > |            asyncSend(dungeonTokenContract.ownerOf(_dungeonId), masterRewards);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1305)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        // ** STORAGE UPDATE **
    |        // Trigger the cooldown for the hero.
  > |        heroTokenContract.triggerCooldown(_heroId);
    |
    |        // Emit the DungeonChallenged event.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1310)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        uint seedGenes;
    |        uint floorGenes;
  > |        (,,,,,, seedGenes, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate the new floor gene.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1333)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |
    |        // Call the external closed source secret function that determines the resulting floor "genes".
  > |        uint newFloorGenes = challengeScienceContract.mixGenes(floorGenes, seedGenes);
    |
    |        uint newFloorPower = _getDungeonPower(newFloorGenes);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1339)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |     */
    |    modifier dungeonCanChallenge(uint _dungeonId) {
  > |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint creationTime;
    |        uint status;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1412)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        uint creationTime;
    |        uint status;
  > |        (creationTime, status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |        require(status == 0 || status == 2);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1415)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |     */
    |    modifier heroAllowedToChallenge(uint _heroId) {
  > |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
    |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1431)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
  > |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
    |
    |            uint cooldownStartTime;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1433)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |
    |            uint cooldownStartTime;
  > |            (, cooldownStartTime,,) = heroTokenContract.heroes(_heroId);
    |            require(cooldownStartTime + challengeCooldownTime <= now);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1436)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        uint seedGenes;
    |        uint floorGenes;
  > |        (creationTime,,difficulty,,floorNumber,,rewards,seedGenes,floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Check for _trainingTimes abnormality, we probably won't have any feature that train a hero 10 times with a single call.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1520)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(_dungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1544)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        uint floorNumber;
    |        uint floorGenes;
  > |        (,,,, floorNumber,,,, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Determine if the hero training is successful or not, and the resulting genes.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1560)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |     */
    |    modifier dungeonCanTrain(uint _dungeonId) {
  > |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        (,status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1619)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
  > |        (,status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |        require(status == 0 || status == 3);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1621)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |     */
    |    modifier heroAllowedToTrain(uint _heroId) {
  > |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only train with your own hero.
    |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1634)

[33mWarning[0m for UnhandledException in contract 'DungeonTraining':
    |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only train with your own hero.
  > |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
    |        }
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1636)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |     */
    |    function _getTop5HeroesPower(address _address, uint _dungeonId) internal view returns (uint) {
  > |        uint heroCount = heroTokenContract.balanceOf(_address);
    |
    |        if (heroCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(930)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |
    |        for (uint i = 0; i < heroCount; i++) {
  > |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
    |            (,,, genes) = heroTokenContract.heroes(heroId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(940)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
  > |            (,,, genes) = heroTokenContract.heroes(heroId);
    |            // Power of dungeonId = 0 (no super hero boost).
    |            heroPowers[i] = _getHeroPower(genes, _dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(942)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |    function _getHeroPower(uint _genes, uint _dungeonId) internal view returns (uint) {
    |        uint difficulty;
  > |        (,, difficulty,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate total stats power.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(975)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        uint difficulty;
    |        uint capacity;
  > |        (,, difficulty, capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |
    |        // Disallow weaker user to transport to "difficult" dungeon.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1072)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(originDungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1086)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |    function _transport(uint _originDungeonId, uint _destinationDungeonId) private {
    |        // If a player do not have any hero, claim first hero.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1099)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |
    |        // If a player do not have any hero, claim first hero first.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            heroId = claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        }
    |
  > |        (,,,heroGenes) = heroTokenContract.heroes(heroId);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1131)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        // If a player do not tranport to any dungeon yet, and it is the first time claiming the hero,
    |        // set the dungeon location, increment the #0 Holyland player count by 1.
  > |        if (playerToDungeonID[msg.sender] == 0 && heroTokenContract.balanceOf(msg.sender) == 0) {
    |            dungeonPlayerCount[0]++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1140)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        }
    |
  > |        return heroTokenContract.createHero(0, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |     */
    |    modifier dungeonCanTransport(uint _destinationDungeonId) {
  > |        require(_destinationDungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        uint capacity;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        uint status;
    |        uint capacity;
  > |        (,status,,capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |        require(status == 0 || status == 1);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        uint difficulty;
    |        uint seedGenes;
  > |        (,, difficulty,,,,, seedGenes,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Checks for payment, any exceeding funds will be transferred back to the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(_dungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1249)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        uint rewards;
    |        uint floorGenes;
  > |        (,,,, floorNumber,, rewards,, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Get the hero gene, or claim first hero.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1265)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |            // ** STORAGE UPDATE **
    |            // Add new floor with the new floor genes and new rewards.
  > |            dungeonTokenContract.addDungeonNewFloor(_dungeonId, newRewards, newFloorGenes);
    |
    |            // Mark the challenge rewards available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1299)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |
    |            // Mark the master rewards available to be withdrawed by the dungeon master.
  > |            asyncSend(dungeonTokenContract.ownerOf(_dungeonId), masterRewards);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1305)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        // ** STORAGE UPDATE **
    |        // Trigger the cooldown for the hero.
  > |        heroTokenContract.triggerCooldown(_heroId);
    |
    |        // Emit the DungeonChallenged event.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1310)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        uint seedGenes;
    |        uint floorGenes;
  > |        (,,,,,, seedGenes, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate the new floor gene.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1333)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |
    |        // Call the external closed source secret function that determines the resulting floor "genes".
  > |        uint newFloorGenes = challengeScienceContract.mixGenes(floorGenes, seedGenes);
    |
    |        uint newFloorPower = _getDungeonPower(newFloorGenes);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1339)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |     */
    |    modifier dungeonCanChallenge(uint _dungeonId) {
  > |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint creationTime;
    |        uint status;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1412)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        uint creationTime;
    |        uint status;
  > |        (creationTime, status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |        require(status == 0 || status == 2);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1415)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |     */
    |    modifier heroAllowedToChallenge(uint _heroId) {
  > |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
    |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1431)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only challenge with your own hero.
  > |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
    |
    |            uint cooldownStartTime;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |
    |            uint cooldownStartTime;
  > |            (, cooldownStartTime,,) = heroTokenContract.heroes(_heroId);
    |            require(cooldownStartTime + challengeCooldownTime <= now);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1436)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        uint seedGenes;
    |        uint floorGenes;
  > |        (creationTime,,difficulty,,floorNumber,,rewards,seedGenes,floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Check for _trainingTimes abnormality, we probably won't have any feature that train a hero 10 times with a single call.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1520)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(_dungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1544)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        uint floorNumber;
    |        uint floorGenes;
  > |        (,,,, floorNumber,,,, floorGenes) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Determine if the hero training is successful or not, and the resulting genes.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1560)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |     */
    |    modifier dungeonCanTrain(uint _dungeonId) {
  > |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        (,status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1619)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        require(_dungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
  > |        (,status,,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |        require(status == 0 || status == 3);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1621)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |     */
    |    modifier heroAllowedToTrain(uint _heroId) {
  > |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only train with your own hero.
    |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1634)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTraining':
    |        if (heroTokenContract.balanceOf(msg.sender) > 0) {
    |            // You can only train with your own hero.
  > |            require(heroTokenContract.ownerOf(_heroId) == msg.sender);
    |        }
    |        _;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1636)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |    */
    |    function removeOwnership() onlyOwner public {
  > |        owner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |
    |    totalPayments = totalPayments.sub(payment);
  > |    payments[payee] = 0;
    |
    |    assert(payee.send(payment));
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |   */
    |  function asyncSend(address dest, uint256 amount) internal {
  > |    payments[dest] = payments[dest].add(amount);
    |    totalPayments = totalPayments.add(amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setDungeonTokenContract(address _newDungeonTokenContract) onlyOwner external {
  > |        dungeonTokenContract = DungeonToken(_newDungeonTokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(885)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setHeroTokenContract(address _newHeroTokenContract) onlyOwner external {
  > |        heroTokenContract = HeroToken(_newHeroTokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(893)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setChallengeScienceContract(address _newChallengeScienceAddress) onlyOwner external {
  > |        challengeScienceContract = ChallengeScienceInterface(_newChallengeScienceAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(901)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setTrainingScienceContract(address _newTrainingScienceAddress) onlyOwner external {
  > |        trainingScienceContract = TrainingScienceInterface(_newTrainingScienceAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(909)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |        // ** STORAGE UPDATE **
    |        // Update player location.
  > |        playerToDungeonID[msg.sender] = _destinationDungeonId;
    |
    |        // Emit the DungeonChallenged event.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1110)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setTransportationFeeMultiplier(uint _newTransportationFeeMultiplier) onlyOwner external {
  > |        transportationFeeMultiplier = _newTransportationFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1154)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setChallengeFeeMultiplier(uint _newChallengeFeeMultiplier) onlyOwner external {
  > |        challengeFeeMultiplier = _newChallengeFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1358)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setChallengeRewardsPercent(uint _newChallengeRewardsPercent) onlyOwner external {
  > |        challengeRewardsPercent = _newChallengeRewardsPercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1365)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setMasterRewardsPercent(uint _newMasterRewardsPercent) onlyOwner external {
  > |        masterRewardsPercent = _newMasterRewardsPercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1372)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setChallengeCooldownTime(uint _newChallengeCooldownTime) onlyOwner external {
  > |        challengeCooldownTime = _newChallengeCooldownTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1379)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setDungeonPreparationTime(uint _newDungeonPreparationTime) onlyOwner external {
  > |        dungeonPreparationTime = _newDungeonPreparationTime;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1386)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setRushTimeChallengeRewardsPercent(uint _newRushTimeChallengeRewardsPercent) onlyOwner external {
  > |        rushTimeChallengeRewardsPercent = _newRushTimeChallengeRewardsPercent;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1393)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |     */
    |    function setRushTimeFloorCount(uint _newRushTimeFloorCount) onlyOwner external {
  > |        rushTimeFloorCount = _newRushTimeFloorCount;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1400)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |    /// @dev Updates the fee contribution multiplier required for calling trainX().
    |    function setTrainingFeeMultiplier(uint _newTrainingFeeMultiplier) onlyOwner external {
  > |        trainingFeeMultiplier = _newTrainingFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1598)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |    /// @dev Updates the fee contribution multiplier for preparation period required for calling trainX().
    |    function setPreparationPeriodTrainingFeeMultiplier(uint _newPreparationPeriodTrainingFeeMultiplier) onlyOwner external {
  > |        preparationPeriodTrainingFeeMultiplier = _newPreparationPeriodTrainingFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1603)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTraining':
    |    /// @dev Updates the fee contribution multiplier required for calling trainEquipment().
    |    function setEquipmentTrainingFeeMultiplier(uint _newEquipmentTrainingFeeMultiplier) onlyOwner external {
  > |        equipmentTrainingFeeMultiplier = _newEquipmentTrainingFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1608)

[33mWarning[0m for DAOConstantGas in contract 'DungeonTransportation':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for LockedEther in contract 'DungeonTransportation':
    |}
    |
  > |contract DungeonTransportation is DungeonBase {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1027)

[33mWarning[0m for TODReceiver in contract 'DungeonTransportation':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |     */
    |    function _getTop5HeroesPower(address _address, uint _dungeonId) internal view returns (uint) {
  > |        uint heroCount = heroTokenContract.balanceOf(_address);
    |
    |        if (heroCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(930)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |
    |        for (uint i = 0; i < heroCount; i++) {
  > |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
    |            (,,, genes) = heroTokenContract.heroes(heroId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(940)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
  > |            (,,, genes) = heroTokenContract.heroes(heroId);
    |            // Power of dungeonId = 0 (no super hero boost).
    |            heroPowers[i] = _getHeroPower(genes, _dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(942)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |    function _getHeroPower(uint _genes, uint _dungeonId) internal view returns (uint) {
    |        uint difficulty;
  > |        (,, difficulty,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate total stats power.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(975)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |        uint difficulty;
    |        uint capacity;
  > |        (,, difficulty, capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |
    |        // Disallow weaker user to transport to "difficult" dungeon.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1072)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(originDungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1086)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |    function _transport(uint _originDungeonId, uint _destinationDungeonId) private {
    |        // If a player do not have any hero, claim first hero.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1099)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |        // If a player do not tranport to any dungeon yet, and it is the first time claiming the hero,
    |        // set the dungeon location, increment the #0 Holyland player count by 1.
  > |        if (playerToDungeonID[msg.sender] == 0 && heroTokenContract.balanceOf(msg.sender) == 0) {
    |            dungeonPlayerCount[0]++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1140)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |        }
    |
  > |        return heroTokenContract.createHero(0, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1144)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |     */
    |    modifier dungeonCanTransport(uint _destinationDungeonId) {
  > |        require(_destinationDungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        uint capacity;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1165)

[33mWarning[0m for UnhandledException in contract 'DungeonTransportation':
    |        uint status;
    |        uint capacity;
  > |        (,status,,capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |        require(status == 0 || status == 1);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1168)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTransportation':
    |     */
    |    function _getTop5HeroesPower(address _address, uint _dungeonId) internal view returns (uint) {
  > |        uint heroCount = heroTokenContract.balanceOf(_address);
    |
    |        if (heroCount == 0) {
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(930)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTransportation':
    |
    |        for (uint i = 0; i < heroCount; i++) {
  > |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
    |            (,,, genes) = heroTokenContract.heroes(heroId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(940)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTransportation':
    |            uint heroId = heroTokenContract.ownerTokens(_address, i);
    |            uint genes;
  > |            (,,, genes) = heroTokenContract.heroes(heroId);
    |            // Power of dungeonId = 0 (no super hero boost).
    |            heroPowers[i] = _getHeroPower(genes, _dungeonId);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(942)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTransportation':
    |    function _getHeroPower(uint _genes, uint _dungeonId) internal view returns (uint) {
    |        uint difficulty;
  > |        (,, difficulty,,,,,,) = dungeonTokenContract.dungeons(_dungeonId);
    |
    |        // Calculate total stats power.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(975)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTransportation':
    |        uint difficulty;
    |        uint capacity;
  > |        (,, difficulty, capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |
    |        // Disallow weaker user to transport to "difficult" dungeon.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1072)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTransportation':
    |        // ** STORAGE UPDATE **
    |        // Increment the accumulated rewards for the dungeon.
  > |        dungeonTokenContract.addDungeonRewards(originDungeonId, requiredFee);
    |
    |        // Calculate any excess funds and make it available to be withdrawed by the player.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1086)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTransportation':
    |    function _transport(uint _originDungeonId, uint _destinationDungeonId) private {
    |        // If a player do not have any hero, claim first hero.
  > |        if (heroTokenContract.balanceOf(msg.sender) == 0) {
    |            claimHero();
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1099)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTransportation':
    |        // If a player do not tranport to any dungeon yet, and it is the first time claiming the hero,
    |        // set the dungeon location, increment the #0 Holyland player count by 1.
  > |        if (playerToDungeonID[msg.sender] == 0 && heroTokenContract.balanceOf(msg.sender) == 0) {
    |            dungeonPlayerCount[0]++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1140)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTransportation':
    |        }
    |
  > |        return heroTokenContract.createHero(0, msg.sender);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTransportation':
    |     */
    |    modifier dungeonCanTransport(uint _destinationDungeonId) {
  > |        require(_destinationDungeonId < dungeonTokenContract.totalSupply());
    |        uint status;
    |        uint capacity;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DungeonTransportation':
    |        uint status;
    |        uint capacity;
  > |        (,status,,capacity,,,,,) = dungeonTokenContract.dungeons(_destinationDungeonId);
    |        require(status == 0 || status == 1);
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1168)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |
    |    totalPayments = totalPayments.sub(payment);
  > |    payments[payee] = 0;
    |
    |    assert(payee.send(payment));
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |   */
    |  function asyncSend(address dest, uint256 amount) internal {
  > |    payments[dest] = payments[dest].add(amount);
    |    totalPayments = totalPayments.add(amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |        // ** STORAGE UPDATE **
    |        // Update player location.
  > |        playerToDungeonID[msg.sender] = _destinationDungeonId;
    |
    |        // Emit the DungeonChallenged event.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1110)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |    */
    |    function removeOwnership() onlyOwner public {
  > |        owner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |     */
    |    function setDungeonTokenContract(address _newDungeonTokenContract) onlyOwner external {
  > |        dungeonTokenContract = DungeonToken(_newDungeonTokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(885)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |     */
    |    function setHeroTokenContract(address _newHeroTokenContract) onlyOwner external {
  > |        heroTokenContract = HeroToken(_newHeroTokenContract);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(893)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |     */
    |    function setChallengeScienceContract(address _newChallengeScienceAddress) onlyOwner external {
  > |        challengeScienceContract = ChallengeScienceInterface(_newChallengeScienceAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(901)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |     */
    |    function setTrainingScienceContract(address _newTrainingScienceAddress) onlyOwner external {
  > |        trainingScienceContract = TrainingScienceInterface(_newTrainingScienceAddress);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(909)

[33mWarning[0m for UnrestrictedWrite in contract 'DungeonTransportation':
    |     */
    |    function setTransportationFeeMultiplier(uint _newTransportationFeeMultiplier) onlyOwner external {
  > |        transportationFeeMultiplier = _newTransportationFeeMultiplier;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(1154)

[33mWarning[0m for LockedEther in contract 'EjectableOwnable':
    | * @dev The EjectableOwnable contract provides the function to remove the ownership of the contract.
    | */
  > |contract EjectableOwnable is Ownable {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'EjectableOwnable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'EjectableOwnable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'EjectableOwnable':
    |     * the contract will achieve truly decentralisation.
    |    */
  > |    function removeOwnership() onlyOwner public {
    |        owner = 0x0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'EjectableOwnable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'EjectableOwnable':
    |    */
    |    function removeOwnership() onlyOwner public {
  > |        owner = 0x0;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(54)

[33mWarning[0m for LockedEther in contract 'HeroToken':
    | * @dev See the DungeonStructs contract to see the details of the Hero token data structure.
    | */
  > |contract HeroToken is ERC721, DungeonStructs, Pausable, JointOwnable {
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(605)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |        // When creating new token, _from is 0x0, but we can't account that address.
    |        if (_from != address(0)) {
  > |            ownershipTokenCount[_from]--;
    |
    |            // Remove the _tokenId from ownerTokens[_from]
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(700)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |
    |/**
  > | * @title Ownable
    | * @dev The Ownable contract has an owner address, and provides basic authorization control
    | * functions, this simplifies the implementation of "user permissions".
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |    require(_anotherOwner != 0);
    |    AnotherOwnerAssigned(_anotherOwner);
  > |    anotherOwner1 = _anotherOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |    require(_anotherOwner != 0);
    |    AnotherOwnerAssigned(_anotherOwner);
  > |    anotherOwner2 = _anotherOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |    function _transfer(address _from, address _to, uint _tokenId) internal {
    |        // Increment the ownershipTokenCount.
  > |        ownershipTokenCount[_to]++;
    |
    |        // Transfer ownership.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(690)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |
    |        // Transfer ownership.
  > |        tokenIndexToOwner[_tokenId] = _to;
    |
    |        // Add the _tokenId to ownerTokens[_to]
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(693)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |
    |        // Add the _tokenId to ownerTokens[_to]
  > |        ownerTokens[_to].push(_tokenId);
    |
    |        // When creating new token, _from is 0x0, but we can't account that address.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(696)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |        // UPDATE STORAGE
    |        // Create a new hero.
  > |        heroes.push(Hero(uint64(now), 0, 0, _genes));
    |
    |        // Token id is the index in the storage array.
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(760)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |     */
    |    function setHeroGenes(uint _id, uint _newGenes) eitherOwner tokenExists(_id) external {
  > |        heroes[_id].genes = _newGenes;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(779)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |        Hero storage hero = heroes[_id];
    |
  > |        hero.cooldownStartTime = uint64(now);
    |        hero.cooldownIndex++;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(788)

[33mWarning[0m for UnrestrictedWrite in contract 'HeroToken':
    |
    |        hero.cooldownStartTime = uint64(now);
  > |        hero.cooldownIndex++;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(789)

[33mWarning[0m for LockedEther in contract 'JointOwnable':
    | *  Note that onlyOwner modifier would still be accessible only for the original owner.
    | */
  > |contract JointOwnable is Ownable {
    |
    |  event AnotherOwnerAssigned(address indexed anotherOwner);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'JointOwnable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'JointOwnable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'JointOwnable':
    |  event AnotherOwnerAssigned(address indexed anotherOwner);
    |
  > |  address public anotherOwner1;
    |  address public anotherOwner2;
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'JointOwnable':
    |
    |  address public anotherOwner1;
  > |  address public anotherOwner2;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'JointOwnable':
    |   * @param _anotherOwner The address to another owner.
    |   */
  > |  function assignAnotherOwner1(address _anotherOwner) onlyOwner public {
    |    require(_anotherOwner != 0);
    |    AnotherOwnerAssigned(_anotherOwner);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'JointOwnable':
    |   * @param _anotherOwner The address to another owner.
    |   */
  > |  function assignAnotherOwner2(address _anotherOwner) onlyOwner public {
    |    require(_anotherOwner != 0);
    |    AnotherOwnerAssigned(_anotherOwner);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'JointOwnable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'JointOwnable':
    |    require(_anotherOwner != 0);
    |    AnotherOwnerAssigned(_anotherOwner);
  > |    anotherOwner1 = _anotherOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'JointOwnable':
    |    require(_anotherOwner != 0);
    |    AnotherOwnerAssigned(_anotherOwner);
  > |    anotherOwner2 = _anotherOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(97)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |
    |  event Pause();
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(141)

[33mWarning[0m for DAOConstantGas in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for LockedEther in contract 'PullPayment':
    | * contract and use asyncSend instead of send.
    | */
  > |contract PullPayment {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(220)

[33mWarning[0m for TODReceiver in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnhandledException in contract 'PullPayment':
    |    payments[payee] = 0;
    |
  > |    assert(payee.send(payment));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'PullPayment':
    |
    |    totalPayments = totalPayments.sub(payment);
  > |    payments[payee] = 0;
    |
    |    assert(payee.send(payment));
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(238)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x141766882733cafa9033e8707548fdcac908db22.sol(172)


