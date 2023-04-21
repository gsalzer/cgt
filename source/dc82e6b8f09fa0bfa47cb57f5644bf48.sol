pragma solidity ^0.4.6;

/* Test deposit penalties with a number of human accounts and number of bot accounts */
contract TestBotAttack {
    
    uint public numUsers;

    uint humanAccounts;
    uint botAccounts;
    uint maximumAccounts;
    
    uint nymsToControlGroup;

    bytes32 maxHash = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

    uint groupSize;
    uint denominator;
    uint numGroups;
    
    function TestBotAttack() {
        groupSize = 7;
        nymsToControlGroup = 4;
        botAccounts = 1000;
        humanAccounts = 4 * botAccounts;
        maximumAccounts = humanAccounts + botAccounts;
        numGroups = maximumAccounts / groupSize;
        denominator = uint(maxHash) / numGroups;
    }
    
    modifier belowMaximumAccounts {
        if(numUsers >= botAccounts) throw;
        _;
    }
    
    function botControlledPOIs() public returns (uint) { return groupsControlledByBots * nymsToControlGroup; }
    function depositsPenaltiesPerBotPOI() public returns (uint) { return (botAccounts - botControlledPOIs()) / botControlledPOIs(); }
    
    mapping(uint => uint) pseudonymGroup;
    mapping(uint => bool) groupControlled;
    mapping(uint => uint) botCount;

    uint public groupsControlledByBots;
    
    function create50accounts() belowMaximumAccounts{
        uint commited = numUsers;
        for(uint i = commited; i < commited + 50; i++) {
        commit();
        }
    }
    function create100accounts() belowMaximumAccounts{
        uint commited = numUsers;
        for(uint i = commited; i < commited + 100; i++) {
        commit();
        }
    }
    
    function commit() internal {
      
      uint groupNumber = uint(sha3(numUsers)) / (denominator) + 1; 
      
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

      botCount[groupNumber] += 1; 
      if(botCount[groupNumber] == nymsToControlGroup && groupControlled[groupNumber] == false) {
          groupControlled[groupNumber] = true;
          groupsControlledByBots++;
      }
    }
}