Processing contract: /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol:BasicAccessControl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol:EtheremonDataBase
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol:EtheremonEnum
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol:EtheremonRankBattle
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol:EtheremonRankData
Processing contract: /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol:EtheremonTradeInterface
[33mWarning[0m for LockedEther in contract 'BasicAccessControl':
    |pragma solidity ^0.4.16;
    |
  > |contract BasicAccessControl {
    |    address public owner;
    |    // address[] public moderators;
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    // address[] public moderators;
    |    uint16 public totalModerators = 0;
  > |    mapping (address => bool) public moderators;
    |    bool public isMaintaining = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'BasicAccessControl':
    |
    |
  > |    function AddModerator(address _newModerator) onlyOwner public {
    |        if (moderators[_newModerator] == false) {
    |            moderators[_newModerator] = true;
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    }
    |    
  > |    function RemoveModerator(address _oldModerator) onlyOwner public {
    |        if (moderators[_oldModerator] == true) {
    |            moderators[_oldModerator] = false;
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    }
    |
  > |    function UpdateMaintaining(bool _isMaintaining) onlyOwner public {
    |        isMaintaining = _isMaintaining;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'BasicAccessControl':
    |
    |contract BasicAccessControl {
  > |    address public owner;
    |    // address[] public moderators;
    |    uint16 public totalModerators = 0;
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    address public owner;
    |    // address[] public moderators;
  > |    uint16 public totalModerators = 0;
    |    mapping (address => bool) public moderators;
    |    bool public isMaintaining = false;
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    uint16 public totalModerators = 0;
    |    mapping (address => bool) public moderators;
  > |    bool public isMaintaining = false;
    |
    |    function BasicAccessControl() public {
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'BasicAccessControl':
    |    }
    |
  > |    function ChangeOwner(address _newOwner) onlyOwner public {
    |        if (_newOwner != address(0)) {
    |            owner = _newOwner;
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |    function ChangeOwner(address _newOwner) onlyOwner public {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |    function AddModerator(address _newModerator) onlyOwner public {
    |        if (moderators[_newModerator] == false) {
  > |            moderators[_newModerator] = true;
    |            totalModerators += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |        if (moderators[_newModerator] == false) {
    |            moderators[_newModerator] = true;
  > |            totalModerators += 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |    function RemoveModerator(address _oldModerator) onlyOwner public {
    |        if (moderators[_oldModerator] == true) {
  > |            moderators[_oldModerator] = false;
    |            totalModerators -= 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |        if (moderators[_oldModerator] == true) {
    |            moderators[_oldModerator] = false;
  > |            totalModerators -= 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |
    |    function UpdateMaintaining(bool _isMaintaining) onlyOwner public {
  > |        isMaintaining = _isMaintaining;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(51)

[33mWarning[0m for LockedEther in contract 'EtheremonEnum':
    |}
    |
  > |contract EtheremonEnum {
    |    enum ArrayType {
    |        CLASS_TYPE,
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(55)

[31mViolation[0m for LockedEther in contract 'EtheremonRankBattle':
    |}
    |
  > |contract EtheremonRankBattle is BasicAccessControl, EtheremonEnum {
    |
    |    struct MonsterObjAcc {
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(82)

[33mWarning[0m for UnhandledException in contract 'EtheremonRankBattle':
    |        EtheremonDataBase data = EtheremonDataBase(dataContract);
    |        MonsterObjAcc memory obj;
  > |        (obj.monsterId, obj.classId, obj.trainer, obj.exp, obj.createIndex, obj.lastClaimIndex, obj.createTime) = data.getMonsterObj(_objId);
    |        if (obj.trainer != _owner || obj.classId == 21) return 0;
    |        return obj.classId;
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(159)

[33mWarning[0m for UnhandledException in contract 'EtheremonRankBattle':
    |        
    |        EtheremonTradeInterface trade = EtheremonTradeInterface(tradeContract);
  > |        if (trade.isOnTrading(_a1) || trade.isOnTrading(_a2) || trade.isOnTrading(_a3) || 
    |            trade.isOnTrading(_s1) || trade.isOnTrading(_s2) || trade.isOnTrading(_s3))
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(202)

[33mWarning[0m for UnhandledException in contract 'EtheremonRankBattle':
    |        EtheremonTradeInterface trade = EtheremonTradeInterface(tradeContract);
    |        if (trade.isOnTrading(_a1) || trade.isOnTrading(_a2) || trade.isOnTrading(_a3) || 
  > |            trade.isOnTrading(_s1) || trade.isOnTrading(_s2) || trade.isOnTrading(_s3))
    |            revert();
    |
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(203)

[33mWarning[0m for UnhandledException in contract 'EtheremonRankBattle':
    |
    |        EtheremonRankData rank = EtheremonRankData(rankDataContract);
  > |        uint32 playerId = rank.setPlayer(msg.sender, _a1, _a2, _a3, _s1, _s2, _s3);
    |        EventUpdateCastle(msg.sender, playerId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(207)

[33mWarning[0m for UnhandledException in contract 'EtheremonRankBattle':
    |
    |        // can not keep too many etheremon 
  > |        if (data.getMonsterDexSize(msg.sender) > maxDexSize)
    |            revert();
    |        
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(215)

[33mWarning[0m for UnhandledException in contract 'EtheremonRankBattle':
    |            classId = starterClasses[i];
    |            seed = getRandom(uint(block.blockhash(block.number - i)));
  > |            objId = data.addMonsterObj(classId, msg.sender, "..name me...");
    |            for (j = 0; j < 6; j += 1) {
    |                seed = seed ^ (i + j);
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(227)

[33mWarning[0m for UnhandledException in contract 'EtheremonRankBattle':
    |            for (j = 0; j < 6; j += 1) {
    |                seed = seed ^ (i + j);
  > |                value = uint8(seed % 32) + data.getElementInArrayType(ArrayType.STAT_START, uint64(classId), j);
    |                data.addElementToArrayType(ArrayType.STAT_BASE, objId, value);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(230)

[33mWarning[0m for UnhandledException in contract 'EtheremonRankBattle':
    |                seed = seed ^ (i + j);
    |                value = uint8(seed % 32) + data.getElementInArrayType(ArrayType.STAT_START, uint64(classId), j);
  > |                data.addElementToArrayType(ArrayType.STAT_BASE, objId, value);
    |            }
    |            
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheremonRankBattle':
    |        EtheremonDataBase data = EtheremonDataBase(dataContract);
    |        MonsterObjAcc memory obj;
  > |        (obj.monsterId, obj.classId, obj.trainer, obj.exp, obj.createIndex, obj.lastClaimIndex, obj.createTime) = data.getMonsterObj(_objId);
    |        if (obj.trainer != _owner || obj.classId == 21) return 0;
    |        return obj.classId;
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(159)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheremonRankBattle':
    |        
    |        EtheremonTradeInterface trade = EtheremonTradeInterface(tradeContract);
  > |        if (trade.isOnTrading(_a1) || trade.isOnTrading(_a2) || trade.isOnTrading(_a3) || 
    |            trade.isOnTrading(_s1) || trade.isOnTrading(_s2) || trade.isOnTrading(_s3))
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheremonRankBattle':
    |        EtheremonTradeInterface trade = EtheremonTradeInterface(tradeContract);
    |        if (trade.isOnTrading(_a1) || trade.isOnTrading(_a2) || trade.isOnTrading(_a3) || 
  > |            trade.isOnTrading(_s1) || trade.isOnTrading(_s2) || trade.isOnTrading(_s3))
    |            revert();
    |
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheremonRankBattle':
    |
    |        EtheremonRankData rank = EtheremonRankData(rankDataContract);
  > |        uint32 playerId = rank.setPlayer(msg.sender, _a1, _a2, _a3, _s1, _s2, _s3);
    |        EventUpdateCastle(msg.sender, playerId);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(207)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheremonRankBattle':
    |
    |        // can not keep too many etheremon 
  > |        if (data.getMonsterDexSize(msg.sender) > maxDexSize)
    |            revert();
    |        
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheremonRankBattle':
    |            classId = starterClasses[i];
    |            seed = getRandom(uint(block.blockhash(block.number - i)));
  > |            objId = data.addMonsterObj(classId, msg.sender, "..name me...");
    |            for (j = 0; j < 6; j += 1) {
    |                seed = seed ^ (i + j);
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheremonRankBattle':
    |            for (j = 0; j < 6; j += 1) {
    |                seed = seed ^ (i + j);
  > |                value = uint8(seed % 32) + data.getElementInArrayType(ArrayType.STAT_START, uint64(classId), j);
    |                data.addElementToArrayType(ArrayType.STAT_BASE, objId, value);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(230)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheremonRankBattle':
    |                seed = seed ^ (i + j);
    |                value = uint8(seed % 32) + data.getElementInArrayType(ArrayType.STAT_START, uint64(classId), j);
  > |                data.addElementToArrayType(ArrayType.STAT_BASE, objId, value);
    |            }
    |            
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |    function ChangeOwner(address _newOwner) onlyOwner public {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |    function AddModerator(address _newModerator) onlyOwner public {
    |        if (moderators[_newModerator] == false) {
  > |            moderators[_newModerator] = true;
    |            totalModerators += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |        if (moderators[_newModerator] == false) {
    |            moderators[_newModerator] = true;
  > |            totalModerators += 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |    function RemoveModerator(address _oldModerator) onlyOwner public {
    |        if (moderators[_oldModerator] == true) {
  > |            moderators[_oldModerator] = false;
    |            totalModerators -= 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |        if (moderators[_oldModerator] == true) {
    |            moderators[_oldModerator] = false;
  > |            totalModerators -= 1;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |
    |    function UpdateMaintaining(bool _isMaintaining) onlyOwner public {
  > |        isMaintaining = _isMaintaining;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |    
    |    function setContract(address _dataContract, address _tradeContract, address _rankDataContract) onlyModerators external {
  > |        dataContract = _dataContract;
    |        tradeContract = _tradeContract;
    |        rankDataContract = _rankDataContract;
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |    function setContract(address _dataContract, address _tradeContract, address _rankDataContract) onlyModerators external {
    |        dataContract = _dataContract;
  > |        tradeContract = _tradeContract;
    |        rankDataContract = _rankDataContract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |        dataContract = _dataContract;
    |        tradeContract = _tradeContract;
  > |        rankDataContract = _rankDataContract;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |
    |    function setStarterClass(uint _index, uint32 _classId) onlyModerators external {
  > |        starterClasses[_index] = _classId;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |    
    |    function quickSetStarterClasses() onlyModerators external {
  > |        starterClasses[0] = 25;
    |        starterClasses[1] = 26;
    |        starterClasses[2] = 27;
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |    function quickSetStarterClasses() onlyModerators external {
    |        starterClasses[0] = 25;
  > |        starterClasses[1] = 26;
    |        starterClasses[2] = 27;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |        starterClasses[0] = 25;
    |        starterClasses[1] = 26;
  > |        starterClasses[2] = 27;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonRankBattle':
    |    
    |    function setMaxDexSize(uint _value) onlyModerators external {
  > |        maxDexSize = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbb991caafa1cbbe9502fcd9ced6557c5b3784d42.sol(146)


