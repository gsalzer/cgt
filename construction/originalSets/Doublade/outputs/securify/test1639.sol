Processing contract: /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol:MyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'MyToken':
    |    }
    |}
  > |contract MyToken is owned {
    |    // Public variables of the token
    |    string public name = "Empyrean Mark";
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |     *
    |     */
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(166)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |contract MyToken is owned {
    |    // Public variables of the token
  > |    string public name = "Empyrean Mark";
    |    string public symbol = "MARK";
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    // Public variables of the token
    |    string public name = "Empyrean Mark";
  > |    string public symbol = "MARK";
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    string public name = "Empyrean Mark";
    |    string public symbol = "MARK";
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    string public symbol = "MARK";
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require(balanceOf[_from] >= _value);                // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(134)

[33mWarning[0m for UnhandledException in contract 'MyToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(122)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_from] >= _value);                // Check if the sender has enough
    |        require(balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_from] >= _value);                // Check if the sender has enough
    |        require(balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    function burn(uint256 _value) returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |     */
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, owner, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, owner, mintedAmount);
    |        Transfer(owner, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(168)

[33mWarning[0m for LockedEther in contract 'owned':
    |
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |contract owned {
  > |    address public owner;
    |
    |    function owned() {
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x683e1e0c7ed43a3b083ad0d385fa4a8c6aacd281.sol(17)


