Processing contract: /home/jiaming/mavs_srcs/contract@0xc86bdf9661c62646194ef29b1b8f5fe226e8c97e.sol:EtherShare
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'EtherShare':
    |pragma solidity ^0.4.13;
    |
  > |contract EtherShare {
    |    
    |    uint public count;
  at /home/jiaming/mavs_srcs/contract@0xc86bdf9661c62646194ef29b1b8f5fe226e8c97e.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherShare':
    |pragma solidity ^0.4.13;
    |
  > |contract EtherShare {
    |    
    |    uint public count;
  at /home/jiaming/mavs_srcs/contract@0xc86bdf9661c62646194ef29b1b8f5fe226e8c97e.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherShare':
    |
    |    function NewShare(string nickname, bool AllowUpdated, string content) public {
  > |        allShare[count].push(oneShare(msg.sender, nickname, now, AllowUpdated, content)); // add a new share
    |        EVENT(count,0);
    |        count++;
  at /home/jiaming/mavs_srcs/contract@0xc86bdf9661c62646194ef29b1b8f5fe226e8c97e.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherShare':
    |    function ReplyShare(uint ShareID, string nickname, bool AllowUpdated, string content) public {
    |        require(ShareID<count); // reply to a existed share
  > |        allShare[ShareID].push(oneShare(msg.sender, nickname, now, AllowUpdated, content));
    |        EVENT(ShareID,allShare[ShareID].length-1);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc86bdf9661c62646194ef29b1b8f5fe226e8c97e.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherShare':
    |pragma solidity ^0.4.13;
    |
  > |contract EtherShare {
    |    
    |    uint public count;
  at /home/jiaming/mavs_srcs/contract@0xc86bdf9661c62646194ef29b1b8f5fe226e8c97e.sol(3)


