Processing contract: /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol:Buffer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol:CBOR
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol:ETLToken
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol:ETLTokenPresale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol:OraclizeAddrResolverI
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol:OraclizeI
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol:usingOraclize
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Buffer':
    | */
    |
  > |library Buffer {
    |    struct buffer {
    |        bytes buf;
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(84)

[33mWarning[0m for LockedEther in contract 'CBOR':
    |}
    |
  > |library CBOR {
    |    using Buffer for Buffer.buffer;
    |
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(214)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1280)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1281)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1307)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1310)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1319)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1281)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1307)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1323)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1345)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1353)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1310)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1346)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1354)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(1233)

[33mWarning[0m for LockedEther in contract 'usingOraclize':
    | */
    |
  > |contract usingOraclize {
    |    uint constant day = 60*60*24;
    |    uint constant week = 60*60*24*7;
  at /home/jiaming/mavs_srcs/contract@0xe73e933e6252cbc7f34cf6efa5ba16db5705e22c.sol(286)


