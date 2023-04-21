Processing contract: /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol:PoSTokenStandard
Processing contract: /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol:TrueDeckToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipRenounced(
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(88)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipRenounced(
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        emit OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        emit Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        emit Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(130)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x4221eb87b28de194e916f2b09274471fb0b01b1c.sol(7)


