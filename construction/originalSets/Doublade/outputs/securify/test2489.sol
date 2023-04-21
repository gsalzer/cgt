Processing contract: /home/jiaming/mavs_srcs/contract@0xa2bef7ce60d464d611cf41c58b7b7946725f4b99.sol:Sale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xa2bef7ce60d464d611cf41c58b7b7946725f4b99.sol:token
[33mWarning[0m for LockedEther in contract 'Sale':
    |}
    |
  > |contract Sale {
    |    address private maintoken = 0x2054a15c6822a722378d13c4e4ea85365e46e50b;
    |    address private owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xa2bef7ce60d464d611cf41c58b7b7946725f4b99.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Sale':
    |    address private owner = msg.sender;
    |    uint256 private sendtoken;
  > |    uint256 public cost1token = 0.0008 ether;
    |    token public tokenReward;
    |    
  at /home/jiaming/mavs_srcs/contract@0xa2bef7ce60d464d611cf41c58b7b7946725f4b99.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Sale':
    |    uint256 private sendtoken;
    |    uint256 public cost1token = 0.0008 ether;
  > |    token public tokenReward;
    |    
    |    function Sale() public {
  at /home/jiaming/mavs_srcs/contract@0xa2bef7ce60d464d611cf41c58b7b7946725f4b99.sol(12)


