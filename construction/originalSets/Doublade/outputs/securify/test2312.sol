Processing contract: /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol:PreIco
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(36)

[33mWarning[0m for DAOConstantGas in contract 'PreIco':
    |
    |    function withdraw(address to, uint256 value) onlyOwner {
  > |        to.transfer(value);
    |        Withdraw(to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(116)

[33mWarning[0m for LockedEther in contract 'PreIco':
    |}
    |
  > |contract PreIco is Ownable {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(73)

[33mWarning[0m for TODAmount in contract 'PreIco':
    |
    |    function withdraw(address to, uint256 value) onlyOwner {
  > |        to.transfer(value);
    |        Withdraw(to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(116)

[33mWarning[0m for TODReceiver in contract 'PreIco':
    |
    |    function withdraw(address to, uint256 value) onlyOwner {
  > |        to.transfer(value);
    |        Withdraw(to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(116)

[33mWarning[0m for UnhandledException in contract 'PreIco':
    |
    |    function withdraw(address to, uint256 value) onlyOwner {
  > |        to.transfer(value);
    |        Withdraw(to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PreIco':
    |
    |    function withdraw(address to, uint256 value) onlyOwner {
  > |        to.transfer(value);
    |        Withdraw(to, value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'PreIco':
    |        if (remainingSupply >= value) {
    |            AssignToken(sender, value);
  > |            remainingSupply = remainingSupply.sub(value);
    |        } else {
    |            AssignToken(sender, remainingSupply);
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'PreIco':
    |        } else {
    |            AssignToken(sender, remainingSupply);
  > |            remainingSupply = 0;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'PreIco':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'PreIco':
    |    function updateValue(uint256 newValue) {
    |        require(msg.sender == updater || msg.sender == owner);
  > |        tokenValue = newValue;
    |        UpdateValue(newValue);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'PreIco':
    |
    |    function updateUpdater(address newUpdater) onlyOwner {
  > |        updater = newUpdater;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'PreIco':
    |
    |    function updateEndTime(uint256 newEnd) onlyOwner {
  > |        endTime = newEnd;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(110)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x9697c90f963486409ae57c13db9c74c5cae3fb29.sol(47)


