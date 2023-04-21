Processing contract: /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol:BOSCToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol:tokenRecipient
[31mViolation[0m for LockedEther in contract 'BOSCToken':
    |/******************************************/
    |
  > |contract BOSCToken is owned, TokenERC20 {
    |
    |    uint256 public buyPrice=2000;   
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(224)

[31mViolation[0m for MissingInputValidation in contract 'BOSCToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'BOSCToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'BOSCToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'BOSCToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(144)

[31mViolation[0m for MissingInputValidation in contract 'BOSCToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'BOSCToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'BOSCToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(208)

[31mViolation[0m for MissingInputValidation in contract 'BOSCToken':
    |    
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(234)

[31mViolation[0m for MissingInputValidation in contract 'BOSCToken':
    |
    |    /// @notice Create `mintedAmount` tokens and send it to `target`
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] = SafeMath.safeAdd(balanceOf[target],mintedAmount);
    |        _totalSupply = SafeMath.safeAdd(_totalSupply, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(262)

[31mViolation[0m for MissingInputValidation in contract 'BOSCToken':
    |
    |    /// @notice `freeze? Prevent | Allow` `target` from sending & receiving tokens
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(270)

[31mViolation[0m for MissingInputValidation in contract 'BOSCToken':
    |
    |    /// @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(276)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |  }
    |
  > |  function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |  }
    |
  > |  function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |///
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |contract TokenERC20 is SafeMath{
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public _totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |contract BOSCToken is owned, TokenERC20 {
    |
  > |    uint256 public buyPrice=2000;   
    |    uint256 public sellPrice=2500;     
    |    uint public minBalanceForAccounts;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(226)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |
    |    uint256 public buyPrice=2000;   
  > |    uint256 public sellPrice=2500;     
    |    uint public minBalanceForAccounts;
    |    uint256 linitialSupply=428679360;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(227)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |    uint256 public buyPrice=2000;   
    |    uint256 public sellPrice=2500;     
  > |    uint public minBalanceForAccounts;
    |    uint256 linitialSupply=428679360;
    |    string ltokenName="OSCToken";
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(228)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |
    |    /*Get total Token Supply*/
  > |    function totalSupply() public constant returns (uint totalsupply) {
    |        totalsupply = _totalSupply ;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(244)

[33mWarning[0m for MissingInputValidation in contract 'BOSCToken':
    |      
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(250)

[33mWarning[0m for UnhandledException in contract 'BOSCToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BOSCToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'BOSCToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'BOSCToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);            // Subtract from the sender
    |        _totalSupply = SafeMath.safeSub(_totalSupply, _value);                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'BOSCToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);            // Subtract from the sender
  > |        _totalSupply = SafeMath.safeSub(_totalSupply, _value);                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(195)

[31mViolation[0m for UnrestrictedWrite in contract 'BOSCToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the targeted balance
    |        // Subtract from the sender's allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'BOSCToken':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the targeted balance
    |        // Subtract from the sender's allowance
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
    |        _totalSupply = SafeMath.safeSub(_totalSupply,_value);                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'BOSCToken':
    |        // Subtract from the sender's allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
  > |        _totalSupply = SafeMath.safeSub(_totalSupply,_value);                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'BOSCToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);  // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(256)

[31mViolation[0m for UnrestrictedWrite in contract 'BOSCToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);  // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(257)

[31mViolation[0m for UnrestrictedWrite in contract 'BOSCToken':
    |    /// @notice Create `mintedAmount` tokens and send it to `target`
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] = SafeMath.safeAdd(balanceOf[target],mintedAmount);
    |        _totalSupply = SafeMath.safeAdd(_totalSupply, mintedAmount);
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(263)

[31mViolation[0m for UnrestrictedWrite in contract 'BOSCToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] = SafeMath.safeAdd(balanceOf[target],mintedAmount);
  > |        _totalSupply = SafeMath.safeAdd(_totalSupply, mintedAmount);
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(264)

[33mWarning[0m for UnrestrictedWrite in contract 'BOSCToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'BOSCToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'BOSCToken':
    |    /// @notice `freeze? Prevent | Allow` `target` from sending & receiving tokens
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(271)

[33mWarning[0m for UnrestrictedWrite in contract 'BOSCToken':
    |    /// @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(277)

[33mWarning[0m for UnrestrictedWrite in contract 'BOSCToken':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(278)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |//Math operations with safety checks
    |///
  > |contract SafeMath {
    |  function safeMul(uint256 a, uint256 b) internal pure returns (uint256)  {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(13)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |
    |///
  > |contract TokenERC20 is SafeMath{
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(144)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |  }
    |
  > |  function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |  }
    |
  > |  function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 is SafeMath{
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(68)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public _totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(101)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(180)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = SafeMath.safeAdd(balanceOf[_from],balanceOf[_to]);
    |        // Subtract from the sender
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from],_value);
    |        // Add the same to the recipient
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to],_value);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from],_value);
    |        // Add the same to the recipient
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to],_value);
    |        //
    |        uint currentBalances = SafeMath.safeAdd(balanceOf[_from],balanceOf[_to]);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);            // Subtract from the sender
    |        _totalSupply = SafeMath.safeSub(_totalSupply, _value);                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(194)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);            // Subtract from the sender
  > |        _totalSupply = SafeMath.safeSub(_totalSupply, _value);                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(195)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the targeted balance
    |        // Subtract from the sender's allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the targeted balance
    |        // Subtract from the sender's allowance
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
    |        _totalSupply = SafeMath.safeSub(_totalSupply,_value);                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        // Subtract from the sender's allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
  > |        _totalSupply = SafeMath.safeSub(_totalSupply,_value);                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(161)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |///
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |///
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x8c8b5fc4150bef4f7b8a77b4fc790ee902caa955.sol(53)


