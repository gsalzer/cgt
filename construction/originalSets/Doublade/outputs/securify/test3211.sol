Processing contract: /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol:IMCUnlockRecord
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'IMCUnlockRecord':
    |// 解锁记录合约
    |// ----------------------------------------------------------------------------
  > |contract IMCUnlockRecord is Owned{
    |
    |    // 解锁记录添加日志
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'IMCUnlockRecord':
    |// 解锁记录合约
    |// ----------------------------------------------------------------------------
  > |contract IMCUnlockRecord is Owned{
    |
    |    // 解锁记录添加日志
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'IMCUnlockRecord':
    |
    |        // 记录解锁信息
  > |        unlockRecord[_date] = RecordInfo(_date, _hash, _data, _fileFormat, _stripLen);
    |
    |        // 解锁日志记录
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCUnlockRecord':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCUnlockRecord':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCUnlockRecord':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCUnlockRecord':
    |// 解锁记录合约
    |// ----------------------------------------------------------------------------
  > |contract IMCUnlockRecord is Owned{
    |
    |    // 解锁记录添加日志
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCUnlockRecord':
    |     */
    |    function modifyExecutorAddr(address _addr) public onlyOwner {
  > |        executorAddress = _addr;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'IMCUnlockRecord':
    |
    |        // 记录解锁信息
  > |        unlockRecord[_date] = RecordInfo(_date, _hash, _data, _fileFormat, _stripLen);
    |
    |        // 解锁日志记录
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(85)

[33mWarning[0m for LockedEther in contract 'Owned':
    |// Owned contract
    |// ----------------------------------------------------------------------------
  > |contract Owned {
    |    address public owner;
    |    address public newOwner;
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address _newOwner) public onlyOwner {
    |        newOwner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |// ----------------------------------------------------------------------------
    |contract Owned {
  > |    address public owner;
    |    address public newOwner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |    address public owner;
  > |    address public newOwner;
    |
    |    event OwnershipTransferred(address indexed _from, address indexed _to);
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |        newOwner = _newOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address _newOwner) public onlyOwner {
  > |        newOwner = _newOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        require(msg.sender == newOwner);
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |        newOwner = address(0);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |        emit OwnershipTransferred(owner, newOwner);
    |        owner = newOwner;
  > |        newOwner = address(0);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd25adb7e51e1f275c9007dc22b16916ae4849f58.sol(28)


