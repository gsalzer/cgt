Processing contract: /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol:IntelliETH
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol:IntelliETHConstants
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol:Payload
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'IntelliETHConstants':
    |}
    |
  > |contract IntelliETHConstants {
    |	uint256 constant PRE_ICO_ALLOCATION = 6;
    |	uint256 constant ICO_ALLOCATION = 74;
  at /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol(64)

[33mWarning[0m for LockedEther in contract 'Owned':
    | * @dev Owner contract to add owner checks
    | */
  > |contract Owned {
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |	}	
    |
  > |	function transferOwner(address newOwner) public onlyOwner {
    |		owner = newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    | */
    |contract Owned {
  > |	address public owner;
    |
    |	function Owned () {
  at /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |	function transferOwner(address newOwner) public onlyOwner {
  > |		owner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol(44)

[33mWarning[0m for LockedEther in contract 'Payload':
    | * @dev Fix for the ERC20 short address attack.
    | */
  > |contract Payload {
    |	modifier onlyPayloadSize(uint size) {
    |		// require(msg.data.length >= size + 4);
  at /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |	function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |		uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xcf0555b273a4297d17f72f765223423e5234a888.sol(8)


