Processing contract: /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol:DAEXToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'DAEXToken':
    | * @title DAXToken
    | */
  > |contract DAEXToken is StandardToken {
    |    string public constant name = "DAEX Token";
    |    string public constant symbol = "DAX";
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'DAEXToken':
    |  * @param _value The amount to be transferred.
    |  */
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |	    require((_value > 0) && (balances[msg.sender] >= _value));
    |	    balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'DAEXToken':
    |  * @return An uint256 representing the amount owned by the passed address.
    |  */
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'DAEXToken':
    |   * @return A uint256 specifing the amount of tokens still avaible for the spender.
    |   */
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'DAEXToken':
    | */
    |contract ERC20Basic {
  > |  uint public totalSupply;
    |  function balanceOf(address _owner) public constant returns (uint balance);
    |  function transfer(address _to, uint _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'DAEXToken':
    | */
    |contract DAEXToken is StandardToken {
  > |    string public constant name = "DAEX Token";
    |    string public constant symbol = "DAX";
    |    uint public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'DAEXToken':
    |contract DAEXToken is StandardToken {
    |    string public constant name = "DAEX Token";
  > |    string public constant symbol = "DAX";
    |    uint public constant decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'DAEXToken':
    |    string public constant name = "DAEX Token";
    |    string public constant symbol = "DAX";
  > |    uint public constant decimals = 18;
    |
    |    address public target;
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'DAEXToken':
    |    uint public constant decimals = 18;
    |
  > |    address public target;
    |
    |    function DAEXToken(address _target) public {
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'DAEXToken':
    |	    require((_value > 0) && (balances[msg.sender] >= _value));
    |	    balances[msg.sender] -= _value;
  > |    	balances[_to] += _value;
    |    	Transfer(msg.sender, _to, _value);
    |    	return true;
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'DAEXToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |	    require((_value > 0) && (balances[msg.sender] >= _value));
  > |	    balances[msg.sender] -= _value;
    |    	balances[_to] += _value;
    |    	Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'DAEXToken':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    	allowed[msg.sender][_spender] = _value;
    |    	Approval(msg.sender, _spender, _value);
    |    	return true;
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(57)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    | * @title Standard ERC20 token
    | */
  > |contract StandardToken is ERC20Basic {
    |
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  * @param _value The amount to be transferred.
    |  */
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |	    require((_value > 0) && (balances[msg.sender] >= _value));
    |	    balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  * @return An uint256 representing the amount owned by the passed address.
    |  */
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |   * @return A uint256 specifing the amount of tokens still avaible for the spender.
    |   */
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    | */
    |contract ERC20Basic {
  > |  uint public totalSupply;
    |  function balanceOf(address _owner) public constant returns (uint balance);
    |  function transfer(address _to, uint _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(9)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |	    require((_value > 0) && (balances[msg.sender] >= _value));
    |	    balances[msg.sender] -= _value;
  > |    	balances[_to] += _value;
    |    	Transfer(msg.sender, _to, _value);
    |    	return true;
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |	    require((_value > 0) && (balances[msg.sender] >= _value));
  > |	    balances[msg.sender] -= _value;
    |    	balances[_to] += _value;
    |    	Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        require((_value == 0) || (allowed[msg.sender][_spender] == 0));
  > |    	allowed[msg.sender][_spender] = _value;
    |    	Approval(msg.sender, _spender, _value);
    |    	return true;
  at /home/jiaming/mavs_srcs/contract@0x0b4bdc478791897274652dc15ef5c135cae61e60.sol(57)


