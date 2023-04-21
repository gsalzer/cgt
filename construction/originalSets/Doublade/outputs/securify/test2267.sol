Processing contract: /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol:AciToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'AciToken':
    |    function withdraw(address _toAddress, uint256 amount) external onlyOwner {
    |        require(_toAddress != address(0));
  > |        _toAddress.transfer(amount);
    |        Withdraw(_toAddress, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(219)

[33mWarning[0m for LockedEther in contract 'AciToken':
    |}
    |
  > |contract AciToken is SafeMath, StandardToken, Pausable {
    |
    |    string public constant name = "ACI Token";
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(172)

[31mViolation[0m for MissingInputValidation in contract 'AciToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'AciToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'AciToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'AciToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'AciToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'AciToken':
    |    }
    |
  > |    function withdraw(address _toAddress, uint256 amount) external onlyOwner {
    |        require(_toAddress != address(0));
    |        _toAddress.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(217)

[31mViolation[0m for MissingInputValidation in contract 'AciToken':
    |    }
    |
  > |    function setEthPrice(uint256 _tokenPrice) external onlyOwner {
    |        oneTokenInWei = _tokenPrice;
    |        PriceChanged("New price set", _tokenPrice);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(223)

[31mViolation[0m for MissingInputValidation in contract 'AciToken':
    |    }
    |
  > |    function generateTokens(address _reciever, uint256 _amount) external onlyOwner {
    |        require(_reciever != address(0));
    |        balances[_reciever] += _amount;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |contract SafeMath {
    |
  > |    function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
    |      uint256 z = x + y;
    |      assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |    }
    |
  > |    function safeDiv(uint256 a, uint256 b) internal pure returns (uint256) {
    |      assert(b > 0);
    |      uint c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) public constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |     */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() public onlyOwner whenNotPaused {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() public onlyOwner whenPaused {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |contract AciToken is SafeMath, StandardToken, Pausable {
    |
  > |    string public constant name = "ACI Token";
    |    string public constant symbol = "ACI";
    |    uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(174)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |
    |    string public constant name = "ACI Token";
  > |    string public constant symbol = "ACI";
    |    uint256 public constant decimals = 18;
    |    uint256 public constant maxTokens = 20000000;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |    string public constant name = "ACI Token";
    |    string public constant symbol = "ACI";
  > |    uint256 public constant decimals = 18;
    |    uint256 public constant maxTokens = 20000000;
    |
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(176)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |    string public constant symbol = "ACI";
    |    uint256 public constant decimals = 18;
  > |    uint256 public constant maxTokens = 20000000;
    |
    |    uint256 public oneTokenInWei = 700*10**12; //-30%
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(177)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |    uint256 public constant maxTokens = 20000000;
    |
  > |    uint256 public oneTokenInWei = 700*10**12; //-30%
    |    //uint256 public oneTokenInWei = 850*10**12; //-15%
    |    //uint256 public oneTokenInWei = 1000*10**12; //startICO
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |    //uint256 public oneTokenInWei = 1000*10**12; //startICO
    |
  > |    uint public totalEthRecieved;
    |
    |    event CreateACI(address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |
    |
  > |    function createTokens() internal whenNotPaused {
    |        uint256 tokens = safeDiv(msg.value, oneTokenInWei);
    |        uint256 checkedSupply = safeAdd(totalSupply, tokens);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(198)

[33mWarning[0m for MissingInputValidation in contract 'AciToken':
    |    }
    |
  > |    function addTokens(uint256 tokens) internal {
    |        if (msg.value <= 0) revert();
    |        balances[msg.sender] += tokens;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(209)

[33mWarning[0m for TODAmount in contract 'AciToken':
    |    function withdraw(address _toAddress, uint256 amount) external onlyOwner {
    |        require(_toAddress != address(0));
  > |        _toAddress.transfer(amount);
    |        Withdraw(_toAddress, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(219)

[33mWarning[0m for TODReceiver in contract 'AciToken':
    |    function withdraw(address _toAddress, uint256 amount) external onlyOwner {
    |        require(_toAddress != address(0));
  > |        _toAddress.transfer(amount);
    |        Withdraw(_toAddress, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(219)

[33mWarning[0m for UnhandledException in contract 'AciToken':
    |    function withdraw(address _toAddress, uint256 amount) external onlyOwner {
    |        require(_toAddress != address(0));
  > |        _toAddress.transfer(amount);
    |        Withdraw(_toAddress, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(219)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AciToken':
    |    function withdraw(address _toAddress, uint256 amount) external onlyOwner {
    |        require(_toAddress != address(0));
  > |        _toAddress.transfer(amount);
    |        Withdraw(_toAddress, amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'AciToken':
    |    function addTokens(uint256 tokens) internal {
    |        if (msg.value <= 0) revert();
  > |        balances[msg.sender] += tokens;
    |        totalSupply = safeAdd(totalSupply, tokens);
    |        totalEthRecieved += msg.value;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'AciToken':
    |        if (msg.value <= 0) revert();
    |        balances[msg.sender] += tokens;
  > |        totalSupply = safeAdd(totalSupply, tokens);
    |        totalEthRecieved += msg.value;
    |        CreateACI(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(212)

[31mViolation[0m for UnrestrictedWrite in contract 'AciToken':
    |        balances[msg.sender] += tokens;
    |        totalSupply = safeAdd(totalSupply, tokens);
  > |        totalEthRecieved += msg.value;
    |        CreateACI(msg.sender, tokens);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'AciToken':
    |        require(_reciever != address(0));
    |        balances[_reciever] += _amount;
  > |        totalSupply = safeAdd(totalSupply, _amount);
    |        CreateACI(_reciever, _amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'AciToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'AciToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'AciToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'AciToken':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'AciToken':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'AciToken':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'AciToken':
    |
    |    function setEthPrice(uint256 _tokenPrice) external onlyOwner {
  > |        oneTokenInWei = _tokenPrice;
    |        PriceChanged("New price set", _tokenPrice);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'AciToken':
    |    function generateTokens(address _reciever, uint256 _amount) external onlyOwner {
    |        require(_reciever != address(0));
  > |        balances[_reciever] += _amount;
    |        totalSupply = safeAdd(totalSupply, _amount);
    |        CreateACI(_reciever, _amount);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(230)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |     * functions, this simplifies the implementation of "user permissions".
    |     */
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |     */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(123)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |     */
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() public onlyOwner whenNotPaused {
    |    paused = true;
    |    Pause();
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() public onlyOwner whenPaused {
    |    paused = false;
    |    Unpause();
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() public onlyOwner whenNotPaused {
  > |    paused = true;
    |    Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() public onlyOwner whenPaused {
  > |    paused = false;
    |    Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(167)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | */
    |
  > |contract SafeMath {
    |
    |    function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(7)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) public constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) public returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;
    |        balances[_from] -= _value;
  > |        allowed[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x936d118702ad19aa39d6e0aed5efd434a577f6bf.sol(77)


