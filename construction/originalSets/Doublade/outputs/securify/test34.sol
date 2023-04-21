Processing contract: /home/jiaming/mavs_srcs/contract@0x02268047f5c77a6a533619773474d1a6e510443f.sol:Creator
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Creator':
  > |contract Creator {
    |    function newContract(bytes data) public returns (address) {
    |        address theNewContract;
  at /home/jiaming/mavs_srcs/contract@0x02268047f5c77a6a533619773474d1a6e510443f.sol(1)

[33mWarning[0m for MissingInputValidation in contract 'Creator':
    |contract Creator {
  > |    function newContract(bytes data) public returns (address) {
    |        address theNewContract;
    |        uint s = data.length;
  at /home/jiaming/mavs_srcs/contract@0x02268047f5c77a6a533619773474d1a6e510443f.sol(2)


