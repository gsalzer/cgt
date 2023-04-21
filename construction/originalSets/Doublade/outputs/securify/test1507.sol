Processing contract: /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol:RBC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'RBC':
    |/******************************************/
    |
  > |contract RBC is owned, TokenERC20 {
    |
    |    mapping (address => uint256) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(123)

[31mViolation[0m for MissingInputValidation in contract 'RBC':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'RBC':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'RBC':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'RBC':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'RBC':
    |contract RBC is owned, TokenERC20 {
    |
  > |    mapping (address => uint256) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'RBC':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'RBC':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'RBC':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'RBC':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'RBC':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'RBC':
    |     * @param _value the amount to send
    |     */
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'RBC':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'RBC':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'RBC':
    |
    |    /// @param _value amount of token to be burnt by msg.sender
  > |	function freezeAccount(uint256 _value) onlyOwner returns (bool success) {
    |        if (balanceOf[msg.sender] < _value) throw;            // Check if the sender has enough
    |		if (_value <= 0) throw; 
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(149)

[33mWarning[0m for MissingInputValidation in contract 'RBC':
    |    }
    |	
  > |	function unfreezeAccount(uint256 _value) onlyOwner returns (bool success) {
    |        if (frozenAccount[msg.sender] < _value) throw;            // Check if the sender has enough
    |		if (_value <= 0) throw; 
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'RBC':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'RBC':
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
    |        require (balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'RBC':
    |        require (balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'RBC':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'RBC':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'RBC':
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
    |        require (balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'RBC':
    |        if (balanceOf[msg.sender] < _value) throw;            // Check if the sender has enough
    |		if (_value <= 0) throw; 
  > |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
    |        frozenAccount[msg.sender] += _value;                  // Updates totalSupply
    |        FrozenFunds(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'RBC':
    |		if (_value <= 0) throw; 
    |        balanceOf[msg.sender] -= _value;                      // Subtract from the sender
  > |        frozenAccount[msg.sender] += _value;                  // Updates totalSupply
    |        FrozenFunds(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'RBC':
    |        if (frozenAccount[msg.sender] < _value) throw;            // Check if the sender has enough
    |		if (_value <= 0) throw; 
  > |        frozenAccount[msg.sender] -= _value;                      // Subtract from the sender
    |		balanceOf[msg.sender] += _value;
    |        UnFrozenFunds(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'RBC':
    |		if (_value <= 0) throw; 
    |        frozenAccount[msg.sender] -= _value;                      // Subtract from the sender
  > |		balanceOf[msg.sender] += _value;
    |        UnFrozenFunds(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'RBC':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(16)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(112)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.15;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6013b9e512c5a7b8e03a5e1ebd6231cd195d50a7.sol(16)


