Processing contract: /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol:trustedOracle
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(38)

[33mWarning[0m for LockedEther in contract 'trustedOracle':
    |
    |
  > |contract trustedOracle is Ownable {
    |	mapping (uint => uint) pricePoints;
    |	uint public lastTimestamp;
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'trustedOracle':
    |	uint public lastTimestamp;
    |
  > |	function submitPrice(uint _timestamp, uint _weiForCent)
    |		onlyOwner
    |	{
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'trustedOracle':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'trustedOracle':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'trustedOracle':
    |contract trustedOracle is Ownable {
    |	mapping (uint => uint) pricePoints;
  > |	uint public lastTimestamp;
    |
    |	function submitPrice(uint _timestamp, uint _weiForCent)
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'trustedOracle':
    |
    |
  > |	function getWeiForCent(uint _timestamp)
    |		public
    |		constant
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'trustedOracle':
    |  function transferOwnership(address newOwner) onlyOwner {
    |    require(newOwner != address(0));      
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'trustedOracle':
    |		onlyOwner
    |	{
  > |		pricePoints[_timestamp] = _weiForCent;
    |		if (_timestamp > lastTimestamp) lastTimestamp = _timestamp;
    |	}
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'trustedOracle':
    |	{
    |		pricePoints[_timestamp] = _weiForCent;
  > |		if (_timestamp > lastTimestamp) lastTimestamp = _timestamp;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0xca37fa6d694002482264bf42661266dab3091ced.sol(52)


