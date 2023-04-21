Processing contract: /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol:token
[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() onlyOwner internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(135)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | * as they arrive.
    | */
  > |contract Crowdsale is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(71)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    myToken.transfer(beneficiary, tokens);
    |
    |    emit TokenPurchase(beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(119)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() onlyOwner internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(135)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function transferBackTo(uint256 tokens, address beneficiary) onlyOwner public returns (bool){
  > |    myToken.transfer(beneficiary, tokens);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(139)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |    weiRaised = weiRaised.add(weiAmount);
    |
  > |    myToken.transfer(beneficiary, tokens);
    |
    |    emit TokenPurchase(beneficiary, weiAmount, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  // override to create custom fund forwarding mechanisms
    |  function forwardFunds() onlyOwner internal {
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(135)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function transferBackTo(uint256 tokens, address beneficiary) onlyOwner public returns (bool){
  > |    myToken.transfer(beneficiary, tokens);
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(139)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    myToken.transfer(beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  // to change rate
    |  function updateRate(uint256 new_rate) onlyOwner public{
  > |    rate = new_rate;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(128)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(59)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6e6e054270d7a0416cb26505de212f2afbd45088.sol(7)


