Processing contract: /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol:CoinealToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CoinealToken':
    |}
    |
  > |contract CoinealToken is SafeMath{
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'CoinealToken':
    |
    |    /* This creates an array with all balances */
  > |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'CoinealToken':
    |    /* This creates an array with all balances */
    |    mapping (address => uint256) public balanceOf;
  > |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |	
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'CoinealToken':
    |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |	
    |
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'CoinealToken':
    |
    |    /* Allow another contract to spend some tokens in your behalf */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |		require(_value>0);
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(94)

[31mViolation[0m for MissingInputValidation in contract 'CoinealToken':
    |
    |    /* A contract attempts to get the coins */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |		require(_value <= allowance[_from][msg.sender]);  // Check allowance 
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'CoinealToken':
    |  }
    |
  > |  function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    require(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'CoinealToken':
    |  }
    |
  > |  function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    require(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'CoinealToken':
    |
    |contract CoinealToken is SafeMath{
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'CoinealToken':
    |contract CoinealToken is SafeMath{
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'CoinealToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'CoinealToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    /* This creates an array with all balances */
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'CoinealToken':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'CoinealToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'CoinealToken':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinealToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinealToken':
    |        returns (bool success) {
    |		require(_value>0);
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinealToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |		require(_value <= allowance[_from][msg.sender]);  // Check allowance 
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |		_transfer(_from, _to, _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinealToken':
    |		require(balanceOf[msg.sender] >= _value);
    |		require(_value > 0);
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
    |        totalSupply = SafeMath.safeSub(totalSupply,_value);                                // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinealToken':
    |		require(balanceOf[msg.sender] >= _value);
    |		require(_value > 0);
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
    |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);                                // Updates totalSupply
    |        Freeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinealToken':
    |		require(_value > 0);
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);                      // Subtract from the sender
  > |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);                                // Updates totalSupply
    |        Freeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinealToken':
    |		require(freezeOf[msg.sender] >= _value); // Check if the sender has enough
    |		require(_value > 0);
  > |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);                      // Subtract from the sender
    |		balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);
    |        Unfreeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinealToken':
    |		require(_value > 0);
    |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);                      // Subtract from the sender
  > |		balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);
    |        Unfreeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(133)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |contract SafeMath {
    |  function safeMul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x071297ecd5f0694b65750638746f5ea77bcc467c.sol(6)


