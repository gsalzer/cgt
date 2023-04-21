Processing contract: /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol:EzPoint
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'EzPoint':
    |*
    |*/
  > |contract EzPoint is StandardToken, Ownable{
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(208)

[31mViolation[0m for UnrestrictedWrite in contract 'EzPoint':
    |*
    |*/
  > |contract EzPoint is StandardToken, Ownable{
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'EzPoint':
    |
    |		// SafeMath.sub will throw if there is not enough balance.
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'EzPoint':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'EzPoint':
    |	*/
    |	function approve(address _spender, uint256 _value) public returns (bool) {
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'EzPoint':
    |		require(newOwner != address(0));
    |		OwnershipTransferred(owner, newOwner);
  > |		owner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'EzPoint':
    |*
    |*/
  > |contract EzPoint is StandardToken, Ownable{
    |	using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(208)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |	address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |	 * @param newOwner The address to transfer ownership to.
    |	 */
  > |	function transferOwnership(address newOwner) public onlyOwner {
    |		require(newOwner != address(0));
    |		OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |		require(newOwner != address(0));
    |		OwnershipTransferred(owner, newOwner);
  > |		owner = newOwner;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(84)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |* @dev Math operations with safety checks that throw on error
    |*/
  > |library SafeMath {
    |
    |	/**
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |* @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    |*/
  > |contract StandardToken is ERC20 {
    |
    |	using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |		// SafeMath.sub will throw if there is not enough balance.
  > |		balances[msg.sender] = balances[msg.sender].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
    |		Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |		balances[_from] = balances[_from].sub(_value);
    |		balances[_to] = balances[_to].add(_value);
  > |		allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |		Transfer(_from, _to, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |	*/
    |	function approve(address _spender, uint256 _value) public returns (bool) {
  > |		allowed[msg.sender][_spender] = _value;
    |		Approval(msg.sender, _spender, _value);
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x6352b68ac998da593bfe68f17605085dc4e86b77.sol(187)


