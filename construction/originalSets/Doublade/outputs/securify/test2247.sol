Processing contract: /home/jiaming/mavs_srcs/contract@0x91cba680f109a32a29a3b91159a7c843d9384ca2.sol:Sale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x91cba680f109a32a29a3b91159a7c843d9384ca2.sol:token
[33mWarning[0m for LockedEther in contract 'Sale':
    |}
    |
  > |contract Sale {
    |    address private maintoken = 0x2054a15c6822a722378d13c4e4ea85365e46e50b;
    |    address private owner = 0xabc45921642cbe058555361490f49b6321ed6989;
  at /home/jiaming/mavs_srcs/contract@0x91cba680f109a32a29a3b91159a7c843d9384ca2.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Sale':
    |    address private owner8 = 0x966c0FD16a4f4292E6E0372e04fbB5c7013AD02e;
    |                    uint256 private sendtoken;
  > |    uint256 public cost1token = 0.00042 ether;
    |    uint256 private ethersum;
    |    uint256 private ethersum8;
  at /home/jiaming/mavs_srcs/contract@0x91cba680f109a32a29a3b91159a7c843d9384ca2.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Sale':
    |    uint256 private ethersum;
    |    uint256 private ethersum8;
  > |                    token public tokenReward;
    |    
    |    function Sale() public {
  at /home/jiaming/mavs_srcs/contract@0x91cba680f109a32a29a3b91159a7c843d9384ca2.sol(15)


