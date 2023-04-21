Processing contract: /home/jiaming/mavs_srcs/contract@0x2d4f1883d7f6035298152b85b4e07459c216c317.sol:ItalikButerin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ItalikButerin':
    |
    |
  > |contract ItalikButerin {
    |    address italikButerin = 0x32cf61edB8408223De1bb5B5f2661cda9E17fbA6;
    |
  at /home/jiaming/mavs_srcs/contract@0x2d4f1883d7f6035298152b85b4e07459c216c317.sol(5)

[31mViolation[0m for TODAmount in contract 'ItalikButerin':
    |
    |    function _payContributor(uint _amount, address _contributorAddress) internal returns (bool) {
  > |        if (!_contributorAddress.send(_amount)) {
    |            _payContributor(_amount, _contributorAddress);
    |            return false;
  at /home/jiaming/mavs_srcs/contract@0x2d4f1883d7f6035298152b85b4e07459c216c317.sol(43)

[33mWarning[0m for UnhandledException in contract 'ItalikButerin':
    |
    |    function _payContributor(uint _amount, address _contributorAddress) internal returns (bool) {
  > |        if (!_contributorAddress.send(_amount)) {
    |            _payContributor(_amount, _contributorAddress);
    |            return false;
  at /home/jiaming/mavs_srcs/contract@0x2d4f1883d7f6035298152b85b4e07459c216c317.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'ItalikButerin':
    |
    |
  > |contract ItalikButerin {
    |    address italikButerin = 0x32cf61edB8408223De1bb5B5f2661cda9E17fbA6;
    |
  at /home/jiaming/mavs_srcs/contract@0x2d4f1883d7f6035298152b85b4e07459c216c317.sol(5)

[31mViolation[0m for UnrestrictedWrite in contract 'ItalikButerin':
    |
    |        if (players[0].length == levels) {
  > |            ended = true;
    |        } else {
    |            ended = false;
  at /home/jiaming/mavs_srcs/contract@0x2d4f1883d7f6035298152b85b4e07459c216c317.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'ItalikButerin':
    |            ended = true;
    |        } else {
  > |            ended = false;
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x2d4f1883d7f6035298152b85b4e07459c216c317.sol(35)

[31mViolation[0m for UnrestrictedWrite in contract 'ItalikButerin':
    |
    |        _withdraw(_etherAmount);
  > |        players[0].push(player);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2d4f1883d7f6035298152b85b4e07459c216c317.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'ItalikButerin':
    |            // delete players for next game
    |            delete players[0];
  > |            ended = false;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2d4f1883d7f6035298152b85b4e07459c216c317.sol(69)


