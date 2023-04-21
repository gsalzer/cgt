Processing contract: /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol:JUSTINVERIFY
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol:TOKENERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'JUSTINVERIFY':
    |
    |
  > |contract JUSTINVERIFY is owned, TOKENERC20 {
    |
    |    mapping (address => bool) public approvedAccount;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |contract JUSTINVERIFY is owned, TOKENERC20 {
    |
  > |    mapping (address => bool) public approvedAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |    /// @param target Address to be approved
    |    /// @param approve either to approve it or not
  > |    function approveAccount(address target, bool approve) onlyOwner public {
    |        approvedAccount[target] = approve;
    |        ApprovedFunds(target, approve);
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |contract TOKENERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |     * @param _value the amount to send
    |     */
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'JUSTINVERIFY':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint256 _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(156)

[33mWarning[0m for UnhandledException in contract 'JUSTINVERIFY':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'JUSTINVERIFY':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'JUSTINVERIFY':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'JUSTINVERIFY':
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
    |        require(approvedAccount[_from]);                     // Check if sender is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'JUSTINVERIFY':
    |        require(approvedAccount[_from]);                     // Check if sender is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |        require(approvedAccount[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'JUSTINVERIFY':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'JUSTINVERIFY':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'JUSTINVERIFY':
    |        require (balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
    |        require(approvedAccount[_from]);                     // Check if sender is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'JUSTINVERIFY':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'JUSTINVERIFY':
    |    /// @param approve either to approve it or not
    |    function approveAccount(address target, bool approve) onlyOwner public {
  > |        approvedAccount[target] = approve;
    |        ApprovedFunds(target, approve);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(172)

[33mWarning[0m for LockedEther in contract 'TOKENERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TOKENERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'TOKENERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'TOKENERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'TOKENERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'TOKENERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'TOKENERC20':
    |contract TOKENERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TOKENERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TOKENERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TOKENERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TOKENERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'TOKENERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'TOKENERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(130)

[33mWarning[0m for UnhandledException in contract 'TOKENERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TOKENERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'TOKENERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'TOKENERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'TOKENERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'TOKENERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'TOKENERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'TOKENERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(132)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xc3abc7b8afe239cd512349e44c8ace529edba951.sol(16)


