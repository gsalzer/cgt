pragma solidity ^0.4.6;

/* Test deposit penalties with 1000 user accounts and 200 bot accounts, 200 groups */
contract TestBotAttack {
    
    uint16 public numUsers;
    uint16 public commited;
    
    uint16 public maximumAccounts;

    uint16 public humanAccounts;

    bytes32 public maxHash = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

    uint8 public groupSize;
    uint public denominator;
    uint numGroups;
    
    function TestBotAttack() {
        groupSize = 6;
        maximumAccounts = 1200;
        humanAccounts = 1000;
        numGroups = maximumAccounts / groupSize;
        denominator = uint(maxHash) / numGroups;
    }
    
    modifier belowMaximumAccounts {
        if(numUsers >= maximumAccounts) throw;
        _;
    }
    
    mapping(uint => uint) public pseudonymGroup;
    mapping(uint => bool) public groupsWithThree;
    uint public groupsControlledByBots;
    mapping(uint => uint) public botCount;
    
    uint[] public groupsWithThreeBots;      
    
    function create1account() belowMaximumAccounts {
        for(uint i = commited; i < commited + 1; i++) {
        commit();
        }
        commited += 1;
    }
    function create2accounts() belowMaximumAccounts {
        for(uint i = commited; i < commited + 2; i++) {
        commit();
        }
        commited += 2;
    }
    function create10accounts() belowMaximumAccounts {
        for(uint i = commited; i < commited + 10; i++) {
        commit();
        }
        commited += 10;
    }
    
    function create50accounts() belowMaximumAccounts{
        for(uint i = commited; i < commited + 50; i++) {
        commit();
        }
        commited += 50;
    }
    function create100accounts() belowMaximumAccounts {
        for(uint i = commited; i < commited + 100; i++) {
        commit();
        }
        commited += 100;
    }
    

    function commit() internal {
      
      uint groupNumber = uint(sha3(numUsers)) / (denominator) + 1; // masHash / 120 groups = 964934076977634961863091541739065898777249872213671366995479866732609413666
      
      if(pseudonymGroup[groupNumber] >= groupSize) {
          for(uint i = 0; i < numGroups; i++) {
              if(groupNumber >= i + 1) {
                  if(pseudonymGroup[groupNumber - i] < groupSize) { groupNumber -= i; break; }
              }
              if(groupNumber + i <= numGroups) {
                  if(pseudonymGroup[groupNumber + i] < groupSize) { groupNumber += i; break; }
              }
          }
      }
      pseudonymGroup[groupNumber]++;
      numUsers++;
      if(numUsers > humanAccounts) {
          botCount[groupNumber] += 1; 
          if(botCount[groupNumber] == 4 && groupsWithThree[groupNumber] == false) {
              groupsWithThreeBots.push(groupNumber);
              groupsWithThree[groupNumber] = true;
              groupsControlledByBots++;
          }
      }
    }
}