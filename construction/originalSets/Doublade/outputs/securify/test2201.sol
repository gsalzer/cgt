Processing contract: /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol:LifPresale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'LifPresale':
    |
    |    weiRaised = weiRaised.add(msg.value);
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(270)

[33mWarning[0m for LockedEther in contract 'LifPresale':
    |
    | */
  > |contract LifPresale is Ownable, Pausable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(230)

[33mWarning[0m for UnhandledException in contract 'LifPresale':
    |
    |    weiRaised = weiRaised.add(msg.value);
  > |    wallet.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(270)

[31mViolation[0m for UnrestrictedWrite in contract 'LifPresale':
    |    require(weiRaised.add(msg.value) <= maxCap);
    |
  > |    weiRaised = weiRaised.add(msg.value);
    |    wallet.transfer(msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'LifPresale':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'LifPresale':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'LifPresale':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(85)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(41)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(85)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x8f750f5caf6a0db221b6a1c601e0efdf4133badf.sol(94)


