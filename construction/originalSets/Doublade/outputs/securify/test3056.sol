Processing contract: /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol:Airdropper
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Airdropper':
    |}
    |
  > |contract Airdropper is Ownable {
    |
    |    function multisend(address _tokenAddr, address[] dests, uint256[] values)
  at /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol(44)

[33mWarning[0m for UnhandledException in contract 'Airdropper':
    |        uint256 i = 0;
    |        while (i < dests.length) {
  > |           ERC20(_tokenAddr).transfer(dests[i], values[i]);
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol(51)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Airdropper':
    |        uint256 i = 0;
    |        while (i < dests.length) {
  > |           ERC20(_tokenAddr).transfer(dests[i], values[i]);
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdropper':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol(24)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions". 
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |  function Ownable() {
  at /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    | 
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol(22)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xc7becfb4fc4b0f52e6650920ccc03bdb49b4b7a9.sol(24)


