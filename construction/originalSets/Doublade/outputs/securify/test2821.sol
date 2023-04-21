Processing contract: /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol:BAHACAN
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'BAHACAN':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract BAHACAN {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'BAHACAN':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'BAHACAN':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'BAHACAN':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'BAHACAN':
    |    }
    |	
  > |    function multiPartyTransfer(address[] _toAddresses, uint256[] _amounts) public {
    |        require(_toAddresses.length <= 255);
    |        require(_toAddresses.length == _amounts.length);
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'BAHACAN':
    |    }
    |
  > |    function multiPartyTransferFrom(address _from, address[] _toAddresses, uint256[] _amounts) public {
    |        require(_toAddresses.length <= 255);
    |        require(_toAddresses.length == _amounts.length);
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'BAHACAN':
    |     */
    |	 
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(116)

[31mViolation[0m for MissingInputValidation in contract 'BAHACAN':
    |     */
    |	 
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'BAHACAN':
    |     */
    |	 
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'BAHACAN':
    |contract BAHACAN {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BAHACAN':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'BAHACAN':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BAHACAN':
    |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BAHACAN':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'BAHACAN':
    |     */
    |	 
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(150)

[33mWarning[0m for UnhandledException in contract 'BAHACAN':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(137)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BAHACAN':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(137)

[31mViolation[0m for UnrestrictedWrite in contract 'BAHACAN':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'BAHACAN':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'BAHACAN':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(153)

[31mViolation[0m for UnrestrictedWrite in contract 'BAHACAN':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(170)

[31mViolation[0m for UnrestrictedWrite in contract 'BAHACAN':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'BAHACAN':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'BAHACAN':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'BAHACAN':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'BAHACAN':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(152)

[33mWarning[0m for UnrestrictedWrite in contract 'BAHACAN':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xb9372990872ed98ba443c16790fd0d9de1209c7d.sol(171)


