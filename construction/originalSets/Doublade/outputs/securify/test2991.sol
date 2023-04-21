Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol:YBCCToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(161)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(145)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(166)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(165)

[33mWarning[0m for DAOConstantGas in contract 'YBCCToken':
    |        uint256 balance = address(this).balance;
    |        require (balance >= 0); 
  > |        owner.transfer(balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(237)

[33mWarning[0m for LockedEther in contract 'YBCCToken':
    |/******************************************/
    |
  > |contract YBCCToken is owned, TokenERC20 {
    |
    |    uint256 public buyPrice = 1 ether;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(176)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |    uint256 public buyPrice = 1 ether;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(180)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(207)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(217)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |    /// @notice Allow users to buy tokens for `newBuyPrice` eth
    |    /// @param newBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newBuyPrice) onlyOwner public {
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(224)

[31mViolation[0m for MissingInputValidation in contract 'YBCCToken':
    |    }
    |
  > |    function separate(address _from, uint256 _value) onlyOwner public {
    |        _transfer(_from, msg.sender, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(240)

[33mWarning[0m for MissingInputValidation in contract 'YBCCToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'YBCCToken':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'YBCCToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'YBCCToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'YBCCToken':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'YBCCToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'YBCCToken':
    |contract YBCCToken is owned, TokenERC20 {
    |
  > |    uint256 public buyPrice = 1 ether;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'YBCCToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'YBCCToken':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint256 amount = msg.value * 1 ether / buyPrice;  // calculates the amount
    |        _transfer(owner, msg.sender, amount);             // makes the transfers
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'YBCCToken':
    |    }
    |
  > |    function withdraw() onlyOwner public {
    |        uint256 balance = address(this).balance;
    |        require (balance >= 0); 
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(234)

[31mViolation[0m for TODAmount in contract 'YBCCToken':
    |        uint256 balance = address(this).balance;
    |        require (balance >= 0); 
  > |        owner.transfer(balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(237)

[31mViolation[0m for TODReceiver in contract 'YBCCToken':
    |        uint256 balance = address(this).balance;
    |        require (balance >= 0); 
  > |        owner.transfer(balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(237)

[33mWarning[0m for UnhandledException in contract 'YBCCToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(133)

[33mWarning[0m for UnhandledException in contract 'YBCCToken':
    |        uint256 balance = address(this).balance;
    |        require (balance >= 0); 
  > |        owner.transfer(balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(237)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YBCCToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'YBCCToken':
    |        uint256 balance = address(this).balance;
    |        require (balance >= 0); 
  > |        owner.transfer(balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'YBCCToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'YBCCToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(164)

[31mViolation[0m for UnrestrictedWrite in contract 'YBCCToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'YBCCToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(199)

[31mViolation[0m for UnrestrictedWrite in contract 'YBCCToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'YBCCToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'YBCCToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'YBCCToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'YBCCToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'YBCCToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'YBCCToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'YBCCToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'YBCCToken':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'YBCCToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'YBCCToken':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'YBCCToken':
    |    /// @param newBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newBuyPrice) onlyOwner public {
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(225)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc3ff938486a5a757454bbc77fcf27a44fd9da17e.sol(16)


