Processing contract: /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol:GlobexSci
Processing contract: /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol:GlobexSciPreSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'GlobexSciPreSale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(181)

[33mWarning[0m for LockedEther in contract 'GlobexSciPreSale':
    | * as they arrive.
    | */
  > |contract GlobexSciPreSale is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(92)

[33mWarning[0m for UnhandledException in contract 'GlobexSciPreSale':
    |
    |    //purchase tokens and transfer to beneficiary
  > |    token.transfer(beneficiary, tokens);
    |
    |    // update state
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(165)

[33mWarning[0m for UnhandledException in contract 'GlobexSciPreSale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(181)

[33mWarning[0m for UnhandledException in contract 'GlobexSciPreSale':
    |  function finalize() onlyOwner {
    |    require(!isFinalized);
  > |    uint256 unsoldTokens = token.balanceOf(this);
    |    token.transfer(wallet, unsoldTokens);
    |    isFinalized = true;
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(187)

[33mWarning[0m for UnhandledException in contract 'GlobexSciPreSale':
    |    require(!isFinalized);
    |    uint256 unsoldTokens = token.balanceOf(this);
  > |    token.transfer(wallet, unsoldTokens);
    |    isFinalized = true;
    |    Finalized();
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(188)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GlobexSciPreSale':
    |
    |    //purchase tokens and transfer to beneficiary
  > |    token.transfer(beneficiary, tokens);
    |
    |    // update state
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GlobexSciPreSale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(181)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GlobexSciPreSale':
    |  function finalize() onlyOwner {
    |    require(!isFinalized);
  > |    uint256 unsoldTokens = token.balanceOf(this);
    |    token.transfer(wallet, unsoldTokens);
    |    isFinalized = true;
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(187)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GlobexSciPreSale':
    |    require(!isFinalized);
    |    uint256 unsoldTokens = token.balanceOf(this);
  > |    token.transfer(wallet, unsoldTokens);
    |    isFinalized = true;
    |    Finalized();
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSciPreSale':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSciPreSale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    //Token purchase event
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'GlobexSciPreSale':
    |    uint256 unsoldTokens = token.balanceOf(this);
    |    token.transfer(wallet, unsoldTokens);
  > |    isFinalized = true;
    |    Finalized();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(189)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(68)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe914e10f1c9c30c89511f4e7a0f5f7c9c46d6e10.sol(8)


