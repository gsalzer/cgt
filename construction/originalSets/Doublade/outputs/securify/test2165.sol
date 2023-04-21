Processing contract: /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol:BonumPromoToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    |* @dev Basic version of StandardToken, with no allowances.
    |*/
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_value <= balances[msg.sender]);
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(93)

[33mWarning[0m for LockedEther in contract 'BonumPromoToken':
    |}
    |
  > |contract BonumPromoToken is StandardToken, Ownable {
    |    string public name = "Bonum Promo Token";
    |    string public symbol = "Bonum Promo";
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(226)

[33mWarning[0m for UnrestrictedWrite in contract 'BonumPromoToken':
    |        require(_value <= balances[msg.sender]);
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BonumPromoToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'BonumPromoToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'BonumPromoToken':
    |    */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'BonumPromoToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'BonumPromoToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(219)

[33mWarning[0m for UnrestrictedWrite in contract 'BonumPromoToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(137)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |* functions, this simplifies the implementation of "user permissions".
    |*/
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |*/
    |contract Ownable {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    * @param newOwner The address to transfer ownership to.
    |    */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(137)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |* @dev Math operations with safety checks that throw on error
    |*/
  > |library SafeMath {
    |    /**
    |    * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(6)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |* @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    |*/
  > |contract StandardToken is ERC20, BasicToken {
    |    mapping(address => mapping(address => uint256)) internal allowed;
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= balances[msg.sender]);
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(176)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8d6532406e3dac939cb16f85a90a2c7232a84980.sol(219)


