Processing contract: /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol:UnionChain
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
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |        require(_to != address(0));
    |        require(_value <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(57)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(197)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(200)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    |
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(197)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Pause();
    |    event Unpause();
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(232)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(241)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |    mapping (address => mapping (address => uint256)) internal allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_to != address(0));
    |        require(_value <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(161)

[33mWarning[0m for LockedEther in contract 'UnionChain':
    | * @dev ERC20 UnionChain (UNC)
    | */
  > |contract UnionChain is StandardToken, Pausable {
    |    string public constant name = 'Union Chain';
    |    string public constant symbol = 'UNC';
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(250)

[33mWarning[0m for UnrestrictedWrite in contract 'UnionChain':
    |        require(_to != address(0));
    |        require(_value <= balances[msg.sender]);
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'UnionChain':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'UnionChain':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'UnionChain':
    |     */
    |    function increaseApproval (address _spender, uint _addedValue) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'UnionChain':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'UnionChain':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'UnionChain':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'UnionChain':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(233)

[33mWarning[0m for UnrestrictedWrite in contract 'UnionChain':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x83116523962c3f3fdd9812fd097ba7ab75d8f9c4.sol(241)


