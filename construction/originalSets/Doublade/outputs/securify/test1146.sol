Processing contract: /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol:JavaSwapTest
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'JavaSwapTest':
    |}
    |
  > |contract JavaSwapTest is TokenERC20 {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(180)

[31mViolation[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'JavaSwapTest':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    }
    |    
  > |    function setSendAllow(bool send_allow) onlyOwner public {
    |        send_allowed = send_allow;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'JavaSwapTest':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(msg.sender == owner || send_allowed == true); 
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'JavaSwapTest':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'JavaSwapTest':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'JavaSwapTest':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(169)

[31mViolation[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    bool public funding = true;
    |    
  > |    mapping (address => bool) public frozenAccount;
    |    
    |
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(216)

[31mViolation[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(226)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |contract TokenERC20 is owned {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    bool public send_allowed = false;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    uint256 public totalSupply;
    |
  > |    bool public send_allowed = false;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |contract JavaSwapTest is TokenERC20 {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |    uint256 public leastSwap;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(182)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |    uint256 public leastSwap;
    |    
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(183)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    uint256 public sellPrice;
    |    uint256 public buyPrice;
  > |    uint256 public leastSwap;
    |    
    |    bool public funding = true;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(184)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |    uint256 public leastSwap;
    |    
  > |    bool public funding = true;
    |    
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'JavaSwapTest':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(202)

[33mWarning[0m for UnhandledException in contract 'JavaSwapTest':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JavaSwapTest':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(174)

[31mViolation[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(208)

[31mViolation[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |        require(msg.sender == owner || send_allowed == true); 
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |    
    |    function setSendAllow(bool send_allow) onlyOwner public {
  > |        send_allowed = send_allow;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'JavaSwapTest':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(227)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 is owned {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |    
  > |    function setSendAllow(bool send_allow) onlyOwner public {
    |        send_allowed = send_allow;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(msg.sender == owner || send_allowed == true); 
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 is owned {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    bool public send_allowed = false;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint256 public totalSupply;
    |
  > |    bool public send_allowed = false;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(153)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(174)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(msg.sender == owner || send_allowed == true); 
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    
    |    function setSendAllow(bool send_allow) onlyOwner public {
  > |        send_allowed = send_allow;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(93)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4868d191a23428fa9aca36a3d0f1421f33d12226.sol(16)


