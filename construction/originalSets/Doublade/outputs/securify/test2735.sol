Processing contract: /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol:OysterPrePearl
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'OysterPrePearl':
    |    
    |    function withdrawFunds() onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(71)

[33mWarning[0m for LockedEther in contract 'OysterPrePearl':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract OysterPrePearl {
    |    // Public variables of the token
    |    string public name = "Oyster PrePearl";
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'OysterPrePearl':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'OysterPrePearl':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'OysterPrePearl':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'OysterPrePearl':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'OysterPrePearl':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(146)

[31mViolation[0m for MissingInputValidation in contract 'OysterPrePearl':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |contract OysterPrePearl {
    |    // Public variables of the token
  > |    string public name = "Oyster PrePearl";
    |    string public symbol = "PREPRL";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |    // Public variables of the token
    |    string public name = "Oyster PrePearl";
  > |    string public symbol = "PREPRL";
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |    string public name = "Oyster PrePearl";
    |    string public symbol = "PREPRL";
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 0;
    |    uint256 public funds = 0;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |    string public symbol = "PREPRL";
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply = 0;
    |    uint256 public funds = 0;
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 0;
  > |    uint256 public funds = 0;
    |    address public owner;
    |    bool public saleClosed = false;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |    uint256 public totalSupply = 0;
    |    uint256 public funds = 0;
  > |    address public owner;
    |    bool public saleClosed = false;
    |
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |    uint256 public funds = 0;
    |    address public owner;
  > |    bool public saleClosed = false;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |    }
    |    
  > |    function closeSale() onlyOwner {
    |        saleClosed = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |    }
    |
  > |    function openSale() onlyOwner {
    |        saleClosed = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |    }
    |    
  > |    function withdrawFunds() onlyOwner {
    |        owner.transfer(this.balance);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'OysterPrePearl':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(163)

[31mViolation[0m for TODAmount in contract 'OysterPrePearl':
    |    
    |    function withdrawFunds() onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(71)

[31mViolation[0m for TODReceiver in contract 'OysterPrePearl':
    |    
    |    function withdrawFunds() onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(71)

[33mWarning[0m for UnhandledException in contract 'OysterPrePearl':
    |    
    |    function withdrawFunds() onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(71)

[33mWarning[0m for UnhandledException in contract 'OysterPrePearl':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(151)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OysterPrePearl':
    |    
    |    function withdrawFunds() onlyOwner {
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(71)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OysterPrePearl':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(151)

[31mViolation[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(182)

[31mViolation[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |    
    |    function closeSale() onlyOwner {
  > |        saleClosed = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'OysterPrePearl':
    |
    |    function openSale() onlyOwner {
  > |        saleClosed = false;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xb31ffc2eca634937a1acc375811d8a2c969ae61b.sol(44)


