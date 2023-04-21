Processing contract: /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol:Airdropper
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Airdropper':
    |
    |
  > |contract Airdropper is Ownable {
    |
    |    function multisend(address _tokenAddr, address[] dests, uint256 value)
  at /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol(56)

[33mWarning[0m for UnhandledException in contract 'Airdropper':
    |        uint256 i = 0;
    |        while (i < dests.length) {
  > |           ERC20(_tokenAddr).transfer(dests[i], value);
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol(63)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Airdropper':
    |        uint256 i = 0;
    |        while (i < dests.length) {
  > |           ERC20(_tokenAddr).transfer(dests[i], value);
    |           i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Airdropper':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol(36)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions". 
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to. 
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x92ae973f0549c7d51370a236fe7b1dfe9ea5aa56.sol(36)


