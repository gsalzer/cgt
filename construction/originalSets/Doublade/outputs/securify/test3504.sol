Processing contract: /home/jiaming/mavs_srcs/contract@0xe5af8907776fd5f1bb069369fd398ad33102751e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5af8907776fd5f1bb069369fd398ad33102751e.sol:ToAddress
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5af8907776fd5f1bb069369fd398ad33102751e.sol:Wallie
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5af8907776fd5f1bb069369fd398ad33102751e.sol:WallieFirstProject
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5af8907776fd5f1bb069369fd398ad33102751e.sol:Zero
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |	/**
  at /home/jiaming/mavs_srcs/contract@0xe5af8907776fd5f1bb069369fd398ad33102751e.sol(515)

[33mWarning[0m for LockedEther in contract 'ToAddress':
    |}
    |
  > |library ToAddress
    |{
    |	function toAddr(uint source) internal pure returns(address) {
  at /home/jiaming/mavs_srcs/contract@0xe5af8907776fd5f1bb069369fd398ad33102751e.sol(575)

[33mWarning[0m for LockedEther in contract 'WallieFirstProject':
    |
    |//The interface of the first draft (the amount of deposits and amount of payments)
  > |contract WallieFirstProject {
    |
    |	mapping (address => uint256) public invested;
  at /home/jiaming/mavs_srcs/contract@0xe5af8907776fd5f1bb069369fd398ad33102751e.sol(508)

[31mViolation[0m for MissingInputValidation in contract 'WallieFirstProject':
    |contract WallieFirstProject {
    |
  > |	mapping (address => uint256) public invested;
    |
    |	mapping (address => uint256) public payments;
  at /home/jiaming/mavs_srcs/contract@0xe5af8907776fd5f1bb069369fd398ad33102751e.sol(510)

[31mViolation[0m for MissingInputValidation in contract 'WallieFirstProject':
    |	mapping (address => uint256) public invested;
    |
  > |	mapping (address => uint256) public payments;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xe5af8907776fd5f1bb069369fd398ad33102751e.sol(512)

[33mWarning[0m for LockedEther in contract 'Zero':
    |}
    |
  > |library Zero
    |{
    |	function requireNotZero(uint a) internal pure {
  at /home/jiaming/mavs_srcs/contract@0xe5af8907776fd5f1bb069369fd398ad33102751e.sol(587)


