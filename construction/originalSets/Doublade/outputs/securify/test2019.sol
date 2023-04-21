Processing contract: /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol:SPPCToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BasicToken':
    | * @dev Basic version of StandardToken, with no allowances.
    | */
  > |contract BasicToken is ERC20Basic {
    |    using SafeMath for uint256;
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_to != address(0));
    |        require(_value <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(56)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(196)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(199)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Pause();
    |    event Unpause();
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(210)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(239)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(240)

[33mWarning[0m for LockedEther in contract 'SPPCToken':
    | * @dev ERC20 Shopping Coin (SPPC)
    | */
  > |contract SPPCToken is StandardToken, Pausable {
    |    string public constant name = 'Shopping Coin';
    |    string public constant symbol = 'SPPC';
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(249)

[33mWarning[0m for UnrestrictedWrite in contract 'SPPCToken':
    |        require(_to != address(0));
    |        require(_value <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'SPPCToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'SPPCToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'SPPCToken':
    |     */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'SPPCToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'SPPCToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'SPPCToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'SPPCToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(232)

[33mWarning[0m for UnrestrictedWrite in contract 'SPPCToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(240)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |    mapping (address => mapping (address => uint256)) internal allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_to != address(0));
    |        require(_value <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(119)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x8359c0d42b7c99d2951a4a2ce65a26c8ccdd50c0.sol(160)


