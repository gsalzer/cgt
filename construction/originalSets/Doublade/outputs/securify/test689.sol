Processing contract: /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol:BurnableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol:RobotnikToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(137)

[33mWarning[0m for LockedEther in contract 'BurnableToken':
    | * @dev Token that can be irreversibly burned (destroyed).
    | */
  > |contract BurnableToken is BasicToken {
    |
    |  event Burn(address indexed burner, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(270)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'BurnableToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(284)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(40)

[33mWarning[0m for LockedEther in contract 'RobotnikToken':
    | */
    |
  > |contract RobotnikToken is StandardToken, BurnableToken, Ownable {
    |	string public constant symbol = "ROBOTNIK";
    |	string public constant name = "ROBOTNIK CHAIN";
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(300)

[33mWarning[0m for UnrestrictedWrite in contract 'RobotnikToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'RobotnikToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'RobotnikToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'RobotnikToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'RobotnikToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'RobotnikToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(256)

[33mWarning[0m for UnrestrictedWrite in contract 'RobotnikToken':
    |
    |    address burner = msg.sender;
  > |    balances[burner] = balances[burner].sub(_value);
    |    totalSupply_ = totalSupply_.sub(_value);
    |    Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(284)

[33mWarning[0m for UnrestrictedWrite in contract 'RobotnikToken':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'RobotnikToken':
    |
    |		approve(offeringAddr, amount);
  > |		tokenOfferingAddr = offeringAddr;
    |	}
    |
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(384)

[33mWarning[0m for UnrestrictedWrite in contract 'RobotnikToken':
    |	*/
    |	function enableTransfer() external onlyOwner {
  > |		transferEnabled = true;
    |
    |		// End the offering
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(391)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(65)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |  mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    // SafeMath.sub will throw if there is not enough balance.
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    balances[_from] = balances[_from].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
  > |    allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function approve(address _spender, uint256 _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(210)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   */
    |  function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |    allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    uint oldValue = allowed[msg.sender][_spender];
    |    if (_subtractedValue > oldValue) {
  > |      allowed[msg.sender][_spender] = 0;
    |    } else {
    |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      allowed[msg.sender][_spender] = 0;
    |    } else {
  > |      allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |    }
    |    Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2c25d5c279f625918cfc63913952b1ee44c7eb0c.sol(256)


