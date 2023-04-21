Processing contract: /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol:BattleAdmin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol:BattleBase
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol:BattleCore
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol:BattleDeciderInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol:BattlePrize
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol:ERC721
Processing contract: /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol:FighterCoreInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol:GeneScienceInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BattleAdmin':
    |// File: contracts/Battle/BattleAdmin.sol
    |
  > |contract BattleAdmin is BattleBase {
    |    event ContractUpgrade(address newContract);
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(297)

[33mWarning[0m for UnhandledException in contract 'BattleAdmin':
    |        FighterCoreInterface candidateContract = FighterCoreInterface(_address);
    |
  > |        require(candidateContract.implementsERC721());
    |
    |        fighterCore = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(322)

[33mWarning[0m for UnhandledException in contract 'BattleAdmin':
    |        GeneScienceInterface candidateContract = GeneScienceInterface(_address);
    |
  > |        require(candidateContract.isGeneScience());
    |
    |        geneScience = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(334)

[33mWarning[0m for UnhandledException in contract 'BattleAdmin':
    |        BattleDeciderInterface deciderCandidateContract = BattleDeciderInterface(_address);
    |
  > |        require(deciderCandidateContract.isBattleDecider());
    |
    |        battleDecider = deciderCandidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(346)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleAdmin':
    |        FighterCoreInterface candidateContract = FighterCoreInterface(_address);
    |
  > |        require(candidateContract.implementsERC721());
    |
    |        fighterCore = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleAdmin':
    |        GeneScienceInterface candidateContract = GeneScienceInterface(_address);
    |
  > |        require(candidateContract.isGeneScience());
    |
    |        geneScience = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleAdmin':
    |        BattleDeciderInterface deciderCandidateContract = BattleDeciderInterface(_address);
    |
  > |        require(deciderCandidateContract.isBattleDecider());
    |
    |        battleDecider = deciderCandidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleAdmin':
    |pragma solidity ^0.4.19;
    |
  > |// File: contracts/ERC721Draft.sol
    |
    |/// @title Interface for contracts conforming to ERC-721: Non-Fungible Tokens
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleAdmin':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleAdmin':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleAdmin':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleAdmin':
    |        require(candidateContract.implementsERC721());
    |
  > |        fighterCore = candidateContract;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleAdmin':
    |        require(candidateContract.isGeneScience());
    |
  > |        geneScience = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleAdmin':
    |        require(deciderCandidateContract.isBattleDecider());
    |
  > |        battleDecider = deciderCandidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleAdmin':
    |
    |    function addRace(uint8 _strength, uint8 _dexterity, uint8 _vitality) public onlyOwner {
  > |        raceBaseStats.push(RaceBaseStats({
    |            strength: _strength,
    |            dexterity: _dexterity,
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleAdmin':
    |        require(raceBaseStats.length > 4);
    |        
  > |        delete raceBaseStats[raceBaseStats.length - 1];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleAdmin':
    |    /// @param _v2Address new address
    |    function setNewAddress(address _v2Address) public onlyOwner whenPaused {
  > |        newContractAddress = _v2Address;
    |        
    |        ContractUpgrade(_v2Address);
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleAdmin':
    |    function setSecondsPerBlock(uint256 _secs) external onlyOwner {
    |        require(_secs < prizeCooldowns[0]);
  > |        secondsPerBlock = _secs;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(381)

[33mWarning[0m for LockedEther in contract 'BattleBase':
    |// File: contracts/Battle/BattleBase.sol
    |
  > |contract BattleBase is Ownable, Pausable {
    |    event TeamCreated(uint256 indexed teamId, uint256[] fighterIds);
    |    event TeamDeleted(uint256 indexed teamId, uint256[] fighterIds);
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleBase':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleBase':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleBase':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(179)

[31mViolation[0m for LockedEther in contract 'BattleCore':
    |// File: contracts/Battle/BattleCore.sol
    |
  > |contract BattleCore is BattlePrize {
    |    function BattleCore(address _coreAddress, address _geneScienceAddress, address _battleDeciderAddress) public {
    |        addRace(4, 4, 4); // half elf
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(836)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |        FighterCoreInterface candidateContract = FighterCoreInterface(_address);
    |
  > |        require(candidateContract.implementsERC721());
    |
    |        fighterCore = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(322)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |        GeneScienceInterface candidateContract = GeneScienceInterface(_address);
    |
  > |        require(candidateContract.isGeneScience());
    |
    |        geneScience = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(334)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |        BattleDeciderInterface deciderCandidateContract = BattleDeciderInterface(_address);
    |
  > |        require(deciderCandidateContract.isBattleDecider());
    |
    |        battleDecider = deciderCandidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(346)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |        uint16 generation = uint16(generation256);
    |
  > |        uint256 genes = geneScience.mixGenes(genes1, genes2);
    |
    |        uint256 strength;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(565)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |            luck,
    |            experience
  > |        ) = fighterCore.getFighter(_fighterId);
    |
    |        return [
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(658)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |            ,
    |            ,
  > |        ) = fighterCore.getFighter(_fighterId);
    |
    |        return [
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(691)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |        uint256 _statIncrease = _calculateNewStat(experience, newExperience);
    |        
  > |        fighterCore.updateExperience(_fighterId, newExperience);
    |
    |        if (_statIncrease == 1) {
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(718)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |
    |        if (_statIncrease == 1) {
  > |            fighterCore.updateDexterity(_fighterId, uint8(++data[0]));
    |        } else if (_statIncrease == 2) {
    |            fighterCore.updateStrength(_fighterId, uint8(++data[1]));
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(721)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |            fighterCore.updateDexterity(_fighterId, uint8(++data[0]));
    |        } else if (_statIncrease == 2) {
  > |            fighterCore.updateStrength(_fighterId, uint8(++data[1]));
    |        } else if (_statIncrease == 3) {
    |            fighterCore.updateVitality(_fighterId, uint8(++data[2]));
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(723)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |            fighterCore.updateStrength(_fighterId, uint8(++data[1]));
    |        } else if (_statIncrease == 3) {
  > |            fighterCore.updateVitality(_fighterId, uint8(++data[2]));
    |        } else if (_statIncrease == 4) {
    |            fighterCore.updateLuck(_fighterId, uint8(++data[3]));
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(725)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |            fighterCore.updateVitality(_fighterId, uint8(++data[2]));
    |        } else if (_statIncrease == 4) {
  > |            fighterCore.updateLuck(_fighterId, uint8(++data[3]));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(727)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |        }
    |
  > |        fighterCore.updateFighterBattleStats(
    |            _fighterId,
    |            prizeCooldownEndTime,
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(762)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |        prizeGenes = newFighterData[1];
    |
  > |        fighterCore.createPrizeFighter(
    |            prizeGen,
    |            prizeGenes,
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(789)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |        for (uint i = 0; i < _fighterIds.length; i++) {
    |            uint256 fighterId = _fighterIds[i];
  > |            if (fighterCore.ownerOf(fighterId) != msg.sender)
    |                return false;
    |            if (fighterIndexToTeam[fighterId] > 0)
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(866)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |            xpForAttacker,
    |            xpForDefender
  > |        ) = battleDecider.determineWinner(getFighterArray(_attackerFighterIds), getFighterArray(defenderFighterIds));
    |        
    |        address winnerAddress;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(978)

[33mWarning[0m for UnhandledException in contract 'BattleCore':
    |                luck,
    |                experience
  > |            ) = fighterCore.getFighter(_fighterIds[i]);
    |
    |            uint256 level = experienceToLevel(experience);
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(1039)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |        FighterCoreInterface candidateContract = FighterCoreInterface(_address);
    |
  > |        require(candidateContract.implementsERC721());
    |
    |        fighterCore = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |        GeneScienceInterface candidateContract = GeneScienceInterface(_address);
    |
  > |        require(candidateContract.isGeneScience());
    |
    |        geneScience = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |        BattleDeciderInterface deciderCandidateContract = BattleDeciderInterface(_address);
    |
  > |        require(deciderCandidateContract.isBattleDecider());
    |
    |        battleDecider = deciderCandidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(346)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |        uint16 generation = uint16(generation256);
    |
  > |        uint256 genes = geneScience.mixGenes(genes1, genes2);
    |
    |        uint256 strength;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(565)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |            luck,
    |            experience
  > |        ) = fighterCore.getFighter(_fighterId);
    |
    |        return [
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(658)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |            ,
    |            ,
  > |        ) = fighterCore.getFighter(_fighterId);
    |
    |        return [
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(691)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |        uint256 _statIncrease = _calculateNewStat(experience, newExperience);
    |        
  > |        fighterCore.updateExperience(_fighterId, newExperience);
    |
    |        if (_statIncrease == 1) {
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(718)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |
    |        if (_statIncrease == 1) {
  > |            fighterCore.updateDexterity(_fighterId, uint8(++data[0]));
    |        } else if (_statIncrease == 2) {
    |            fighterCore.updateStrength(_fighterId, uint8(++data[1]));
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(721)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |            fighterCore.updateDexterity(_fighterId, uint8(++data[0]));
    |        } else if (_statIncrease == 2) {
  > |            fighterCore.updateStrength(_fighterId, uint8(++data[1]));
    |        } else if (_statIncrease == 3) {
    |            fighterCore.updateVitality(_fighterId, uint8(++data[2]));
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(723)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |            fighterCore.updateStrength(_fighterId, uint8(++data[1]));
    |        } else if (_statIncrease == 3) {
  > |            fighterCore.updateVitality(_fighterId, uint8(++data[2]));
    |        } else if (_statIncrease == 4) {
    |            fighterCore.updateLuck(_fighterId, uint8(++data[3]));
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(725)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |            fighterCore.updateVitality(_fighterId, uint8(++data[2]));
    |        } else if (_statIncrease == 4) {
  > |            fighterCore.updateLuck(_fighterId, uint8(++data[3]));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(727)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |        }
    |
  > |        fighterCore.updateFighterBattleStats(
    |            _fighterId,
    |            prizeCooldownEndTime,
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(762)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |        prizeGenes = newFighterData[1];
    |
  > |        fighterCore.createPrizeFighter(
    |            prizeGen,
    |            prizeGenes,
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(789)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |        for (uint i = 0; i < _fighterIds.length; i++) {
    |            uint256 fighterId = _fighterIds[i];
  > |            if (fighterCore.ownerOf(fighterId) != msg.sender)
    |                return false;
    |            if (fighterIndexToTeam[fighterId] > 0)
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(866)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |            xpForAttacker,
    |            xpForDefender
  > |        ) = battleDecider.determineWinner(getFighterArray(_attackerFighterIds), getFighterArray(defenderFighterIds));
    |        
    |        address winnerAddress;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(978)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattleCore':
    |                luck,
    |                experience
  > |            ) = fighterCore.getFighter(_fighterIds[i]);
    |
    |            uint256 level = experienceToLevel(experience);
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(1039)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |pragma solidity ^0.4.19;
    |
  > |// File: contracts/ERC721Draft.sol
    |
    |/// @title Interface for contracts conforming to ERC-721: Non-Fungible Tokens
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |        require(candidateContract.implementsERC721());
    |
  > |        fighterCore = candidateContract;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |        require(candidateContract.isGeneScience());
    |
  > |        geneScience = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |        require(deciderCandidateContract.isBattleDecider());
    |
  > |        battleDecider = deciderCandidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |
    |    function addRace(uint8 _strength, uint8 _dexterity, uint8 _vitality) public onlyOwner {
  > |        raceBaseStats.push(RaceBaseStats({
    |            strength: _strength,
    |            dexterity: _dexterity,
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |        require(raceBaseStats.length > 4);
    |        
  > |        delete raceBaseStats[raceBaseStats.length - 1];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |    /// @param _v2Address new address
    |    function setNewAddress(address _v2Address) public onlyOwner whenPaused {
  > |        newContractAddress = _v2Address;
    |        
    |        ContractUpgrade(_v2Address);
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |    function setSecondsPerBlock(uint256 _secs) external onlyOwner {
    |        require(_secs < prizeCooldowns[0]);
  > |        secondsPerBlock = _secs;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(381)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |        uint256 vitality;
    |
  > |        uint256 rand = uint(keccak256(now, msg.sender, randomCounter++));
    |
    |        (strength, dexterity, vitality) = _getStrengthDexterityVitality(_getRaceFromGenes(genes), generation, rand);
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(571)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |// File: contracts/Battle/BattleCore.sol
    |
  > |contract BattleCore is BattlePrize {
    |    function BattleCore(address _coreAddress, address _geneScienceAddress, address _battleDeciderAddress) public {
    |        addRace(4, 4, 4); // half elf
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(836)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |        if (deletedTeamIds.length > 0) {
    |            newTeamId = deletedTeamIds[deletedTeamIds.length - 1];
  > |            delete deletedTeamIds[deletedTeamIds.length - 1];
    |            deletedTeamIds.length--;
    |            teams[newTeamId] = _team;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(905)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |            delete deletedTeamIds[deletedTeamIds.length - 1];
    |            deletedTeamIds.length--;
  > |            teams[newTeamId] = _team;
    |        } else {
    |            newTeamId = teams.push(_team) - 1;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(907)

[33mWarning[0m for UnrestrictedWrite in contract 'BattleCore':
    |            teams[newTeamId] = _team;
    |        } else {
  > |            newTeamId = teams.push(_team) - 1;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(909)

[33mWarning[0m for LockedEther in contract 'BattlePrize':
    |// File: contracts/Battle/BattlePrize.sol
    |
  > |contract BattlePrize is BattleAdmin {
    |    // array index is level, value is experience to reach that level
    |    uint32[50] public stats = [
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(387)

[33mWarning[0m for UnhandledException in contract 'BattlePrize':
    |        FighterCoreInterface candidateContract = FighterCoreInterface(_address);
    |
  > |        require(candidateContract.implementsERC721());
    |
    |        fighterCore = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(322)

[33mWarning[0m for UnhandledException in contract 'BattlePrize':
    |        GeneScienceInterface candidateContract = GeneScienceInterface(_address);
    |
  > |        require(candidateContract.isGeneScience());
    |
    |        geneScience = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(334)

[33mWarning[0m for UnhandledException in contract 'BattlePrize':
    |        BattleDeciderInterface deciderCandidateContract = BattleDeciderInterface(_address);
    |
  > |        require(deciderCandidateContract.isBattleDecider());
    |
    |        battleDecider = deciderCandidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(346)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattlePrize':
    |        FighterCoreInterface candidateContract = FighterCoreInterface(_address);
    |
  > |        require(candidateContract.implementsERC721());
    |
    |        fighterCore = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattlePrize':
    |        GeneScienceInterface candidateContract = GeneScienceInterface(_address);
    |
  > |        require(candidateContract.isGeneScience());
    |
    |        geneScience = candidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(334)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BattlePrize':
    |        BattleDeciderInterface deciderCandidateContract = BattleDeciderInterface(_address);
    |
  > |        require(deciderCandidateContract.isBattleDecider());
    |
    |        battleDecider = deciderCandidateContract;
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(346)

[33mWarning[0m for UnrestrictedWrite in contract 'BattlePrize':
    |pragma solidity ^0.4.19;
    |
  > |// File: contracts/ERC721Draft.sol
    |
    |/// @title Interface for contracts conforming to ERC-721: Non-Fungible Tokens
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'BattlePrize':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'BattlePrize':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'BattlePrize':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'BattlePrize':
    |        require(candidateContract.implementsERC721());
    |
  > |        fighterCore = candidateContract;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'BattlePrize':
    |        require(candidateContract.isGeneScience());
    |
  > |        geneScience = candidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'BattlePrize':
    |        require(deciderCandidateContract.isBattleDecider());
    |
  > |        battleDecider = deciderCandidateContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(348)

[33mWarning[0m for UnrestrictedWrite in contract 'BattlePrize':
    |
    |    function addRace(uint8 _strength, uint8 _dexterity, uint8 _vitality) public onlyOwner {
  > |        raceBaseStats.push(RaceBaseStats({
    |            strength: _strength,
    |            dexterity: _dexterity,
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(352)

[33mWarning[0m for UnrestrictedWrite in contract 'BattlePrize':
    |        require(raceBaseStats.length > 4);
    |        
  > |        delete raceBaseStats[raceBaseStats.length - 1];
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(364)

[33mWarning[0m for UnrestrictedWrite in contract 'BattlePrize':
    |    /// @param _v2Address new address
    |    function setNewAddress(address _v2Address) public onlyOwner whenPaused {
  > |        newContractAddress = _v2Address;
    |        
    |        ContractUpgrade(_v2Address);
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'BattlePrize':
    |    function setSecondsPerBlock(uint256 _secs) external onlyOwner {
    |        require(_secs < prizeCooldowns[0]);
  > |        secondsPerBlock = _secs;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(381)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(133)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(148)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9106708eb08a6fca144bcb45f8bcd020f903c0f5.sol(179)


