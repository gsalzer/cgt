Processing contract: /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol:EXU
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'EXU':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract EXU {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'EXU':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'EXU':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'EXU':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'EXU':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'EXU':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'EXU':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'EXU':
    |contract EXU {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 5;
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'EXU':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 5;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'EXU':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 5;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'EXU':
    |    string public symbol;
    |    uint8 public decimals = 5;
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'EXU':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'EXU':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(124)

[33mWarning[0m for UnhandledException in contract 'EXU':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(112)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EXU':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'EXU':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'EXU':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(50)

[31mViolation[0m for UnrestrictedWrite in contract 'EXU':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'EXU':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'EXU':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'EXU':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'EXU':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'EXU':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'EXU':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'EXU':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x79356944f1924ec5d273eb5c876237eb83d844c1.sol(144)


