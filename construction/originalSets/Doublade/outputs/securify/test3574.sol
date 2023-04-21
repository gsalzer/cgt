Processing contract: /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol:CortexCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol:PausableToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol:StandardToken
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
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(79)

[33mWarning[0m for LockedEther in contract 'CortexCoin':
    |
    |
  > |contract CortexCoin is PausableToken {
    |    string public constant name = "Cortex Coin";
    |    string public constant symbol = "CTXC";
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'CortexCoin':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'CortexCoin':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'CortexCoin':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'CortexCoin':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'CortexCoin':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'CortexCoin':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'CortexCoin':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'CortexCoin':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'CortexCoin':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(259)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(215)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(224)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) public onlyOwner {
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(212)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(250)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(258)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(259)

[33mWarning[0m for LockedEther in contract 'PausableToken':
    | * @dev StandardToken modified with pausable transfers.
    | **/
  > |contract PausableToken is StandardToken, Pausable {
    |
    |    function transfer(address _to, uint256 _value) public whenNotPaused returns (bool) {
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(269)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |        require(newOwner != address(0));
    |        OwnershipTransferred(owner, newOwner);
  > |        owner = newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'PausableToken':
    |     */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(259)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) internal allowed;
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |        // SafeMath.sub will throw if there is not enough balance.
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |     */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0xea11755ae41d889ceec39a63e6ff75a02bc1c00d.sol(170)


