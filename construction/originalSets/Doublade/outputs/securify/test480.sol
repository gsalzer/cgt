Processing contract: /home/jiaming/mavs_srcs/contract@0x1f2659bd1f38ea484b3ed7d03749fe157326ad16.sol:DPOS
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DPOS':
    |pragma solidity ^0.4.18;
    |
  > |contract DPOS {
    |    uint256 public limit;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x1f2659bd1f38ea484b3ed7d03749fe157326ad16.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'DPOS':
    |pragma solidity ^0.4.18;
    |
  > |contract DPOS {
    |    uint256 public limit;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x1f2659bd1f38ea484b3ed7d03749fe157326ad16.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'DPOS':
    |    function create(uint _id, string _content) public onlyOwner returns (bool) {
    |        VoteItem memory item = VoteItem({content: _content, agreeNum: 0, disagreeNum: 0});
  > |        voteItems[_id] = item;
    |        Create(_id, _content);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1f2659bd1f38ea484b3ed7d03749fe157326ad16.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'DPOS':
    |pragma solidity ^0.4.18;
    |
  > |contract DPOS {
    |    uint256 public limit;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x1f2659bd1f38ea484b3ed7d03749fe157326ad16.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'DPOS':
    |
    |contract DPOS {
  > |    uint256 public limit;
    |    address public owner;
    |    struct VoteItem {
  at /home/jiaming/mavs_srcs/contract@0x1f2659bd1f38ea484b3ed7d03749fe157326ad16.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'DPOS':
    |
    |    function setLimit(uint256 _limit) public onlyOwner returns (bool) {
  > |        limit = _limit;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1f2659bd1f38ea484b3ed7d03749fe157326ad16.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'DPOS':
    |    function vote(uint _id, address _voter, bool _choice) public onlyOwner returns (bool) {
    |        if (_choice) {
  > |            voteItems[_id].agreeNum += 1;
    |        } else {
    |            voteItems[_id].disagreeNum += 1;
  at /home/jiaming/mavs_srcs/contract@0x1f2659bd1f38ea484b3ed7d03749fe157326ad16.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'DPOS':
    |            voteItems[_id].agreeNum += 1;
    |        } else {
  > |            voteItems[_id].disagreeNum += 1;
    |        }
    |        VoteRecord memory record = VoteRecord({voter: _voter, choice: _choice});
  at /home/jiaming/mavs_srcs/contract@0x1f2659bd1f38ea484b3ed7d03749fe157326ad16.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'DPOS':
    |        }
    |        VoteRecord memory record = VoteRecord({voter: _voter, choice: _choice});
  > |        voteRecords[_id].push(record);
    |        Vote(_id, _voter, _choice);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1f2659bd1f38ea484b3ed7d03749fe157326ad16.sol(54)


