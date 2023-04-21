Processing contract: /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol:MainframeTokenDistribution
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MainframeTokenDistribution':
    |
    |
  > |contract MainframeTokenDistribution is Ownable {
    |
    |  uint public totalDistributed;
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'MainframeTokenDistribution':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'MainframeTokenDistribution':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'MainframeTokenDistribution':
    |contract MainframeTokenDistribution is Ownable {
    |
  > |  uint public totalDistributed;
    |  ERC20 mainframeToken;
    |
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'MainframeTokenDistribution':
    |  }
    |
  > |  function emergencyERC20Drain(ERC20 token) external onlyOwner {
    |    // owner can drain tokens that are sent here by mistake
    |    uint256 amount = token.balanceOf(this);
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(91)

[33mWarning[0m for UnhandledException in contract 'MainframeTokenDistribution':
    |    for(uint i = 0; i < recipients.length; i++) {
    |      if(values[i] > 0) {
  > |        require(mainframeToken.transferFrom(tokenOwner, recipients[i], values[i]));
    |        emit TokensDistributed(recipients[i], values[i]);
    |        totalDistributed += values[i];
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(84)

[33mWarning[0m for UnhandledException in contract 'MainframeTokenDistribution':
    |  function emergencyERC20Drain(ERC20 token) external onlyOwner {
    |    // owner can drain tokens that are sent here by mistake
  > |    uint256 amount = token.balanceOf(this);
    |    token.transfer(owner, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(93)

[33mWarning[0m for UnhandledException in contract 'MainframeTokenDistribution':
    |    // owner can drain tokens that are sent here by mistake
    |    uint256 amount = token.balanceOf(this);
  > |    token.transfer(owner, amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(94)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainframeTokenDistribution':
    |    for(uint i = 0; i < recipients.length; i++) {
    |      if(values[i] > 0) {
  > |        require(mainframeToken.transferFrom(tokenOwner, recipients[i], values[i]));
    |        emit TokensDistributed(recipients[i], values[i]);
    |        totalDistributed += values[i];
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(84)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainframeTokenDistribution':
    |  function emergencyERC20Drain(ERC20 token) external onlyOwner {
    |    // owner can drain tokens that are sent here by mistake
  > |    uint256 amount = token.balanceOf(this);
    |    token.transfer(owner, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MainframeTokenDistribution':
    |    // owner can drain tokens that are sent here by mistake
    |    uint256 amount = token.balanceOf(this);
  > |    token.transfer(owner, amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'MainframeTokenDistribution':
    |        require(mainframeToken.transferFrom(tokenOwner, recipients[i], values[i]));
    |        emit TokensDistributed(recipients[i], values[i]);
  > |        totalDistributed += values[i];
    |      }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'MainframeTokenDistribution':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(38)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa79d79f9f427d4ea2df5b418c7e12f3d713c131.sol(38)


