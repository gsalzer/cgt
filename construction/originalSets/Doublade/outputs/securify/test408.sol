Processing contract: /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol:SuperDollar
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'SuperDollar':
    |/******************************************/
    |
  > |contract SuperDollar is owned, TokenERC20 {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(144)

[31mViolation[0m for MissingInputValidation in contract 'SuperDollar':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'SuperDollar':
    |    address public investorWallet = 0x142b58d780222Da40Cd6AF348eDF0a1427CBDA9d;
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'SuperDollar':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'SuperDollar':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'SuperDollar':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'SuperDollar':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'SuperDollar':
    |
    |
  > |    function setPrices(uint256 newSellPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |    string public name = 'SuperDollar';                   
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |    // Public variables of the token
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |    string public name = 'SuperDollar';                   
    |    string public symbol= 'ISD';                 
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  > |    string public name = 'SuperDollar';                   
    |    string public symbol= 'ISD';                 
    |    string public version = 'https://www.superdollar.org';
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |    uint256 public totalSupply;
    |    string public name = 'SuperDollar';                   
  > |    string public symbol= 'ISD';                 
    |    string public version = 'https://www.superdollar.org';
    |    address public fundsWallet = 0x632730f269b31678F6105F9a1b16cC0c09bDd9d1;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |    string public name = 'SuperDollar';                   
    |    string public symbol= 'ISD';                 
  > |    string public version = 'https://www.superdollar.org';
    |    address public fundsWallet = 0x632730f269b31678F6105F9a1b16cC0c09bDd9d1;
    |    address public teamWallet = 0xDb3A1bF1583FB199c0aAAb11b1C98e2735402c93;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |    string public symbol= 'ISD';                 
    |    string public version = 'https://www.superdollar.org';
  > |    address public fundsWallet = 0x632730f269b31678F6105F9a1b16cC0c09bDd9d1;
    |    address public teamWallet = 0xDb3A1bF1583FB199c0aAAb11b1C98e2735402c93;
    |    address public foundationWallet = 0x27Ff8115e3A98412eD11C4bAd180D55E6e3f8b0f;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |    string public version = 'https://www.superdollar.org';
    |    address public fundsWallet = 0x632730f269b31678F6105F9a1b16cC0c09bDd9d1;
  > |    address public teamWallet = 0xDb3A1bF1583FB199c0aAAb11b1C98e2735402c93;
    |    address public foundationWallet = 0x27Ff8115e3A98412eD11C4bAd180D55E6e3f8b0f;
    |    address public investorWallet = 0x142b58d780222Da40Cd6AF348eDF0a1427CBDA9d;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |    address public fundsWallet = 0x632730f269b31678F6105F9a1b16cC0c09bDd9d1;
    |    address public teamWallet = 0xDb3A1bF1583FB199c0aAAb11b1C98e2735402c93;
  > |    address public foundationWallet = 0x27Ff8115e3A98412eD11C4bAd180D55E6e3f8b0f;
    |    address public investorWallet = 0x142b58d780222Da40Cd6AF348eDF0a1427CBDA9d;
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |    address public teamWallet = 0xDb3A1bF1583FB199c0aAAb11b1C98e2735402c93;
    |    address public foundationWallet = 0x27Ff8115e3A98412eD11C4bAd180D55E6e3f8b0f;
  > |    address public investorWallet = 0x142b58d780222Da40Cd6AF348eDF0a1427CBDA9d;
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |contract SuperDollar is owned, TokenERC20 {
    |
  > |    uint256 public sellPrice;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'SuperDollar':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(154)

[33mWarning[0m for UnhandledException in contract 'SuperDollar':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SuperDollar':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperDollar':
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperDollar':
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperDollar':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperDollar':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperDollar':
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperDollar':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperDollar':
    |
    |    function setPrices(uint256 newSellPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(167)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    address public investorWallet = 0x142b58d780222Da40Cd6AF348eDF0a1427CBDA9d;
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |    string public name = 'SuperDollar';                   
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |    string public name = 'SuperDollar';                   
    |    string public symbol= 'ISD';                 
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  > |    string public name = 'SuperDollar';                   
    |    string public symbol= 'ISD';                 
    |    string public version = 'https://www.superdollar.org';
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint256 public totalSupply;
    |    string public name = 'SuperDollar';                   
  > |    string public symbol= 'ISD';                 
    |    string public version = 'https://www.superdollar.org';
    |    address public fundsWallet = 0x632730f269b31678F6105F9a1b16cC0c09bDd9d1;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name = 'SuperDollar';                   
    |    string public symbol= 'ISD';                 
  > |    string public version = 'https://www.superdollar.org';
    |    address public fundsWallet = 0x632730f269b31678F6105F9a1b16cC0c09bDd9d1;
    |    address public teamWallet = 0xDb3A1bF1583FB199c0aAAb11b1C98e2735402c93;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol= 'ISD';                 
    |    string public version = 'https://www.superdollar.org';
  > |    address public fundsWallet = 0x632730f269b31678F6105F9a1b16cC0c09bDd9d1;
    |    address public teamWallet = 0xDb3A1bF1583FB199c0aAAb11b1C98e2735402c93;
    |    address public foundationWallet = 0x27Ff8115e3A98412eD11C4bAd180D55E6e3f8b0f;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public version = 'https://www.superdollar.org';
    |    address public fundsWallet = 0x632730f269b31678F6105F9a1b16cC0c09bDd9d1;
  > |    address public teamWallet = 0xDb3A1bF1583FB199c0aAAb11b1C98e2735402c93;
    |    address public foundationWallet = 0x27Ff8115e3A98412eD11C4bAd180D55E6e3f8b0f;
    |    address public investorWallet = 0x142b58d780222Da40Cd6AF348eDF0a1427CBDA9d;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    address public fundsWallet = 0x632730f269b31678F6105F9a1b16cC0c09bDd9d1;
    |    address public teamWallet = 0xDb3A1bF1583FB199c0aAAb11b1C98e2735402c93;
  > |    address public foundationWallet = 0x27Ff8115e3A98412eD11C4bAd180D55E6e3f8b0f;
    |    address public investorWallet = 0x142b58d780222Da40Cd6AF348eDF0a1427CBDA9d;
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    address public teamWallet = 0xDb3A1bF1583FB199c0aAAb11b1C98e2735402c93;
    |    address public foundationWallet = 0x27Ff8115e3A98412eD11C4bAd180D55E6e3f8b0f;
  > |    address public investorWallet = 0x142b58d780222Da40Cd6AF348eDF0a1427CBDA9d;
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(58)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(70)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(114)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1a72a37a6111d0d6c29d32de3aa3c3264275e769.sol(16)


