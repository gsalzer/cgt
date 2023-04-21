Processing contract: /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol:Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol:UVDICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |
  > |  address public owner;
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(52)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(7)

[33mWarning[0m for DAOConstantGas in contract 'UVDICO':
    |    
    |    // Send money to owner
  > |    owner.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(137)

[33mWarning[0m for LockedEther in contract 'UVDICO':
    |}
    |
  > |contract UVDICO is Ownable {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(65)

[31mViolation[0m for TODReceiver in contract 'UVDICO':
    |    
    |    // Send money to owner
  > |    owner.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(137)

[33mWarning[0m for UnhandledException in contract 'UVDICO':
    |    
    |    // Send tokens to buyer
  > |    token.transfer(msg.sender, tokens);
    |    
    |    // Send money to owner
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(134)

[33mWarning[0m for UnhandledException in contract 'UVDICO':
    |    
    |    // Send money to owner
  > |    owner.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(137)

[33mWarning[0m for UnhandledException in contract 'UVDICO':
    |   */
    |  function tokensAvailable() constant returns (uint256) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(144)

[33mWarning[0m for UnhandledException in contract 'UVDICO':
    |  function destroy() onlyOwner {
    |    // Transfer tokens back to owner
  > |    uint256 balance = token.balanceOf(this);
    |    assert(balance > 0);
    |    token.transfer(owner, balance);
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(152)

[33mWarning[0m for UnhandledException in contract 'UVDICO':
    |    uint256 balance = token.balanceOf(this);
    |    assert(balance > 0);
  > |    token.transfer(owner, balance);
    |
    |    // There should be no ether in the contract but just in case
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(154)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UVDICO':
    |    
    |    // Send tokens to buyer
  > |    token.transfer(msg.sender, tokens);
    |    
    |    // Send money to owner
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(134)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UVDICO':
    |   */
    |  function tokensAvailable() constant returns (uint256) {
  > |    return token.balanceOf(this);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(144)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UVDICO':
    |  function destroy() onlyOwner {
    |    // Transfer tokens back to owner
  > |    uint256 balance = token.balanceOf(this);
    |    assert(balance > 0);
    |    token.transfer(owner, balance);
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(152)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UVDICO':
    |    uint256 balance = token.balanceOf(this);
    |    assert(balance > 0);
  > |    token.transfer(owner, balance);
    |
    |    // There should be no ether in the contract but just in case
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'UVDICO':
    |
    |    // Increment raised amount
  > |    raisedAmount = raisedAmount.add(msg.value);
    |    
    |    // Send tokens to buyer
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'UVDICO':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'UVDICO':
    |      require(initialized == false); // Can only be initialized once
    |      require(tokensAvailable() == initialTokens); // Must have enough tokens allocated
  > |      initialized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xfa649bffcd1a16a68e0b16755537fe6842cab119.sol(100)


