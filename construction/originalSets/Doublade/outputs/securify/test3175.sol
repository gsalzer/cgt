Processing contract: /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol:FinalizableCrowdsale
Processing contract: /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol:FloraFicTokenCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol:TimedCrowdsale
[33mWarning[0m for DAOConstantGas in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(272)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    | */
    |
  > |contract Crowdsale {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(135)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(238)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(272)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(198)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(88)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xd04b24bec50f12200a65c3eb821c7b2c6b56fb3e.sol(9)


