Processing contract: /home/jiaming/mavs_srcs/contract@0x55f44e8b16651a7c5ea1ffcc54749336ffc17e3a.sol:SetLibrary
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SetLibrary':
  > |library SetLibrary
    |{
    |    struct ArrayIndexAndExistsFlag
  at /home/jiaming/mavs_srcs/contract@0x55f44e8b16651a7c5ea1ffcc54749336ffc17e3a.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
  > |library SetLibrary
    |{
    |    struct ArrayIndexAndExistsFlag
  at /home/jiaming/mavs_srcs/contract@0x55f44e8b16651a7c5ea1ffcc54749336ffc17e3a.sol(1)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |library SetLibrary
    |{
  > |    struct ArrayIndexAndExistsFlag
    |    {
    |        uint256 index;
  at /home/jiaming/mavs_srcs/contract@0x55f44e8b16651a7c5ea1ffcc54749336ffc17e3a.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |        
    |        // Remember that the value is in the set, and remember the value's array index
  > |        self.valuesMapping[value] = ArrayIndexAndExistsFlag({index: self.values.length, exists: true});
    |        
    |        // Add the value to the array of unique values
  at /home/jiaming/mavs_srcs/contract@0x55f44e8b16651a7c5ea1ffcc54749336ffc17e3a.sol(19)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |        
    |        // Add the value to the array of unique values
  > |        self.values.push(value);
    |        
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x55f44e8b16651a7c5ea1ffcc54749336ffc17e3a.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |        
    |        // Remember that the value is not in the set
  > |        self.valuesMapping[value].exists = false;
    |        
    |        // Now we need to remove the value from the array. To prevent leaking
  at /home/jiaming/mavs_srcs/contract@0x55f44e8b16651a7c5ea1ffcc54749336ffc17e3a.sol(36)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |            uint256 valueToMove = self.values[self.values.length-1];
    |            uint256 indexToMoveItTo = self.valuesMapping[value].index;
  > |            self.values[indexToMoveItTo] = valueToMove;
    |            self.valuesMapping[valueToMove].index = indexToMoveItTo;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x55f44e8b16651a7c5ea1ffcc54749336ffc17e3a.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |            uint256 indexToMoveItTo = self.valuesMapping[value].index;
    |            self.values[indexToMoveItTo] = valueToMove;
  > |            self.valuesMapping[valueToMove].index = indexToMoveItTo;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x55f44e8b16651a7c5ea1ffcc54749336ffc17e3a.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'SetLibrary':
    |        // We do free the storage allocation in the mapping, because it is
    |        // less likely that the exact same value will added again.
  > |        delete self.valuesMapping[value];
    |        
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x55f44e8b16651a7c5ea1ffcc54749336ffc17e3a.sol(61)


