Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:ApproveAndCallReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:Controllable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:ControllerInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:Crowdsale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:FirstSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:LedToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:LedTokenInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:Presale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:PrivateSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:TokenFactory
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:TokenFactoryInterface
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:TokenInfo
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol:TokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Controllable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Controllable {
    |  address public controller;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'Controllable':
    | */
    |contract Controllable {
  > |  address public controller;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'Controllable':
    |   * @param newController The address to transfer ownership to.
    |   */
  > |  function transferControl(address newController) public onlyController {
    |    if (newController != address(0)) {
    |      controller = newController;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Controllable':
    |  function transferControl(address newController) public onlyController {
    |    if (newController != address(0)) {
  > |      controller = newController;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(170)

[33mWarning[0m for LockedEther in contract 'Crowdsale':
    |}
    |
  > |contract Crowdsale is Pausable, TokenInfo {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'Crowdsale':
    |  * @return balance {uint256} Corresponding token holder balance
    |  */
  > |  function balanceOf(address _owner) public constant returns (uint256) {
    |    return ledToken.balanceOf(_owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(305)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |contract TokenInfo {
    |    // Base prices in wei, going off from an Ether value of $500
  > |    uint256 public constant PRIVATESALE_BASE_PRICE_IN_WEI = 200000000000000;
    |    uint256 public constant PRESALE_BASE_PRICE_IN_WEI = 600000000000000;
    |    uint256 public constant ICO_BASE_PRICE_IN_WEI = 800000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    // Base prices in wei, going off from an Ether value of $500
    |    uint256 public constant PRIVATESALE_BASE_PRICE_IN_WEI = 200000000000000;
  > |    uint256 public constant PRESALE_BASE_PRICE_IN_WEI = 600000000000000;
    |    uint256 public constant ICO_BASE_PRICE_IN_WEI = 800000000000000;
    |    uint256 public constant FIRSTSALE_BASE_PRICE_IN_WEI = 200000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRIVATESALE_BASE_PRICE_IN_WEI = 200000000000000;
    |    uint256 public constant PRESALE_BASE_PRICE_IN_WEI = 600000000000000;
  > |    uint256 public constant ICO_BASE_PRICE_IN_WEI = 800000000000000;
    |    uint256 public constant FIRSTSALE_BASE_PRICE_IN_WEI = 200000000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRESALE_BASE_PRICE_IN_WEI = 600000000000000;
    |    uint256 public constant ICO_BASE_PRICE_IN_WEI = 800000000000000;
  > |    uint256 public constant FIRSTSALE_BASE_PRICE_IN_WEI = 200000000000000;
    |
    |    // First sale minimum and maximum contribution, going off from an Ether value of $500
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // First sale minimum and maximum contribution, going off from an Ether value of $500
  > |    uint256 public constant MIN_PURCHASE_OTHERSALES = 80000000000000000;
    |    uint256 public constant MIN_PURCHASE = 1000000000000000000;
    |    uint256 public constant MAX_PURCHASE = 1000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    // First sale minimum and maximum contribution, going off from an Ether value of $500
    |    uint256 public constant MIN_PURCHASE_OTHERSALES = 80000000000000000;
  > |    uint256 public constant MIN_PURCHASE = 1000000000000000000;
    |    uint256 public constant MAX_PURCHASE = 1000000000000000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant MIN_PURCHASE_OTHERSALES = 80000000000000000;
    |    uint256 public constant MIN_PURCHASE = 1000000000000000000;
  > |    uint256 public constant MAX_PURCHASE = 1000000000000000000000;
    |
    |    // Bonus percentages for each respective sale level
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    // Bonus percentages for each respective sale level
    |
  > |    uint256 public constant PRESALE_PERCENTAGE_1 = 10;
    |    uint256 public constant PRESALE_PERCENTAGE_2 = 15;
    |    uint256 public constant PRESALE_PERCENTAGE_3 = 20;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    uint256 public constant PRESALE_PERCENTAGE_1 = 10;
  > |    uint256 public constant PRESALE_PERCENTAGE_2 = 15;
    |    uint256 public constant PRESALE_PERCENTAGE_3 = 20;
    |    uint256 public constant PRESALE_PERCENTAGE_4 = 25;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRESALE_PERCENTAGE_1 = 10;
    |    uint256 public constant PRESALE_PERCENTAGE_2 = 15;
  > |    uint256 public constant PRESALE_PERCENTAGE_3 = 20;
    |    uint256 public constant PRESALE_PERCENTAGE_4 = 25;
    |    uint256 public constant PRESALE_PERCENTAGE_5 = 35;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRESALE_PERCENTAGE_2 = 15;
    |    uint256 public constant PRESALE_PERCENTAGE_3 = 20;
  > |    uint256 public constant PRESALE_PERCENTAGE_4 = 25;
    |    uint256 public constant PRESALE_PERCENTAGE_5 = 35;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRESALE_PERCENTAGE_3 = 20;
    |    uint256 public constant PRESALE_PERCENTAGE_4 = 25;
  > |    uint256 public constant PRESALE_PERCENTAGE_5 = 35;
    |
    |    uint256 public constant ICO_PERCENTAGE_1 = 5;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRESALE_PERCENTAGE_5 = 35;
    |
  > |    uint256 public constant ICO_PERCENTAGE_1 = 5;
    |    uint256 public constant ICO_PERCENTAGE_2 = 10;
    |    uint256 public constant ICO_PERCENTAGE_3 = 15;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    uint256 public constant ICO_PERCENTAGE_1 = 5;
  > |    uint256 public constant ICO_PERCENTAGE_2 = 10;
    |    uint256 public constant ICO_PERCENTAGE_3 = 15;
    |    uint256 public constant ICO_PERCENTAGE_4 = 20;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant ICO_PERCENTAGE_1 = 5;
    |    uint256 public constant ICO_PERCENTAGE_2 = 10;
  > |    uint256 public constant ICO_PERCENTAGE_3 = 15;
    |    uint256 public constant ICO_PERCENTAGE_4 = 20;
    |    uint256 public constant ICO_PERCENTAGE_5 = 25;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant ICO_PERCENTAGE_2 = 10;
    |    uint256 public constant ICO_PERCENTAGE_3 = 15;
  > |    uint256 public constant ICO_PERCENTAGE_4 = 20;
    |    uint256 public constant ICO_PERCENTAGE_5 = 25;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant ICO_PERCENTAGE_3 = 15;
    |    uint256 public constant ICO_PERCENTAGE_4 = 20;
  > |    uint256 public constant ICO_PERCENTAGE_5 = 25;
    |
    |    // Bonus levels in wei for each respective level
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    // Bonus levels in wei for each respective level
    |
  > |    uint256 public constant PRESALE_LEVEL_1 = 5000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_2 = 10000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_3 = 15000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    uint256 public constant PRESALE_LEVEL_1 = 5000000000000000000;
  > |    uint256 public constant PRESALE_LEVEL_2 = 10000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_3 = 15000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_4 = 20000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRESALE_LEVEL_1 = 5000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_2 = 10000000000000000000;
  > |    uint256 public constant PRESALE_LEVEL_3 = 15000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_4 = 20000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_5 = 25000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRESALE_LEVEL_2 = 10000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_3 = 15000000000000000000;
  > |    uint256 public constant PRESALE_LEVEL_4 = 20000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_5 = 25000000000000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRESALE_LEVEL_3 = 15000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_4 = 20000000000000000000;
  > |    uint256 public constant PRESALE_LEVEL_5 = 25000000000000000000;
    |
    |    uint256 public constant ICO_LEVEL_1 = 6666666666666666666;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRESALE_LEVEL_5 = 25000000000000000000;
    |
  > |    uint256 public constant ICO_LEVEL_1 = 6666666666666666666;
    |    uint256 public constant ICO_LEVEL_2 = 13333333333333333333;
    |    uint256 public constant ICO_LEVEL_3 = 20000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    uint256 public constant ICO_LEVEL_1 = 6666666666666666666;
  > |    uint256 public constant ICO_LEVEL_2 = 13333333333333333333;
    |    uint256 public constant ICO_LEVEL_3 = 20000000000000000000;
    |    uint256 public constant ICO_LEVEL_4 = 26666666666666666666;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant ICO_LEVEL_1 = 6666666666666666666;
    |    uint256 public constant ICO_LEVEL_2 = 13333333333333333333;
  > |    uint256 public constant ICO_LEVEL_3 = 20000000000000000000;
    |    uint256 public constant ICO_LEVEL_4 = 26666666666666666666;
    |    uint256 public constant ICO_LEVEL_5 = 33333333333333333333;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant ICO_LEVEL_2 = 13333333333333333333;
    |    uint256 public constant ICO_LEVEL_3 = 20000000000000000000;
  > |    uint256 public constant ICO_LEVEL_4 = 26666666666666666666;
    |    uint256 public constant ICO_LEVEL_5 = 33333333333333333333;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant ICO_LEVEL_3 = 20000000000000000000;
    |    uint256 public constant ICO_LEVEL_4 = 26666666666666666666;
  > |    uint256 public constant ICO_LEVEL_5 = 33333333333333333333;
    |
    |    // Caps for the respective sales, the amount of tokens allocated to the team and the total cap
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |    // Caps for the respective sales, the amount of tokens allocated to the team and the total cap
  > |    uint256 public constant PRIVATESALE_TOKENCAP = 18750000;
    |    uint256 public constant PRESALE_TOKENCAP = 18750000;
    |    uint256 public constant ICO_TOKENCAP = 22500000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    // Caps for the respective sales, the amount of tokens allocated to the team and the total cap
    |    uint256 public constant PRIVATESALE_TOKENCAP = 18750000;
  > |    uint256 public constant PRESALE_TOKENCAP = 18750000;
    |    uint256 public constant ICO_TOKENCAP = 22500000;
    |    uint256 public constant FIRSTSALE_TOKENCAP = 5000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRIVATESALE_TOKENCAP = 18750000;
    |    uint256 public constant PRESALE_TOKENCAP = 18750000;
  > |    uint256 public constant ICO_TOKENCAP = 22500000;
    |    uint256 public constant FIRSTSALE_TOKENCAP = 5000000;
    |    uint256 public constant LEDTEAM_TOKENS = 35000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant PRESALE_TOKENCAP = 18750000;
    |    uint256 public constant ICO_TOKENCAP = 22500000;
  > |    uint256 public constant FIRSTSALE_TOKENCAP = 5000000;
    |    uint256 public constant LEDTEAM_TOKENS = 35000000;
    |    uint256 public constant TOTAL_TOKENCAP = 100000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant ICO_TOKENCAP = 22500000;
    |    uint256 public constant FIRSTSALE_TOKENCAP = 5000000;
  > |    uint256 public constant LEDTEAM_TOKENS = 35000000;
    |    uint256 public constant TOTAL_TOKENCAP = 100000000;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant FIRSTSALE_TOKENCAP = 5000000;
    |    uint256 public constant LEDTEAM_TOKENS = 35000000;
  > |    uint256 public constant TOTAL_TOKENCAP = 100000000;
    |
    |    uint256 public constant DECIMALS_MULTIPLIER = 1 ether;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant TOTAL_TOKENCAP = 100000000;
    |
  > |    uint256 public constant DECIMALS_MULTIPLIER = 1 ether;
    |
    |    address public constant LED_MULTISIG = 0x865e785f98b621c5fdde70821ca7cea9eeb77ef4;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |    uint256 public constant DECIMALS_MULTIPLIER = 1 ether;
    |
  > |    address public constant LED_MULTISIG = 0x865e785f98b621c5fdde70821ca7cea9eeb77ef4;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  constructor() public {}
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() public onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() public onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(129)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  using SafeMath for uint256;
    |
  > |  LedTokenInterface public ledToken;
    |  uint256 public startTime;
    |  uint256 public endTime;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  LedTokenInterface public ledToken;
  > |  uint256 public startTime;
    |  uint256 public endTime;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  LedTokenInterface public ledToken;
    |  uint256 public startTime;
  > |  uint256 public endTime;
    |
    |  uint256 public totalWeiRaised;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(209)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  uint256 public endTime;
    |
  > |  uint256 public totalWeiRaised;
    |  uint256 public tokensMinted;
    |  uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  uint256 public totalWeiRaised;
  > |  uint256 public tokensMinted;
    |  uint256 public totalSupply;
    |  uint256 public contributors;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(212)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  uint256 public tokensMinted;
    |  uint256 public totalSupply;
  > |  uint256 public contributors;
    |  uint256 public surplusTokens;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(214)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  uint256 public totalSupply;
    |  uint256 public contributors;
  > |  uint256 public surplusTokens;
    |
    |  bool public finalized;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(215)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  uint256 public surplusTokens;
    |
  > |  bool public finalized;
    |
    |  bool public ledTokensAllocated;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  bool public finalized;
    |
  > |  bool public ledTokensAllocated;
    |  address public ledMultiSig = LED_MULTISIG;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(219)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |
    |  bool public ledTokensAllocated;
  > |  address public ledMultiSig = LED_MULTISIG;
    |
    |  //uint256 public tokenCap = FIRSTSALE_TOKENCAP;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(220)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  //uint256 public weiCap = tokenCap * FIRSTSALE_BASE_PRICE_IN_WEI;
    |
  > |  bool public started = false;
    |
    |  event TokenPurchase(address indexed purchaser, address indexed beneficiary, uint256 value, uint256 amount);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(226)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  * @return totalSupply {uint256} Led Token Total Supply
    |  */
  > |  function totalSupply() public constant returns (uint256) {
    |    return ledToken.totalSupply();
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(296)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  * @param _newController {address} New Led Token controller
    |  */
  > |  function changeController(address _newController) public onlyOwner {
    |    require(isContract(_newController));
    |    ledToken.transferControl(_newController);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(313)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  }
    |
  > |  function enableMasterTransfers() public onlyOwner {
    |    ledToken.enableMasterTransfers(true);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(318)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  }
    |
  > |  function lockMasterTransfers() public onlyOwner {
    |    ledToken.enableMasterTransfers(false);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(322)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  }
    |
  > |  function forceStart() public onlyOwner {
    |    started = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(326)

[33mWarning[0m for MissingInputValidation in contract 'Crowdsale':
    |  }*/
    |
  > |  function isContract(address _addr) constant internal returns(bool) {
    |    uint size;
    |    if (_addr == 0)
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(342)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  */
    |  function totalSupply() public constant returns (uint256) {
  > |    return ledToken.totalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(297)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  */
    |  function balanceOf(address _owner) public constant returns (uint256) {
  > |    return ledToken.balanceOf(_owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(306)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |  function changeController(address _newController) public onlyOwner {
    |    require(isContract(_newController));
  > |    ledToken.transferControl(_newController);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(315)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function enableMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(true);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(319)

[33mWarning[0m for UnhandledException in contract 'Crowdsale':
    |
    |  function lockMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(false);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  */
    |  function totalSupply() public constant returns (uint256) {
  > |    return ledToken.totalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  */
    |  function balanceOf(address _owner) public constant returns (uint256) {
  > |    return ledToken.balanceOf(_owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |  function changeController(address _newController) public onlyOwner {
    |    require(isContract(_newController));
  > |    ledToken.transferControl(_newController);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function enableMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(true);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Crowdsale':
    |
    |  function lockMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(false);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(323)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   */
    |  function pause() public onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    emit Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |   */
    |  function unpause() public onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    emit Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Crowdsale':
    |
    |  function forceStart() public onlyOwner {
  > |    started = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(327)

[33mWarning[0m for DAOConstantGas in contract 'FirstSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for LockedEther in contract 'FirstSale':
    | * on a token per ETH rate. Funds collected are forwarded to a wallet as they arrive.
    | */
  > |contract FirstSale is Crowdsale {
    |
    |  uint256 public tokenCap = FIRSTSALE_TOKENCAP;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(364)

[31mViolation[0m for TODReceiver in contract 'FirstSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnhandledException in contract 'FirstSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnhandledException in contract 'FirstSale':
    |  */
    |  function totalSupply() public constant returns (uint256) {
  > |    return ledToken.totalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(297)

[33mWarning[0m for UnhandledException in contract 'FirstSale':
    |  */
    |  function balanceOf(address _owner) public constant returns (uint256) {
  > |    return ledToken.balanceOf(_owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(306)

[33mWarning[0m for UnhandledException in contract 'FirstSale':
    |  function changeController(address _newController) public onlyOwner {
    |    require(isContract(_newController));
  > |    ledToken.transferControl(_newController);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(315)

[33mWarning[0m for UnhandledException in contract 'FirstSale':
    |
    |  function enableMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(true);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(319)

[33mWarning[0m for UnhandledException in contract 'FirstSale':
    |
    |  function lockMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(false);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(323)

[33mWarning[0m for UnhandledException in contract 'FirstSale':
    |    contributors = contributors.add(1);
    |
  > |    ledToken.mint(_beneficiary, tokens);
    |    emit TokenPurchase(msg.sender, _beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(408)

[33mWarning[0m for UnhandledException in contract 'FirstSale':
    |    uint256 decimals = 18;
    |    string memory symbol = "LED";
  > |    bool transfersEnabled = ledToken.transfersEnabled();
    |    return (
    |      TOTAL_TOKENCAP, // Tokencap with the decimal point in place. should be 100.000.000
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(417)

[33mWarning[0m for UnhandledException in contract 'FirstSale':
    |    require(!finalized);
    |    surplusTokens = cap - tokensMinted;
  > |    ledToken.mint(ledMultiSig, surplusTokens);
    |    ledToken.transferControl(owner);
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(436)

[33mWarning[0m for UnhandledException in contract 'FirstSale':
    |    surplusTokens = cap - tokensMinted;
    |    ledToken.mint(ledMultiSig, surplusTokens);
  > |    ledToken.transferControl(owner);
    |
    |    emit Finalized();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(437)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FirstSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FirstSale':
    |  */
    |  function totalSupply() public constant returns (uint256) {
  > |    return ledToken.totalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FirstSale':
    |  */
    |  function balanceOf(address _owner) public constant returns (uint256) {
  > |    return ledToken.balanceOf(_owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FirstSale':
    |  function changeController(address _newController) public onlyOwner {
    |    require(isContract(_newController));
  > |    ledToken.transferControl(_newController);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FirstSale':
    |
    |  function enableMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(true);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FirstSale':
    |
    |  function lockMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(false);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FirstSale':
    |    contributors = contributors.add(1);
    |
  > |    ledToken.mint(_beneficiary, tokens);
    |    emit TokenPurchase(msg.sender, _beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(408)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FirstSale':
    |    uint256 decimals = 18;
    |    string memory symbol = "LED";
  > |    bool transfersEnabled = ledToken.transfersEnabled();
    |    return (
    |      TOTAL_TOKENCAP, // Tokencap with the decimal point in place. should be 100.000.000
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(417)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FirstSale':
    |    require(!finalized);
    |    surplusTokens = cap - tokensMinted;
  > |    ledToken.mint(ledMultiSig, surplusTokens);
    |    ledToken.transferControl(owner);
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(436)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FirstSale':
    |    surplusTokens = cap - tokensMinted;
    |    ledToken.mint(ledMultiSig, surplusTokens);
  > |    ledToken.transferControl(owner);
    |
    |    emit Finalized();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'FirstSale':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'FirstSale':
    |   */
    |  function pause() public onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    emit Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'FirstSale':
    |   */
    |  function unpause() public onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    emit Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'FirstSale':
    |
    |  function forceStart() public onlyOwner {
  > |    started = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'FirstSale':
    |    require(weiAmount >= MIN_PURCHASE && weiAmount <= MAX_PURCHASE);
    |    uint256 priceInWei = FIRSTSALE_BASE_PRICE_IN_WEI;
  > |    totalWeiRaised = totalWeiRaised.add(weiAmount);
    |
    |    uint256 tokens = weiAmount.mul(DECIMALS_MULTIPLIER).div(priceInWei);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(400)

[33mWarning[0m for UnrestrictedWrite in contract 'FirstSale':
    |
    |    uint256 tokens = weiAmount.mul(DECIMALS_MULTIPLIER).div(priceInWei);
  > |    tokensMinted = tokensMinted.add(tokens);
    |    require(tokensMinted < cap);
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(403)

[33mWarning[0m for UnrestrictedWrite in contract 'FirstSale':
    |    require(tokensMinted < cap);
    |
  > |    contributors = contributors.add(1);
    |
    |    ledToken.mint(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(406)

[33mWarning[0m for UnrestrictedWrite in contract 'FirstSale':
    |    require(paused);
    |    require(!finalized);
  > |    surplusTokens = cap - tokensMinted;
    |    ledToken.mint(ledMultiSig, surplusTokens);
    |    ledToken.transferControl(owner);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(435)

[33mWarning[0m for UnrestrictedWrite in contract 'FirstSale':
    |    emit Finalized();
    |
  > |    finalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(441)

[33mWarning[0m for LockedEther in contract 'LedToken':
    |}
    |
  > |contract LedToken is Controllable {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(446)

[33mWarning[0m for UnhandledException in contract 'LedToken':
    |    if ((totalSupplyHistory.length == 0) || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |        if (address(parentToken) != 0x0) {
  > |            return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |        } else {
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(528)

[33mWarning[0m for UnhandledException in contract 'LedToken':
    |    if ((balances[_owner].length == 0) || (balances[_owner][0].fromBlock > _blockNumber)) {
    |        if (address(parentToken) != 0x0) {
  > |            return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |        } else {
    |            // Has no parent
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(562)

[33mWarning[0m for UnhandledException in contract 'LedToken':
    |    approve(_spender, _amount);
    |
  > |    ApproveAndCallReceiver(_spender).receiveApproval(
    |        msg.sender,
    |        _amount,
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(623)

[33mWarning[0m for UnhandledException in contract 'LedToken':
    |      }
    |
  > |      LedToken cloneToken = tokenFactory.createCloneToken(
    |          this,
    |          _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(831)

[33mWarning[0m for UnhandledException in contract 'LedToken':
    |
    |
  > |      cloneToken.transferControl(msg.sender);
    |
    |      // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(839)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedToken':
    |    if ((totalSupplyHistory.length == 0) || (totalSupplyHistory[0].fromBlock > _blockNumber)) {
    |        if (address(parentToken) != 0x0) {
  > |            return parentToken.totalSupplyAt(min(_blockNumber, parentSnapShotBlock));
    |        } else {
    |            return 0;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(528)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedToken':
    |    if ((balances[_owner].length == 0) || (balances[_owner][0].fromBlock > _blockNumber)) {
    |        if (address(parentToken) != 0x0) {
  > |            return parentToken.balanceOfAt(_owner, min(_blockNumber, parentSnapShotBlock));
    |        } else {
    |            // Has no parent
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(562)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedToken':
    |    approve(_spender, _amount);
    |
  > |    ApproveAndCallReceiver(_spender).receiveApproval(
    |        msg.sender,
    |        _amount,
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(623)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedToken':
    |      }
    |
  > |      LedToken cloneToken = tokenFactory.createCloneToken(
    |          this,
    |          _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(831)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LedToken':
    |
    |
  > |      cloneToken.transferControl(msg.sender);
    |
    |      // An event to make the token easy to find on the blockchain
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(839)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |  function transferControl(address newController) public onlyController {
    |    if (newController != address(0)) {
  > |      controller = newController;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |}
    |
  > |contract LedToken is Controllable {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(446)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |  function transferFrom(address _from, address _to, uint256 _amount) public returns (bool success) {
    |    require(allowed[_from][msg.sender] >= _amount);
  > |    allowed[_from][msg.sender] -= _amount;
    |    return doTransfer(_from, _to, _amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(593)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |    require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |    allowed[msg.sender][_spender] = _amount;
    |    emit Approval(msg.sender, _spender, _amount);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(609)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |
    |    for (uint256 i = 0; i < _addresses.length; i++) {
  > |      totalSupplyAtCheckpoint += _balances[i];
    |      updateValueAtNow(balances[_addresses[i]], _balances[i]);
    |      updateValueAtNow(totalSupplyHistory, totalSupplyAtCheckpoint);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(720)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |   */
    |  function lockPresaleBalances() public onlyController returns (bool) {
  > |    presaleBalancesLocked = true;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(733)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |  */
    |  function finishMinting() public onlyController returns (bool) {
  > |    mintingFinished = true;
    |    emit MintFinished();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(742)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |  */
    |  function enableTransfers(bool _value) public onlyController {
  > |    transfersEnabled = _value;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(752)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |  */
    |  function enableMasterTransfers(bool _value) public onlyController {
  > |    masterTransfersEnabled = _value;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(760)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |      if ((_checkpoints.length == 0) || (_checkpoints[_checkpoints.length-1].fromBlock < block.number)) {
    |              Checkpoint storage newCheckPoint = _checkpoints[_checkpoints.length++];
  > |              newCheckPoint.fromBlock = uint128(block.number);
    |              newCheckPoint.value = uint128(_value);
    |          } else {
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(801)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |              Checkpoint storage newCheckPoint = _checkpoints[_checkpoints.length++];
    |              newCheckPoint.fromBlock = uint128(block.number);
  > |              newCheckPoint.value = uint128(_value);
    |          } else {
    |              Checkpoint storage oldCheckPoint = _checkpoints[_checkpoints.length-1];
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(802)

[33mWarning[0m for UnrestrictedWrite in contract 'LedToken':
    |          } else {
    |              Checkpoint storage oldCheckPoint = _checkpoints[_checkpoints.length-1];
  > |              oldCheckPoint.value = uint128(_value);
    |          }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(805)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(86)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
    |      owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |  constructor() public {}
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() public onlyOwner whenNotPaused returns (bool) {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() public onlyOwner whenPaused returns (bool) {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() public onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    emit Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() public onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    emit Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(130)

[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for LockedEther in contract 'Presale':
    | * on a token per ETH rate. Funds collected are forwarded to a wallet as they arrive.
    | */
  > |contract Presale is Crowdsale {
    |
    |  uint256 public tokenCap = PRESALE_TOKENCAP;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(891)

[31mViolation[0m for TODReceiver in contract 'Presale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |  */
    |  function totalSupply() public constant returns (uint256) {
  > |    return ledToken.totalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(297)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |  */
    |  function balanceOf(address _owner) public constant returns (uint256) {
  > |    return ledToken.balanceOf(_owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(306)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |  function changeController(address _newController) public onlyOwner {
    |    require(isContract(_newController));
  > |    ledToken.transferControl(_newController);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(315)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |
    |  function enableMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(true);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(319)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |
    |  function lockMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(false);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(323)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    contributors = contributors.add(1);
    |
  > |    ledToken.mint(_beneficiary, tokens);
    |    emit TokenPurchase(msg.sender, _beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(946)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    require(!finalized);
    |    surplusTokens = cap - tokensMinted;
  > |    ledToken.mint(ledMultiSig, surplusTokens);
    |    ledToken.transferControl(owner);
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(979)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    surplusTokens = cap - tokensMinted;
    |    ledToken.mint(ledMultiSig, surplusTokens);
  > |    ledToken.transferControl(owner);
    |
    |    emit Finalized();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(980)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |    uint256 decimals = 18;
    |    string memory symbol = "LED";
  > |    bool transfersEnabled = ledToken.transfersEnabled();
    |    return (
    |      TOTAL_TOKENCAP, // Tokencap with the decimal point in place. should be 100.000.000
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(991)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |  */
    |  function totalSupply() public constant returns (uint256) {
  > |    return ledToken.totalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |  */
    |  function balanceOf(address _owner) public constant returns (uint256) {
  > |    return ledToken.balanceOf(_owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |  function changeController(address _newController) public onlyOwner {
    |    require(isContract(_newController));
  > |    ledToken.transferControl(_newController);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |
    |  function enableMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(true);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |
    |  function lockMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(false);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |    contributors = contributors.add(1);
    |
  > |    ledToken.mint(_beneficiary, tokens);
    |    emit TokenPurchase(msg.sender, _beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(946)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |    require(!finalized);
    |    surplusTokens = cap - tokensMinted;
  > |    ledToken.mint(ledMultiSig, surplusTokens);
    |    ledToken.transferControl(owner);
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(979)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |    surplusTokens = cap - tokensMinted;
    |    ledToken.mint(ledMultiSig, surplusTokens);
  > |    ledToken.transferControl(owner);
    |
    |    emit Finalized();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(980)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Presale':
    |    uint256 decimals = 18;
    |    string memory symbol = "LED";
  > |    bool transfersEnabled = ledToken.transfersEnabled();
    |    return (
    |      TOTAL_TOKENCAP, // Tokencap with the decimal point in place. should be 100.000.000
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(991)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    uint256 priceInWei = PRESALE_BASE_PRICE_IN_WEI;
    |    
  > |    totalWeiRaised = totalWeiRaised.add(weiAmount);
    |
    |    uint256 bonusPercentage = determineBonus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(928)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    }
    |    uint256 tokens = initialTokens.add(bonusTokens);
  > |    tokensMinted = tokensMinted.add(tokens);
    |    require(tokensMinted < cap);
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(941)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(tokensMinted < cap);
    |
  > |    contributors = contributors.add(1);
    |
    |    ledToken.mint(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(944)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |   */
    |  function pause() public onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    emit Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |   */
    |  function unpause() public onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    emit Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |
    |  function forceStart() public onlyOwner {
  > |    started = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    require(paused);
    |    require(!finalized);
  > |    surplusTokens = cap - tokensMinted;
    |    ledToken.mint(ledMultiSig, surplusTokens);
    |    ledToken.transferControl(owner);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(978)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |    emit Finalized();
    |
  > |    finalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(984)

[33mWarning[0m for DAOConstantGas in contract 'PrivateSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for LockedEther in contract 'PrivateSale':
    | * on a token per ETH rate. Funds collected are forwarded to a wallet as they arrive.
    | */
  > |contract PrivateSale is Crowdsale {
    |
    |  uint256 public tokenCap = PRIVATESALE_TOKENCAP;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1030)

[31mViolation[0m for TODReceiver in contract 'PrivateSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |  */
    |  function totalSupply() public constant returns (uint256) {
  > |    return ledToken.totalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(297)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |  */
    |  function balanceOf(address _owner) public constant returns (uint256) {
  > |    return ledToken.balanceOf(_owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(306)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |  function changeController(address _newController) public onlyOwner {
    |    require(isContract(_newController));
  > |    ledToken.transferControl(_newController);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(315)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |
    |  function enableMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(true);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(319)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |
    |  function lockMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(false);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(323)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |    contributors = contributors.add(1);
    |
  > |    ledToken.mint(_beneficiary, tokens);
    |    emit TokenPurchase(msg.sender, _beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1075)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |    require(!finalized);
    |    surplusTokens = cap - tokensMinted;
  > |    ledToken.mint(ledMultiSig, surplusTokens);
    |    ledToken.transferControl(owner);
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1084)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |    surplusTokens = cap - tokensMinted;
    |    ledToken.mint(ledMultiSig, surplusTokens);
  > |    ledToken.transferControl(owner);
    |
    |    emit Finalized();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1085)

[33mWarning[0m for UnhandledException in contract 'PrivateSale':
    |    uint256 decimals = 18;
    |    string memory symbol = "LED";
  > |    bool transfersEnabled = ledToken.transfersEnabled();
    |    return (
    |      TOTAL_TOKENCAP, // Tokencap with the decimal point in place. should be 100.000.000
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1096)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |  */
    |  function totalSupply() public constant returns (uint256) {
  > |    return ledToken.totalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |  */
    |  function balanceOf(address _owner) public constant returns (uint256) {
  > |    return ledToken.balanceOf(_owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |  function changeController(address _newController) public onlyOwner {
    |    require(isContract(_newController));
  > |    ledToken.transferControl(_newController);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |
    |  function enableMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(true);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |
    |  function lockMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(false);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |    contributors = contributors.add(1);
    |
  > |    ledToken.mint(_beneficiary, tokens);
    |    emit TokenPurchase(msg.sender, _beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1075)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |    require(!finalized);
    |    surplusTokens = cap - tokensMinted;
  > |    ledToken.mint(ledMultiSig, surplusTokens);
    |    ledToken.transferControl(owner);
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1084)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |    surplusTokens = cap - tokensMinted;
    |    ledToken.mint(ledMultiSig, surplusTokens);
  > |    ledToken.transferControl(owner);
    |
    |    emit Finalized();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1085)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PrivateSale':
    |    uint256 decimals = 18;
    |    string memory symbol = "LED";
  > |    bool transfersEnabled = ledToken.transfersEnabled();
    |    return (
    |      TOTAL_TOKENCAP, // Tokencap with the decimal point in place. should be 100.000.000
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1096)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |   */
    |  function pause() public onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    emit Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |   */
    |  function unpause() public onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    emit Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |
    |  function forceStart() public onlyOwner {
  > |    started = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |    require(weiAmount >= MIN_PURCHASE_OTHERSALES && weiAmount <= MAX_PURCHASE);
    |    uint256 priceInWei = PRIVATESALE_BASE_PRICE_IN_WEI;
  > |    totalWeiRaised = totalWeiRaised.add(weiAmount);
    |
    |    uint256 tokens = weiAmount.mul(DECIMALS_MULTIPLIER).div(priceInWei);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1067)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |
    |    uint256 tokens = weiAmount.mul(DECIMALS_MULTIPLIER).div(priceInWei);
  > |    tokensMinted = tokensMinted.add(tokens);
    |    require(tokensMinted < cap);
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1070)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |    require(tokensMinted < cap);
    |
  > |    contributors = contributors.add(1);
    |
    |    ledToken.mint(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1073)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |    require(paused);
    |    require(!finalized);
  > |    surplusTokens = cap - tokensMinted;
    |    ledToken.mint(ledMultiSig, surplusTokens);
    |    ledToken.transferControl(owner);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1083)

[33mWarning[0m for UnrestrictedWrite in contract 'PrivateSale':
    |    emit Finalized();
    |
  > |    finalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1089)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1117)

[33mWarning[0m for LockedEther in contract 'TokenFactory':
    |}
    |
  > |contract TokenFactory {
    |
    |    function createCloneToken(
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1143)

[31mViolation[0m for MissingInputValidation in contract 'TokenFactory':
    |contract TokenFactory {
    |
  > |    function createCloneToken(
    |        address _parentToken,
    |        uint _snapshotBlock,
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1145)

[33mWarning[0m for MissingInputValidation in contract 'TokenFactory':
    |}
    |
  > |contract TokenFactory {
    |
    |    function createCloneToken(
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1143)

[33mWarning[0m for UnhandledException in contract 'TokenFactory':
    |        );
    |
  > |        newToken.transferControl(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1160)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenFactory':
    |        );
    |
  > |        newToken.transferControl(msg.sender);
    |        return newToken;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1160)

[33mWarning[0m for LockedEther in contract 'TokenInfo':
    |pragma solidity ^0.4.24;
    |
  > |contract TokenInfo {
    |    // Base prices in wei, going off from an Ether value of $500
    |    uint256 public constant PRIVATESALE_BASE_PRICE_IN_WEI = 200000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |contract TokenInfo {
    |    // Base prices in wei, going off from an Ether value of $500
  > |    uint256 public constant PRIVATESALE_BASE_PRICE_IN_WEI = 200000000000000;
    |    uint256 public constant PRESALE_BASE_PRICE_IN_WEI = 600000000000000;
    |    uint256 public constant ICO_BASE_PRICE_IN_WEI = 800000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    // Base prices in wei, going off from an Ether value of $500
    |    uint256 public constant PRIVATESALE_BASE_PRICE_IN_WEI = 200000000000000;
  > |    uint256 public constant PRESALE_BASE_PRICE_IN_WEI = 600000000000000;
    |    uint256 public constant ICO_BASE_PRICE_IN_WEI = 800000000000000;
    |    uint256 public constant FIRSTSALE_BASE_PRICE_IN_WEI = 200000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRIVATESALE_BASE_PRICE_IN_WEI = 200000000000000;
    |    uint256 public constant PRESALE_BASE_PRICE_IN_WEI = 600000000000000;
  > |    uint256 public constant ICO_BASE_PRICE_IN_WEI = 800000000000000;
    |    uint256 public constant FIRSTSALE_BASE_PRICE_IN_WEI = 200000000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRESALE_BASE_PRICE_IN_WEI = 600000000000000;
    |    uint256 public constant ICO_BASE_PRICE_IN_WEI = 800000000000000;
  > |    uint256 public constant FIRSTSALE_BASE_PRICE_IN_WEI = 200000000000000;
    |
    |    // First sale minimum and maximum contribution, going off from an Ether value of $500
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |
    |    // First sale minimum and maximum contribution, going off from an Ether value of $500
  > |    uint256 public constant MIN_PURCHASE_OTHERSALES = 80000000000000000;
    |    uint256 public constant MIN_PURCHASE = 1000000000000000000;
    |    uint256 public constant MAX_PURCHASE = 1000000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    // First sale minimum and maximum contribution, going off from an Ether value of $500
    |    uint256 public constant MIN_PURCHASE_OTHERSALES = 80000000000000000;
  > |    uint256 public constant MIN_PURCHASE = 1000000000000000000;
    |    uint256 public constant MAX_PURCHASE = 1000000000000000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant MIN_PURCHASE_OTHERSALES = 80000000000000000;
    |    uint256 public constant MIN_PURCHASE = 1000000000000000000;
  > |    uint256 public constant MAX_PURCHASE = 1000000000000000000000;
    |
    |    // Bonus percentages for each respective sale level
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    // Bonus percentages for each respective sale level
    |
  > |    uint256 public constant PRESALE_PERCENTAGE_1 = 10;
    |    uint256 public constant PRESALE_PERCENTAGE_2 = 15;
    |    uint256 public constant PRESALE_PERCENTAGE_3 = 20;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |
    |    uint256 public constant PRESALE_PERCENTAGE_1 = 10;
  > |    uint256 public constant PRESALE_PERCENTAGE_2 = 15;
    |    uint256 public constant PRESALE_PERCENTAGE_3 = 20;
    |    uint256 public constant PRESALE_PERCENTAGE_4 = 25;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRESALE_PERCENTAGE_1 = 10;
    |    uint256 public constant PRESALE_PERCENTAGE_2 = 15;
  > |    uint256 public constant PRESALE_PERCENTAGE_3 = 20;
    |    uint256 public constant PRESALE_PERCENTAGE_4 = 25;
    |    uint256 public constant PRESALE_PERCENTAGE_5 = 35;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRESALE_PERCENTAGE_2 = 15;
    |    uint256 public constant PRESALE_PERCENTAGE_3 = 20;
  > |    uint256 public constant PRESALE_PERCENTAGE_4 = 25;
    |    uint256 public constant PRESALE_PERCENTAGE_5 = 35;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRESALE_PERCENTAGE_3 = 20;
    |    uint256 public constant PRESALE_PERCENTAGE_4 = 25;
  > |    uint256 public constant PRESALE_PERCENTAGE_5 = 35;
    |
    |    uint256 public constant ICO_PERCENTAGE_1 = 5;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRESALE_PERCENTAGE_5 = 35;
    |
  > |    uint256 public constant ICO_PERCENTAGE_1 = 5;
    |    uint256 public constant ICO_PERCENTAGE_2 = 10;
    |    uint256 public constant ICO_PERCENTAGE_3 = 15;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |
    |    uint256 public constant ICO_PERCENTAGE_1 = 5;
  > |    uint256 public constant ICO_PERCENTAGE_2 = 10;
    |    uint256 public constant ICO_PERCENTAGE_3 = 15;
    |    uint256 public constant ICO_PERCENTAGE_4 = 20;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant ICO_PERCENTAGE_1 = 5;
    |    uint256 public constant ICO_PERCENTAGE_2 = 10;
  > |    uint256 public constant ICO_PERCENTAGE_3 = 15;
    |    uint256 public constant ICO_PERCENTAGE_4 = 20;
    |    uint256 public constant ICO_PERCENTAGE_5 = 25;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant ICO_PERCENTAGE_2 = 10;
    |    uint256 public constant ICO_PERCENTAGE_3 = 15;
  > |    uint256 public constant ICO_PERCENTAGE_4 = 20;
    |    uint256 public constant ICO_PERCENTAGE_5 = 25;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant ICO_PERCENTAGE_3 = 15;
    |    uint256 public constant ICO_PERCENTAGE_4 = 20;
  > |    uint256 public constant ICO_PERCENTAGE_5 = 25;
    |
    |    // Bonus levels in wei for each respective level
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    // Bonus levels in wei for each respective level
    |
  > |    uint256 public constant PRESALE_LEVEL_1 = 5000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_2 = 10000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_3 = 15000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |
    |    uint256 public constant PRESALE_LEVEL_1 = 5000000000000000000;
  > |    uint256 public constant PRESALE_LEVEL_2 = 10000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_3 = 15000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_4 = 20000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRESALE_LEVEL_1 = 5000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_2 = 10000000000000000000;
  > |    uint256 public constant PRESALE_LEVEL_3 = 15000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_4 = 20000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_5 = 25000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRESALE_LEVEL_2 = 10000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_3 = 15000000000000000000;
  > |    uint256 public constant PRESALE_LEVEL_4 = 20000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_5 = 25000000000000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRESALE_LEVEL_3 = 15000000000000000000;
    |    uint256 public constant PRESALE_LEVEL_4 = 20000000000000000000;
  > |    uint256 public constant PRESALE_LEVEL_5 = 25000000000000000000;
    |
    |    uint256 public constant ICO_LEVEL_1 = 6666666666666666666;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRESALE_LEVEL_5 = 25000000000000000000;
    |
  > |    uint256 public constant ICO_LEVEL_1 = 6666666666666666666;
    |    uint256 public constant ICO_LEVEL_2 = 13333333333333333333;
    |    uint256 public constant ICO_LEVEL_3 = 20000000000000000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |
    |    uint256 public constant ICO_LEVEL_1 = 6666666666666666666;
  > |    uint256 public constant ICO_LEVEL_2 = 13333333333333333333;
    |    uint256 public constant ICO_LEVEL_3 = 20000000000000000000;
    |    uint256 public constant ICO_LEVEL_4 = 26666666666666666666;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant ICO_LEVEL_1 = 6666666666666666666;
    |    uint256 public constant ICO_LEVEL_2 = 13333333333333333333;
  > |    uint256 public constant ICO_LEVEL_3 = 20000000000000000000;
    |    uint256 public constant ICO_LEVEL_4 = 26666666666666666666;
    |    uint256 public constant ICO_LEVEL_5 = 33333333333333333333;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant ICO_LEVEL_2 = 13333333333333333333;
    |    uint256 public constant ICO_LEVEL_3 = 20000000000000000000;
  > |    uint256 public constant ICO_LEVEL_4 = 26666666666666666666;
    |    uint256 public constant ICO_LEVEL_5 = 33333333333333333333;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant ICO_LEVEL_3 = 20000000000000000000;
    |    uint256 public constant ICO_LEVEL_4 = 26666666666666666666;
  > |    uint256 public constant ICO_LEVEL_5 = 33333333333333333333;
    |
    |    // Caps for the respective sales, the amount of tokens allocated to the team and the total cap
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |
    |    // Caps for the respective sales, the amount of tokens allocated to the team and the total cap
  > |    uint256 public constant PRIVATESALE_TOKENCAP = 18750000;
    |    uint256 public constant PRESALE_TOKENCAP = 18750000;
    |    uint256 public constant ICO_TOKENCAP = 22500000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    // Caps for the respective sales, the amount of tokens allocated to the team and the total cap
    |    uint256 public constant PRIVATESALE_TOKENCAP = 18750000;
  > |    uint256 public constant PRESALE_TOKENCAP = 18750000;
    |    uint256 public constant ICO_TOKENCAP = 22500000;
    |    uint256 public constant FIRSTSALE_TOKENCAP = 5000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRIVATESALE_TOKENCAP = 18750000;
    |    uint256 public constant PRESALE_TOKENCAP = 18750000;
  > |    uint256 public constant ICO_TOKENCAP = 22500000;
    |    uint256 public constant FIRSTSALE_TOKENCAP = 5000000;
    |    uint256 public constant LEDTEAM_TOKENS = 35000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant PRESALE_TOKENCAP = 18750000;
    |    uint256 public constant ICO_TOKENCAP = 22500000;
  > |    uint256 public constant FIRSTSALE_TOKENCAP = 5000000;
    |    uint256 public constant LEDTEAM_TOKENS = 35000000;
    |    uint256 public constant TOTAL_TOKENCAP = 100000000;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant ICO_TOKENCAP = 22500000;
    |    uint256 public constant FIRSTSALE_TOKENCAP = 5000000;
  > |    uint256 public constant LEDTEAM_TOKENS = 35000000;
    |    uint256 public constant TOTAL_TOKENCAP = 100000000;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant FIRSTSALE_TOKENCAP = 5000000;
    |    uint256 public constant LEDTEAM_TOKENS = 35000000;
  > |    uint256 public constant TOTAL_TOKENCAP = 100000000;
    |
    |    uint256 public constant DECIMALS_MULTIPLIER = 1 ether;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant TOTAL_TOKENCAP = 100000000;
    |
  > |    uint256 public constant DECIMALS_MULTIPLIER = 1 ether;
    |
    |    address public constant LED_MULTISIG = 0x865e785f98b621c5fdde70821ca7cea9eeb77ef4;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'TokenInfo':
    |    uint256 public constant DECIMALS_MULTIPLIER = 1 ether;
    |
  > |    address public constant LED_MULTISIG = 0x865e785f98b621c5fdde70821ca7cea9eeb77ef4;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(53)

[33mWarning[0m for DAOConstantGas in contract 'TokenSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for LockedEther in contract 'TokenSale':
    | * on a token per ETH rate. Funds collected are forwarded to a wallet as they arrive.
    | */
  > |contract TokenSale is Crowdsale {
    |
    |  uint256 public tokenCap = ICO_TOKENCAP;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1181)

[31mViolation[0m for TODReceiver in contract 'TokenSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |  */
    |  function totalSupply() public constant returns (uint256) {
  > |    return ledToken.totalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(297)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |  */
    |  function balanceOf(address _owner) public constant returns (uint256) {
  > |    return ledToken.balanceOf(_owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(306)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |  function changeController(address _newController) public onlyOwner {
    |    require(isContract(_newController));
  > |    ledToken.transferControl(_newController);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(315)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |
    |  function enableMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(true);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(319)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |
    |  function lockMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(false);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(323)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |    contributors = contributors.add(1);
    |
  > |    ledToken.mint(_beneficiary, tokens);
    |    emit TokenPurchase(msg.sender, _beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1237)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |    require(!ledTokensAllocated);
    |    allocatedTokens = LEDTEAM_TOKENS.mul(DECIMALS_MULTIPLIER);
  > |    ledToken.mint(ledMultiSig, allocatedTokens);
    |    ledTokensAllocated = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1269)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |
    |    surplusTokens = cap - tokensMinted;
  > |    ledToken.mint(ledMultiSig, surplusTokens);
    |
    |    ledToken.finishMinting();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1278)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |    ledToken.mint(ledMultiSig, surplusTokens);
    |
  > |    ledToken.finishMinting();
    |    ledToken.enableTransfers(true);
    |    emit Finalized();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1280)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |
    |    ledToken.finishMinting();
  > |    ledToken.enableTransfers(true);
    |    emit Finalized();
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1281)

[33mWarning[0m for UnhandledException in contract 'TokenSale':
    |    uint256 decimals = 18;
    |    string memory symbol = "LED";
  > |    bool transfersEnabled = ledToken.transfersEnabled();
    |    return (
    |      TOTAL_TOKENCAP, // Tokencap with the decimal point in place. should be 100.000.000
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1291)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |  */
    |  function forwardFunds() internal {
  > |    ledMultiSig.transfer(msg.value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(276)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |  */
    |  function totalSupply() public constant returns (uint256) {
  > |    return ledToken.totalSupply();
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(297)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |  */
    |  function balanceOf(address _owner) public constant returns (uint256) {
  > |    return ledToken.balanceOf(_owner);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(306)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |  function changeController(address _newController) public onlyOwner {
    |    require(isContract(_newController));
  > |    ledToken.transferControl(_newController);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(315)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |
    |  function enableMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(true);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(319)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |
    |  function lockMasterTransfers() public onlyOwner {
  > |    ledToken.enableMasterTransfers(false);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |    contributors = contributors.add(1);
    |
  > |    ledToken.mint(_beneficiary, tokens);
    |    emit TokenPurchase(msg.sender, _beneficiary, weiAmount, tokens);
    |    forwardFunds();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |    require(!ledTokensAllocated);
    |    allocatedTokens = LEDTEAM_TOKENS.mul(DECIMALS_MULTIPLIER);
  > |    ledToken.mint(ledMultiSig, allocatedTokens);
    |    ledTokensAllocated = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |
    |    surplusTokens = cap - tokensMinted;
  > |    ledToken.mint(ledMultiSig, surplusTokens);
    |
    |    ledToken.finishMinting();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1278)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |    ledToken.mint(ledMultiSig, surplusTokens);
    |
  > |    ledToken.finishMinting();
    |    ledToken.enableTransfers(true);
    |    emit Finalized();
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1280)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |
    |    ledToken.finishMinting();
  > |    ledToken.enableTransfers(true);
    |    emit Finalized();
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1281)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenSale':
    |    uint256 decimals = 18;
    |    string memory symbol = "LED";
  > |    bool transfersEnabled = ledToken.transfersEnabled();
    |    return (
    |      TOTAL_TOKENCAP, // Tokencap with the decimal point in place. should be 100.000.000
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1291)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    require(weiAmount >= MIN_PURCHASE_OTHERSALES && weiAmount <= MAX_PURCHASE);
    |    uint256 priceInWei = ICO_BASE_PRICE_IN_WEI;
  > |    totalWeiRaised = totalWeiRaised.add(weiAmount);
    |
    |    uint256 bonusPercentage = determineBonus(weiAmount);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1219)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    }
    |    uint256 tokens = initialTokens.add(bonusTokens);
  > |    tokensMinted = tokensMinted.add(tokens);
    |    require(tokensMinted < cap);
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1232)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    require(tokensMinted < cap);
    |
  > |    contributors = contributors.add(1);
    |
    |    ledToken.mint(_beneficiary, tokens);
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1235)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |  function allocateLedTokens() public onlyOwner whenNotFinalized {
    |    require(!ledTokensAllocated);
  > |    allocatedTokens = LEDTEAM_TOKENS.mul(DECIMALS_MULTIPLIER);
    |    ledToken.mint(ledMultiSig, allocatedTokens);
    |    ledTokensAllocated = true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1268)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    allocatedTokens = LEDTEAM_TOKENS.mul(DECIMALS_MULTIPLIER);
    |    ledToken.mint(ledMultiSig, allocatedTokens);
  > |    ledTokensAllocated = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1270)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    if (newOwner != address(0)) {
  > |      owner = newOwner;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |   */
    |  function pause() public onlyOwner whenNotPaused returns (bool) {
  > |    paused = true;
    |    emit Pause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |   */
    |  function unpause() public onlyOwner whenPaused returns (bool) {
  > |    paused = false;
    |    emit Unpause();
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |
    |  function forceStart() public onlyOwner {
  > |    started = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(327)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    require(ledTokensAllocated);
    |
  > |    surplusTokens = cap - tokensMinted;
    |    ledToken.mint(ledMultiSig, surplusTokens);
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1277)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenSale':
    |    emit Finalized();
    |
  > |    finalized = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xb9560eacfad923886e944edb3efe847d107099d7.sol(1284)


