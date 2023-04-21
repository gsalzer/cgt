Processing contract: /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol:ThankYouToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(110)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(53)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(63)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(208)

[33mWarning[0m for LockedEther in contract 'ThankYouToken':
    |
    |
  > |contract ThankYouToken is StandardToken {
    |    string public constant name = "ThankYou";
    |    string public constant symbol = "THNX";
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'ThankYouToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'ThankYouToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'ThankYouToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'ThankYouToken':
    |     */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ThankYouToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(206)

[33mWarning[0m for UnrestrictedWrite in contract 'ThankYouToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x2a64b1e6a21f450a0ed6a78559d42ee4bf079d10.sol(208)


