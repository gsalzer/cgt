Processing contract: /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol:BasicAccessControl
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol:EtheremonData
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol:EtheremonDataBase
Processing contract: /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol:EtheremonEnum
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'BasicAccessControl':
    |}
    |
  > |contract BasicAccessControl {
    |    address public owner;
    |    address[] public moderators;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |pragma solidity ^0.4.16;
    |
  > |// copyright contact@Etheremon.com
    |
    |contract SafeMath {
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |}
    |
  > |contract BasicAccessControl {
    |    address public owner;
    |    address[] public moderators;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |                }
    |            }
  > |            moderators.push(_newModerator);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |        }
    |        if (foundIndex < moderators.length) {
  > |            moderators[foundIndex] = moderators[moderators.length-1];
    |            delete moderators[moderators.length-1];
    |            moderators.length--;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |        if (foundIndex < moderators.length) {
    |            moderators[foundIndex] = moderators[moderators.length-1];
  > |            delete moderators[moderators.length-1];
    |            moderators.length--;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicAccessControl':
    |    function ChangeOwner(address _newOwner) onlyOwner public {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(62)

[33mWarning[0m for DAOConstantGas in contract 'EtheremonData':
    |        }
    |        
  > |        _sendTo.transfer(_amount);
    |        return ResultCode.SUCCESS;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(191)

[33mWarning[0m for LockedEther in contract 'EtheremonData':
    |}
    |
  > |contract EtheremonData is EtheremonDataBase {
    |
    |    struct MonsterClass {
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(153)

[33mWarning[0m for TODAmount in contract 'EtheremonData':
    |        }
    |        
  > |        _sendTo.transfer(_amount);
    |        return ResultCode.SUCCESS;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(191)

[33mWarning[0m for TODReceiver in contract 'EtheremonData':
    |        }
    |        
  > |        _sendTo.transfer(_amount);
    |        return ResultCode.SUCCESS;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(191)

[33mWarning[0m for UnhandledException in contract 'EtheremonData':
    |        }
    |        
  > |        _sendTo.transfer(_amount);
    |        return ResultCode.SUCCESS;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtheremonData':
    |        }
    |        
  > |        _sendTo.transfer(_amount);
    |        return ResultCode.SUCCESS;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(191)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheremonData':
    |pragma solidity ^0.4.16;
    |
  > |// copyright contact@Etheremon.com
    |
    |contract SafeMath {
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheremonData':
    |                }
    |            }
  > |            moderators.push(_newModerator);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        }
    |        if (foundIndex < moderators.length) {
  > |            moderators[foundIndex] = moderators[moderators.length-1];
    |            delete moderators[moderators.length-1];
    |            moderators.length--;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        if (foundIndex < moderators.length) {
    |            moderators[foundIndex] = moderators[moderators.length-1];
  > |            delete moderators[moderators.length-1];
    |            moderators.length--;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'EtheremonData':
    |}
    |
  > |contract EtheremonData is EtheremonDataBase {
    |
    |    struct MonsterClass {
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |pragma solidity ^0.4.16;
    |
  > |// copyright contact@Etheremon.com
    |
    |contract SafeMath {
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |}
    |
  > |contract EtheremonData is EtheremonDataBase {
    |
    |    struct MonsterClass {
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |            array = monsterWorld[_id].skills;
    |        }
  > |        array.push(_value);
    |        return array.length;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |                array.length--;
    |            } else {
  > |                array[_index] = _value;
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        MonsterClass storage class = monsterClass[_classId];
    |        if (class.classId == 0) {
  > |            totalClass += 1;
    |        }
    |        class.classId = _classId;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |            totalClass += 1;
    |        }
  > |        class.classId = _classId;
    |        class.price = _price;
    |        class.returnPrice = _returnPrice;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        }
    |        class.classId = _classId;
  > |        class.price = _price;
    |        class.returnPrice = _returnPrice;
    |        class.catchable = _catchable;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(241)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        class.classId = _classId;
    |        class.price = _price;
  > |        class.returnPrice = _returnPrice;
    |        class.catchable = _catchable;
    |        return totalClass;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        class.price = _price;
    |        class.returnPrice = _returnPrice;
  > |        class.catchable = _catchable;
    |        return totalClass;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(243)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |                
    |        // construct new monster
  > |        totalMonster += 1;
    |        class.total += 1;
    |
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        // construct new monster
    |        totalMonster += 1;
  > |        class.total += 1;
    |
    |        MonsterObj storage obj = monsterWorld[totalMonster];
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |
    |        MonsterObj storage obj = monsterWorld[totalMonster];
  > |        obj.monsterId = totalMonster;
    |        obj.classId = _classId;
    |        obj.trainer = _trainer;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(257)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        MonsterObj storage obj = monsterWorld[totalMonster];
    |        obj.monsterId = totalMonster;
  > |        obj.classId = _classId;
    |        obj.trainer = _trainer;
    |        obj.name = _name;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        obj.monsterId = totalMonster;
    |        obj.classId = _classId;
  > |        obj.trainer = _trainer;
    |        obj.name = _name;
    |        obj.exp = 1;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(259)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        MonsterObj storage obj = monsterWorld[_objId];
    |        if (obj.monsterId == _objId) {
  > |            obj.exp = uint32(safeAdd(obj.exp, amount));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        MonsterObj storage obj = monsterWorld[_objId];
    |        if (obj.monsterId == _objId) {
  > |            obj.exp = uint32(safeSubtract(obj.exp, amount));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(291)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |        uint32 gap = uint32(safeSubtract(class.total, monster.lastClaimIndex));
    |        if (gap > 0) {
  > |            monster.lastClaimIndex = class.total;
    |            amount = safeMult(gap, class.returnPrice);
    |            trainerExtraBalance[monster.trainer] = safeAdd(trainerExtraBalance[monster.trainer], amount);
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |            monster.lastClaimIndex = class.total;
    |            amount = safeMult(gap, class.returnPrice);
  > |            trainerExtraBalance[monster.trainer] = safeAdd(trainerExtraBalance[monster.trainer], amount);
    |        }
    |        return amount;
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(336)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |    
    |    function addExtraBalance(address _trainer, uint256 _amount) onlyModerators public returns(uint256) {
  > |        trainerExtraBalance[_trainer] = safeAdd(trainerExtraBalance[_trainer], _amount);
    |        return trainerExtraBalance[_trainer];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(363)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |    
    |    function deductExtraBalance(address _trainer, uint256 _amount) onlyModerators public returns(uint256) {
  > |        trainerExtraBalance[_trainer] = safeSubtract(trainerExtraBalance[_trainer], _amount);
    |        return trainerExtraBalance[_trainer];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(368)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |    
    |    function setExtraBalance(address _trainer, uint256 _amount) onlyModerators public {
  > |        trainerExtraBalance[_trainer] = _amount;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(373)

[33mWarning[0m for UnrestrictedWrite in contract 'EtheremonData':
    |    function ChangeOwner(address _newOwner) onlyOwner public {
    |        if (_newOwner != address(0)) {
  > |            owner = _newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(62)

[33mWarning[0m for LockedEther in contract 'EtheremonEnum':
    |
    |
  > |contract EtheremonEnum {
    |
    |    enum ResultCode {
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(97)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// copyright contact@Etheremon.com
    |
  > |contract SafeMath {
    |
    |    /* function assert(bool assertion) internal { */
  at /home/jiaming/mavs_srcs/contract@0xabc1c404424bdf24c19a5cc5ef8f47781d18eb3e.sol(5)


