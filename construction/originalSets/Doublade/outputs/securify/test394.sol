Processing contract: /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol:SECoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'SECoin':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(202)

[33mWarning[0m for LockedEther in contract 'SECoin':
    |/******************************************/
    |
  > |contract SECoin is owned, TokenERC20 {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'SECoin':
    |
    |    /* 修改管理员账户， onlyOwner代表只能是用户管理员来修改 */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }   
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'SECoin':
    |
    |    // 记录各个账户的代币数目
  > |    mapping (address => uint256) public balanceOf;
    |
    |    // A账户存在B账户资金
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'SECoin':
    |
    |    // A账户存在B账户资金
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // 转账通知事件
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'SECoin':
    |
    |    /* 从其他账户转移资产 */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'SECoin':
    |
    |    /*  授权第三方从发送者账户转移代币，然后通过transferFrom()函数来执行第三方的转移操作 */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'SECoin':
    |    */
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'SECoin':
    |    * 从其他账户销毁代币
    |    */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'SECoin':
    |
    |    /* 冻结账户 */
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(148)

[31mViolation[0m for MissingInputValidation in contract 'SECoin':
    |
    |/// 向指定账户增发资金
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(173)

[31mViolation[0m for MissingInputValidation in contract 'SECoin':
    |
    |    /// 冻结 or 解冻账户
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(183)

[31mViolation[0m for MissingInputValidation in contract 'SECoin':
    |    }
    |
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'SECoin':
    |contract owned {
    |
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SECoin':
    |contract TokenERC20 {
    |    // 代币（token）的公共变量
  > |    string public name;             //代币名字
    |    string public symbol;           //代币符号
    |    uint8 public decimals = 18;     //代币小数点位数， 18是默认， 尽量不要更改
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'SECoin':
    |    // 代币（token）的公共变量
    |    string public name;             //代币名字
  > |    string public symbol;           //代币符号
    |    uint8 public decimals = 18;     //代币小数点位数， 18是默认， 尽量不要更改
    |
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SECoin':
    |    string public name;             //代币名字
    |    string public symbol;           //代币符号
  > |    uint8 public decimals = 18;     //代币小数点位数， 18是默认， 尽量不要更改
    |
    |    uint256 public totalSupply;     //代币总量
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'SECoin':
    |    uint8 public decimals = 18;     //代币小数点位数， 18是默认， 尽量不要更改
    |
  > |    uint256 public totalSupply;     //代币总量
    |
    |    // 记录各个账户的代币数目
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'SECoin':
    |    * 销毁代币
    |    */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'SECoin':
    |contract SECoin is owned, TokenERC20 {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'SECoin':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    /* 冻结账户 */
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'SECoin':
    |
    |    /* 转账， 比父类加入了账户冻结 */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'SECoin':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint amount = msg.value / buyPrice;               // calculates the amount
    |        _transfer(this, msg.sender, amount);              // makes the transfers
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(194)

[33mWarning[0m for TODAmount in contract 'SECoin':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(202)

[33mWarning[0m for TODReceiver in contract 'SECoin':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(202)

[33mWarning[0m for UnhandledException in contract 'SECoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(108)

[33mWarning[0m for UnhandledException in contract 'SECoin':
    |        require(this.balance >= amount * sellPrice);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SECoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'SECoin':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'SECoin':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'SECoin':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'SECoin':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(167)

[31mViolation[0m for UnrestrictedWrite in contract 'SECoin':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |    /* 修改管理员账户， onlyOwner代表只能是用户管理员来修改 */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }   
    |}
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(20)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |/// 向指定账户增发资金
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |    /// 冻结 or 解冻账户
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'SECoin':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(190)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 {
    |    // 代币（token）的公共变量
    |    string public name;             //代币名字
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // 记录各个账户的代币数目
  > |    mapping (address => uint256) public balanceOf;
    |
    |    // A账户存在B账户资金
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // A账户存在B账户资金
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // 转账通知事件
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    /* 从其他账户转移资产 */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    /*  授权第三方从发送者账户转移代币，然后通过transferFrom()函数来执行第三方的转移操作 */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    */
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    * 从其他账户销毁代币
    |    */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // 代币（token）的公共变量
  > |    string public name;             //代币名字
    |    string public symbol;           //代币符号
    |    uint8 public decimals = 18;     //代币小数点位数， 18是默认， 尽量不要更改
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // 代币（token）的公共变量
    |    string public name;             //代币名字
  > |    string public symbol;           //代币符号
    |    uint8 public decimals = 18;     //代币小数点位数， 18是默认， 尽量不要更改
    |
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;             //代币名字
    |    string public symbol;           //代币符号
  > |    uint8 public decimals = 18;     //代币小数点位数， 18是默认， 尽量不要更改
    |
    |    uint256 public totalSupply;     //代币总量
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;     //代币小数点位数， 18是默认， 尽量不要更改
    |
  > |    uint256 public totalSupply;     //代币总量
    |
    |    // 记录各个账户的代币数目
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    /* 私有的交易函数 */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // 防止转移到0x0， 用burn代替这个功能
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    * 销毁代币
    |    */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(116)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // 减少发送者资产
  > |        balanceOf[_from] -= _value;
    |        // 增加接收者的资产
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // 增加接收者的资产
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // 断言检测， 不应该为错
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // 减少发送者资产
  > |        balanceOf[_from] -= _value;
    |        // 增加接收者的资产
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(131)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |/* 创建一个父类， 账户管理员 */
  > |contract owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |
    |    /* 修改管理员账户， onlyOwner代表只能是用户管理员来修改 */
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }   
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |contract owned {
    |
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(6)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    /* 修改管理员账户， onlyOwner代表只能是用户管理员来修改 */
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }   
    |}
  at /home/jiaming/mavs_srcs/contract@0x19bd81125a6b19d8531491914bee30c2222e4fac.sol(20)


