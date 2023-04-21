Processing contract: /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol:LOYALTYINSPIRATIONTOKENS
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'LOYALTYINSPIRATIONTOKENS':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract LOYALTYINSPIRATIONTOKENS {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(78)

[31mViolation[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(93)

[31mViolation[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |contract LOYALTYINSPIRATIONTOKENS {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'LOYALTYINSPIRATIONTOKENS':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(125)

[33mWarning[0m for UnhandledException in contract 'LOYALTYINSPIRATIONTOKENS':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(113)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'LOYALTYINSPIRATIONTOKENS':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'LOYALTYINSPIRATIONTOKENS':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'LOYALTYINSPIRATIONTOKENS':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'LOYALTYINSPIRATIONTOKENS':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'LOYALTYINSPIRATIONTOKENS':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'LOYALTYINSPIRATIONTOKENS':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'LOYALTYINSPIRATIONTOKENS':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'LOYALTYINSPIRATIONTOKENS':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'LOYALTYINSPIRATIONTOKENS':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'LOYALTYINSPIRATIONTOKENS':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'LOYALTYINSPIRATIONTOKENS':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xb58984c21ec86f2a48512862ddd6b45d3e0ffe20.sol(145)


