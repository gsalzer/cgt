Processing contract: /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol:CryptoToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol:CryptoTokenConstants
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol:Payload
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CryptoTokenConstants':
    |}
    |
  > |contract CryptoTokenConstants {
    |	uint256 constant PRE_ICO_ALLOCATION = 6;
    |	uint256 constant ICO_ALLOCATION = 74;
  at /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol(64)

[33mWarning[0m for LockedEther in contract 'Owned':
    | * @dev Owner contract to add owner checks
    | */
  > |contract Owned {
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |	}	
    |
  > |	function transferOwner(address newOwner) public onlyOwner {
    |		owner = newOwner;
    |	}
  at /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    | */
    |contract Owned {
  > |	address public owner;
    |
    |	function Owned () {
  at /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |	function transferOwner(address newOwner) public onlyOwner {
  > |		owner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol(44)

[33mWarning[0m for LockedEther in contract 'Payload':
    | * @dev Fix for the ERC20 short address attack.
    | */
  > |contract Payload {
    |	modifier onlyPayloadSize(uint size) {
    |		// require(msg.data.length >= size + 4);
  at /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol(57)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |	function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |		uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x2e62af2ad08239c528ee7ed72914dad6a897b1fd.sol(8)


