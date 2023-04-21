Processing contract: /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol:MyAdvancedToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'MyAdvancedToken':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(227)

[33mWarning[0m for LockedEther in contract 'MyAdvancedToken':
    |/******************************************/
    |
  > |contract MyAdvancedToken is owned, TokenERC20 {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    // 用mapping保存每个地址对应的余额
  > |    mapping (address => uint256) public balanceOf;
    |    // 存储对账号的控制
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    mapping (address => uint256) public balanceOf;
    |    // 存储对账号的控制
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // 事件，用来通知客户端交易发生
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value 转移数额
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _extraData 发送给合约的附加数据
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(193)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(203)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    /// @param newSellPrice Price the users can sell to the contract
    |    /// @param newBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |contract TokenERC20 {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;  // decimals 可以有的小数点个数，最小的代币单位。18 是建议的默认值
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |contract TokenERC20 {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;  // decimals 可以有的小数点个数，最小的代币单位。18 是建议的默认值
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;  // decimals 可以有的小数点个数，最小的代币单位。18 是建议的默认值
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    string public symbol;
    |    uint8 public decimals = 18;  // decimals 可以有的小数点个数，最小的代币单位。18 是建议的默认值
  > |    uint256 public totalSupply;
    |
    |    // 用mapping保存每个地址对应的余额
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * 销毁创建者账户中指定个代币
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |contract MyAdvancedToken is owned, TokenERC20 {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(163)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint amount = msg.value / buyPrice;               // calculates the amount
    |        _transfer(this, msg.sender, amount);              // makes the transfers
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(217)

[33mWarning[0m for TODAmount in contract 'MyAdvancedToken':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(227)

[33mWarning[0m for TODReceiver in contract 'MyAdvancedToken':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(227)

[33mWarning[0m for UnhandledException in contract 'MyAdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(122)

[33mWarning[0m for UnhandledException in contract 'MyAdvancedToken':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyAdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(185)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(195)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(204)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    /// @param newBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(213)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // 用mapping保存每个地址对应的余额
  > |    mapping (address => uint256) public balanceOf;
    |    // 存储对账号的控制
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    mapping (address => uint256) public balanceOf;
    |    // 存储对账号的控制
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // 事件，用来通知客户端交易发生
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value 转移数额
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData 发送给合约的附加数据
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |contract TokenERC20 {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;  // decimals 可以有的小数点个数，最小的代币单位。18 是建议的默认值
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;  // decimals 可以有的小数点个数，最小的代币单位。18 是建议的默认值
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;  // decimals 可以有的小数点个数，最小的代币单位。18 是建议的默认值
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol;
    |    uint8 public decimals = 18;  // decimals 可以有的小数点个数，最小的代币单位。18 是建议的默认值
  > |    uint256 public totalSupply;
    |
    |    // 用mapping保存每个地址对应的余额
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * 代币交易转移的内部实现
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // 确保目标地址不为0x0，因为0x0地址代表销毁
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * 销毁创建者账户中指定个代币
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(130)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(122)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(150)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x294ee9f35988af1ce361409cee4251a293d21f5c.sol(16)


