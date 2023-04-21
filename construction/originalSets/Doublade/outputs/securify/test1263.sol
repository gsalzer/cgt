Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol:OODCrowdsale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'OODCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(297)

[33mWarning[0m for LockedEther in contract 'OODCrowdsale':
    |}
    |
  > |contract OODCrowdsale is Pausable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(156)

[33mWarning[0m for UnhandledException in contract 'OODCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(272)

[33mWarning[0m for UnhandledException in contract 'OODCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(297)

[33mWarning[0m for UnhandledException in contract 'OODCrowdsale':
    |   */
    |  function withdrawTokens() public onlyOwner {
  > |    uint256 unsold = token.balanceOf(this);
    |    token.transfer(owner, unsold);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(320)

[33mWarning[0m for UnhandledException in contract 'OODCrowdsale':
    |  function withdrawTokens() public onlyOwner {
    |    uint256 unsold = token.balanceOf(this);
  > |    token.transfer(owner, unsold);
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(321)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OODCrowdsale':
    |   */
    |  function _deliverTokens(address _beneficiary, uint256 _tokenAmount) internal {
  > |    token.transfer(_beneficiary, _tokenAmount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(272)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OODCrowdsale':
    |   */
    |  function _forwardFunds() internal {
  > |    wallet.transfer(msg.value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OODCrowdsale':
    |   */
    |  function withdrawTokens() public onlyOwner {
  > |    uint256 unsold = token.balanceOf(this);
    |    token.transfer(owner, unsold);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(320)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OODCrowdsale':
    |  function withdrawTokens() public onlyOwner {
    |    uint256 unsold = token.balanceOf(this);
  > |    token.transfer(owner, unsold);
    |  }
    |    
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(321)

[33mWarning[0m for UnrestrictedWrite in contract 'OODCrowdsale':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'OODCrowdsale':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'OODCrowdsale':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'OODCrowdsale':
    |   */
    |  function start() public onlyOwner {
  > |    openingTime = now;       
    |    closingTime =  now + duration;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'OODCrowdsale':
    |  function start() public onlyOwner {
    |    openingTime = now;       
  > |    closingTime =  now + duration;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'OODCrowdsale':
    |
    |    // update state
  > |    weiRaised = weiRaised.add(weiAmount);
    |
    |    _processPurchase(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(242)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(107)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(151)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4fc6f746dd8d4bd24cb0b19b6a17c4845765d0c9.sol(7)


