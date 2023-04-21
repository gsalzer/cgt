Processing contract: /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol:AdvancedToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'AdvancedToken':
    |        require(balanceOf[owner] >= tokens); 
    |        _transfer(owner, msg.sender, tokens);              // makes the transfers
  > |        owner.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(293)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(211)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedToken':
    |    
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(237)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedToken':
    |
    |    /// @notice Create `mintedAmount` tokens and send it to `target`
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] = SafeMath.safeAdd(balanceOf[target],mintedAmount);
    |        _totalSupply = SafeMath.safeAdd(_totalSupply, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(265)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedToken':
    |
    |    /// @notice `freeze? Prevent | Allow` `target` from sending & receiving tokens
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(273)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedToken':
    |
    |    /// @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(279)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |///
    |contract SafeMath {
  > |  function safeMul(uint256 a, uint256 b) internal pure returns (uint256)  {
    |    uint256 c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |  }
    |
  > |  function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |  }
    |
  > |  function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |///
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |contract TokenERC20 is SafeMath{
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public _totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |contract AdvancedToken is owned, TokenERC20 {
    |
  > |    uint256 public buyPrice=2000;   
    |    uint256 public sellPrice=2500;     
    |    uint public minBalanceForAccounts;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |
    |    uint256 public buyPrice=2000;   
  > |    uint256 public sellPrice=2500;     
    |    uint public minBalanceForAccounts;
    |    uint256 linitialSupply=428679360;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(230)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |    uint256 public buyPrice=2000;   
    |    uint256 public sellPrice=2500;     
  > |    uint public minBalanceForAccounts;
    |    uint256 linitialSupply=428679360;
    |    string ltokenName='BOSC';
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(231)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |
    |    /*Get total Token Supply*/
  > |    function totalSupply() public constant returns (uint totalsupply) {
    |        totalsupply = _totalSupply ;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |      
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(253)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedToken':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint256 tokens;
    |        require(msg.value > 0); 
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(285)

[33mWarning[0m for UnhandledException in contract 'AdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(183)

[33mWarning[0m for UnhandledException in contract 'AdvancedToken':
    |        require(balanceOf[owner] >= tokens); 
    |        _transfer(owner, msg.sender, tokens);              // makes the transfers
  > |        owner.transfer(msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(293)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(183)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);            // Subtract from the sender
    |        _totalSupply = SafeMath.safeSub(_totalSupply, _value);                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);            // Subtract from the sender
  > |        _totalSupply = SafeMath.safeSub(_totalSupply, _value);                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the targeted balance
    |        // Subtract from the sender's allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the targeted balance
    |        // Subtract from the sender's allowance
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
    |        _totalSupply = SafeMath.safeSub(_totalSupply,_value);                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(216)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |        // Subtract from the sender's allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
  > |        _totalSupply = SafeMath.safeSub(_totalSupply,_value);                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the sender
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);  // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(259)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the sender
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);  // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(260)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |    /// @notice Create `mintedAmount` tokens and send it to `target`
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] = SafeMath.safeAdd(balanceOf[target],mintedAmount);
    |        _totalSupply = SafeMath.safeAdd(_totalSupply, mintedAmount);
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(266)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] = SafeMath.safeAdd(balanceOf[target],mintedAmount);
  > |        _totalSupply = SafeMath.safeAdd(_totalSupply, mintedAmount);
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(267)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |    /// @notice `freeze? Prevent | Allow` `target` from sending & receiving tokens
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(274)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |    /// @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(280)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedToken':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(281)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |//Math operations with safety checks
    |///
  > |contract SafeMath {
    |  function safeMul(uint256 a, uint256 b) internal pure returns (uint256)  {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(16)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |
    |///
  > |contract TokenERC20 is SafeMath{
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(76)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(147)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(162)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |  }
    |
  > |  function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |  }
    |
  > |  function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 is SafeMath{
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public _totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public _totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(104)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(183)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(183)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = SafeMath.safeAdd(balanceOf[_from],balanceOf[_to]);
    |        // Subtract from the sender
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from],_value);
    |        // Add the same to the recipient
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to],_value);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from],_value);
    |        // Add the same to the recipient
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to],_value);
    |        //
    |        uint currentBalances = SafeMath.safeAdd(balanceOf[_from],balanceOf[_to]);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(117)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);            // Subtract from the sender
    |        _totalSupply = SafeMath.safeSub(_totalSupply, _value);                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(197)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);            // Subtract from the sender
  > |        _totalSupply = SafeMath.safeSub(_totalSupply, _value);                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the targeted balance
    |        // Subtract from the sender's allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);                         // Subtract from the targeted balance
    |        // Subtract from the sender's allowance
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
    |        _totalSupply = SafeMath.safeSub(_totalSupply,_value);                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(216)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        // Subtract from the sender's allowance
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);             
  > |        _totalSupply = SafeMath.safeSub(_totalSupply,_value);                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(164)

[33mWarning[0m for LockedEther in contract 'owned':
    |}
    |///
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |///
    |contract owned {
  > |    address public owner;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xeb22567c7ec19c3803f7839b63e5b39cc894752e.sol(56)


