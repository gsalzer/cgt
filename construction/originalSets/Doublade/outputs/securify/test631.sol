Processing contract: /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol:MyAdvancedToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'MyAdvancedToken':
    |/******************************************/
    |
  > |contract MyAdvancedToken is owned, TokenERC20 {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(206)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |	bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |	bool public paused = false;
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) isRunning public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) isRunning
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the amount of money to seo
    |     */
  > |    function seo(uint256 _value) isRunning onlyOwner public returns (bool success) {
    |        balanceOf[msg.sender] += _value;            // Subtract from the sender
    |        totalSupply += _value;                      // Updates totalSupply
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) isRunning public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(209)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) isRunning onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(237)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |	
  > |	function freeze(address _target,uint256 _value) isRunning onlyOwner public returns (bool success) {
    |        require (balanceOf[_target] >= _value);            // Check if the sender has enough
    |		require (_value > 0); 
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(242)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |	
  > |	function unfreeze(address _target,uint256 _value) isRunning onlyOwner public returns (bool success) {
    |        require (freezeOf[_target] >= _value);            // Check if the sender has enough
    |		require (_value > 0); 
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(251)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |contract TokenERC20 is owned{
    |    // Public variables of the token
  > |    string public name = "GoodLuck";
    |    string public symbol = "GLK" ;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    // Public variables of the token
    |    string public name = "GoodLuck";
  > |    string public symbol = "GLK" ;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    string public name = "GoodLuck";
    |    string public symbol = "GLK" ;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply=210000000 * 10 ** uint256(decimals);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply=210000000 * 10 ** uint256(decimals);
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  > |	bool public paused = false;
    |    // This generates a public event on the blockchain that will notify clients
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) isRunning public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |	
  > |	function pause() onlyOwner public {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |
  > |    function unpause() onlyOwner public {
    |        paused = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(192)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(222)

[33mWarning[0m for UnhandledException in contract 'MyAdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyAdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function approve(address _spender, uint256 _value) isRunning public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(183)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(228)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(229)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function transferFrom(address _from, address _to, uint256 _value) isRunning public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function approve(address _spender, uint256 _value) isRunning public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function burn(uint256 _value) isRunning public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |     */
    |    function seo(uint256 _value) isRunning onlyOwner public returns (bool success) {
  > |        balanceOf[msg.sender] += _value;            // Subtract from the sender
    |        totalSupply += _value;                      // Updates totalSupply
    |        Seo(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(228)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function seo(uint256 _value) isRunning onlyOwner public returns (bool success) {
    |        balanceOf[msg.sender] += _value;            // Subtract from the sender
  > |        totalSupply += _value;                      // Updates totalSupply
    |        Seo(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |	
    |	function pause() onlyOwner public {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |
    |    function unpause() onlyOwner public {
  > |        paused = false;
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) isRunning onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(238)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require (balanceOf[_target] >= _value);            // Check if the sender has enough
    |		require (_value > 0); 
  > |        balanceOf[_target] -= _value;                      // Subtract from the sender
    |        freezeOf[_target] += _value;                                // Updates totalSupply
    |        Freeze(_target, _value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |		require (_value > 0); 
    |        balanceOf[_target] -= _value;                      // Subtract from the sender
  > |        freezeOf[_target] += _value;                                // Updates totalSupply
    |        Freeze(_target, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(246)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require (freezeOf[_target] >= _value);            // Check if the sender has enough
    |		require (_value > 0); 
  > |        freezeOf[_target]-= _value;                      // Subtract from the sender
    |		balanceOf[_target]+=  _value;
    |        Unfreeze(_target, _value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |		require (_value > 0); 
    |        freezeOf[_target]-= _value;                      // Subtract from the sender
  > |		balanceOf[_target]+=  _value;
    |        Unfreeze(_target, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(255)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 is owned{
    |    // Public variables of the token
    |    string public name = "GoodLuck";
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |	bool public paused = false;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |	bool public paused = false;
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) isRunning public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) isRunning
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to seo
    |     */
  > |    function seo(uint256 _value) isRunning onlyOwner public returns (bool success) {
    |        balanceOf[msg.sender] += _value;            // Subtract from the sender
    |        totalSupply += _value;                      // Updates totalSupply
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(161)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) isRunning public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 is owned{
    |    // Public variables of the token
  > |    string public name = "GoodLuck";
    |    string public symbol = "GLK" ;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name = "GoodLuck";
  > |    string public symbol = "GLK" ;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name = "GoodLuck";
    |    string public symbol = "GLK" ;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply=210000000 * 10 ** uint256(decimals);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply=210000000 * 10 ** uint256(decimals);
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  > |	bool public paused = false;
    |    // This generates a public event on the blockchain that will notify clients
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) isRunning public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(145)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |	
  > |	function pause() onlyOwner public {
    |        paused = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(188)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function unpause() onlyOwner public {
    |        paused = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(192)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) isRunning public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) isRunning public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) isRunning public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) isRunning public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(147)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |     */
    |    function seo(uint256 _value) isRunning onlyOwner public returns (bool success) {
  > |        balanceOf[msg.sender] += _value;            // Subtract from the sender
    |        totalSupply += _value;                      // Updates totalSupply
    |        Seo(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(182)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function seo(uint256 _value) isRunning onlyOwner public returns (bool success) {
    |        balanceOf[msg.sender] += _value;            // Subtract from the sender
  > |        totalSupply += _value;                      // Updates totalSupply
    |        Seo(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |	
    |	function pause() onlyOwner public {
  > |        paused = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function unpause() onlyOwner public {
  > |        paused = false;
    |    }
    |	
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(193)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x284ff8b2acda5bbf3e7aa72dad0894ea716b5ffd.sol(16)


