Processing contract: /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol:BasicToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol:TORXToken
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
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'BasicToken':
    |    */
    |    function transfer(address _to, uint256 _value) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(145)

[33mWarning[0m for LockedEther in contract 'Ownable':
    | * functions, this simplifies the implementation of "user permissions".
    | */
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(66)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    | */
    |contract Ownable {
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @param newOwner The address to transfer ownership to.
    |     */
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to pause, triggers stopped state
    |     */
  > |    function pause() onlyOwner whenNotPaused returns (bool) {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     * @dev called by the owner to unpause, returns to normal state
    |     */
  > |    function unpause() onlyOwner whenPaused returns (bool) {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function pause() onlyOwner whenNotPaused returns (bool) {
  > |        paused = true;
    |        Pause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |     */
    |    function unpause() onlyOwner whenPaused returns (bool) {
  > |        paused = false;
    |        Unpause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(112)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @dev Based on code by FirstBlood: https://github.com/Firstbloodio/token/blob/master/smart_contract/FirstBloodToken.sol
    | */
  > |contract StandardToken is ERC20, BasicToken {
    |
    |    mapping (address => mapping (address => uint256)) allowed;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    */
    |    function transfer(address _to, uint256 _value) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(217)

[33mWarning[0m for LockedEther in contract 'TORXToken':
    | * @dev TORX.network token contract.
    | */
  > |contract TORXToken is StandardToken, Pausable {
    |
    |    string public constant name = "TOR-X Token";
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'TORXToken':
    |    */
    |    function transfer(address _to, uint256 _value) returns (bool) {
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'TORXToken':
    |        balances[_to] = balances[_to].add(_value);
    |        balances[_from] = balances[_from].sub(_value);
  > |        allowed[_from][msg.sender] = _allowance.sub(_value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'TORXToken':
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
    |
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'TORXToken':
    |    function transferOwnership(address newOwner) onlyOwner {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TORXToken':
    |     */
    |    function pause() onlyOwner whenNotPaused returns (bool) {
  > |        paused = true;
    |        Pause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'TORXToken':
    |     */
    |    function unpause() onlyOwner whenPaused returns (bool) {
  > |        paused = false;
    |        Unpause();
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c856b61c7106a8443505c3bcc7db6dbedc22ad2.sol(112)


