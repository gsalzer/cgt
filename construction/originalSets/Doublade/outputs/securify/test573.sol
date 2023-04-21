Processing contract: /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol:MyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'MyToken':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract MyToken {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |contract MyToken {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require(balanceOf[_from] >= _value);                // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(119)

[33mWarning[0m for UnhandledException in contract 'MyToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(107)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(107)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_from] >= _value);                // Check if the sender has enough
    |        require(balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(balanceOf[_from] >= _value);                // Check if the sender has enough
    |        require(balanceOf[_to] + _value > balanceOf[_to]); // Check for overflows
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    function burn(uint256 _value) returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x24f32ab937b6dff4e8cfc2d2018802755f965550.sol(139)


