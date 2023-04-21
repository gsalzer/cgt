Processing contract: /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol:BrianCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'BrianCoin':
    |/******************************************/
    |
  > |contract BrianCoin is owned, TokenERC20 {
    |    
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'BrianCoin':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'BrianCoin':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'BrianCoin':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'BrianCoin':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'BrianCoin':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'BrianCoin':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'BrianCoin':
    |contract BrianCoin is owned, TokenERC20 {
    |    
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'BrianCoin':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'BrianCoin':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BrianCoin':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'BrianCoin':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'BrianCoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'BrianCoin':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'BrianCoin':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(159)

[33mWarning[0m for UnhandledException in contract 'BrianCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BrianCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'BrianCoin':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(165)

[31mViolation[0m for UnrestrictedWrite in contract 'BrianCoin':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianCoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianCoin':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianCoin':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianCoin':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'BrianCoin':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(175)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(59)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(115)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xba05aff5a97c2190499fe607f3e894c79f84a8b8.sol(16)


