Processing contract: /home/jiaming/mavs_srcs/contract@0x2a0f713aa953442eaca9ea47083f656170e67ba4.sol:Pub
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'Pub':
    |pragma solidity ^0.4.18;
    |
  > |contract Pub {
    |    struct Publication {
    |        address source;
  at /home/jiaming/mavs_srcs/contract@0x2a0f713aa953442eaca9ea47083f656170e67ba4.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Pub':
    |pragma solidity ^0.4.18;
    |
  > |contract Pub {
    |    struct Publication {
    |        address source;
  at /home/jiaming/mavs_srcs/contract@0x2a0f713aa953442eaca9ea47083f656170e67ba4.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'Pub':
    |
    |contract Pub {
  > |    struct Publication {
    |        address source;
    |        uint256 timestamp;
  at /home/jiaming/mavs_srcs/contract@0x2a0f713aa953442eaca9ea47083f656170e67ba4.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'Pub':
    |    returns (uint256) {
    |        uint256 index = all.length;
  > |        all.push(Publication(
    |            msg.sender,
    |            now,
  at /home/jiaming/mavs_srcs/contract@0x2a0f713aa953442eaca9ea47083f656170e67ba4.sol(23)

[31mViolation[0m for UnrestrictedWrite in contract 'Pub':
    |    returns (uint256) {
    |        uint256 index = all.length;
  > |        all.push(Publication(
    |            msg.sender,
    |            now,
  at /home/jiaming/mavs_srcs/contract@0x2a0f713aa953442eaca9ea47083f656170e67ba4.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Pub':
    |pragma solidity ^0.4.18;
    |
  > |contract Pub {
    |    struct Publication {
    |        address source;
  at /home/jiaming/mavs_srcs/contract@0x2a0f713aa953442eaca9ea47083f656170e67ba4.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'Pub':
    |
    |contract Pub {
  > |    struct Publication {
    |        address source;
    |        uint256 timestamp;
  at /home/jiaming/mavs_srcs/contract@0x2a0f713aa953442eaca9ea47083f656170e67ba4.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'Pub':
    |            _body
    |        ));
  > |        allByAuthor[msg.sender].push(index);
    |        return index;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a0f713aa953442eaca9ea47083f656170e67ba4.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'Pub':
    |            bytes(_body)
    |        ));
  > |        allByAuthor[msg.sender].push(index);
    |        return index;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2a0f713aa953442eaca9ea47083f656170e67ba4.sol(43)


