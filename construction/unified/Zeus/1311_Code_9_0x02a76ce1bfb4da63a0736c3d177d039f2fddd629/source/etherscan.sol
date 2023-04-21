pragma solidity ^0.4.6;

/* Test deposit penalties with a number of human accounts and number of bot accounts */
contract TestBotAttack {
    
    uint public numUsers;
 
    uint public humanAccounts;
    uint public botAccounts;
    uint public maximumAccounts;
      
    uint public nymsToControlGroup;

    bytes32 public maxHash = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;

    uint public groupSize;
    uint public denominator;
    uint public numGroups;
    
    function TestBotAttack() {
        groupSize = 9;
        nymsToControlGroup = 5;
        botAccounts = 500;
        humanAccounts = 9 * botAccounts;
        maximumAccounts = botAccounts + humanAccounts;
        numGroups = maximumAccounts / groupSize;
        denominator = uint(maxHash) / numGroups;
    }
    
    modifier belowMaximumAccounts {
        if(numUsers >= botAccounts) throw;
        _;
    }
    
    function botControlledPOIs() public constant returns (uint) { return groupsControlledByBots * nymsToControlGroup; }
    function depositsPenaltiesPerBotPOI() public constant returns (uint) { return (botAccounts - botControlledPOIs()) / botControlledPOIs(); }
    
    mapping(uint => uint) public pseudonymGroup;
    mapping(uint => bool) public groupControlled;
    mapping(uint => uint) public botCount;

    uint public groupsControlledByBots;
    
    function create50accounts() belowMaximumAccounts{
        uint commited = numUsers;
        for(uint i = commited; i < commited + 50; i++) {
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