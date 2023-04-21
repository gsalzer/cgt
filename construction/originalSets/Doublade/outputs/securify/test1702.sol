Processing contract: /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol:AngelChain30
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol:MyAdvancedToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'AngelChain30':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract AngelChain30{
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'AngelChain30':
    |    uint256 public totalSupply;
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'AngelChain30':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'AngelChain30':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'AngelChain30':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'AngelChain30':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'AngelChain30':
    |contract AngelChain30{
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'AngelChain30':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'AngelChain30':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'AngelChain30':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'AngelChain30':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(50)

[33mWarning[0m for UnhandledException in contract 'AngelChain30':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AngelChain30':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'AngelChain30':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'AngelChain30':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'AngelChain30':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'AngelChain30':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'AngelChain30':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(106)

[33mWarning[0m for LockedEther in contract 'MyAdvancedToken':
    |/******************************************/
    |
  > |contract MyAdvancedToken is owned, AngelChain30 {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(134)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    uint256 public totalSupply;
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function childToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(171)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    /// @param newSellPrice Price the users can sell to the contract
    |    /// @param newBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newBuyPrice,uint256 newSellPrice) onlyOwner public {
    |        buyPrice = newBuyPrice;
    |        sellPrice = newSellPrice;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |contract AngelChain30{
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |contract MyAdvancedToken is owned, AngelChain30 {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(137)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] > _value);                // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(147)

[33mWarning[0m for UnhandledException in contract 'MyAdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyAdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    }
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function childToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function childToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    /// @param newBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newBuyPrice,uint256 newSellPrice) onlyOwner public {
  > |        buyPrice = newBuyPrice;
    |        sellPrice = newSellPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function setPrices(uint256 newBuyPrice,uint256 newSellPrice) onlyOwner public {
    |        buyPrice = newBuyPrice;
  > |        sellPrice = newSellPrice;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(181)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    }
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x6c6264e3a5221288a9bd9f858ec9a1d35dc68ae7.sol(15)


