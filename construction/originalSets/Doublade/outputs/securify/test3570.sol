Processing contract: /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol:IOTToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'IOTToken':
    |
    |
  > |contract IOTToken {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'IOTToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'IOTToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'IOTToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'IOTToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'IOTToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'IOTToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(175)

[33mWarning[0m for MissingInputValidation in contract 'IOTToken':
    |contract IOTToken {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'IOTToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'IOTToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'IOTToken':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'IOTToken':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'IOTToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(159)

[33mWarning[0m for UnhandledException in contract 'IOTToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(147)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'IOTToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'IOTToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'IOTToken':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'IOTToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(162)

[31mViolation[0m for UnrestrictedWrite in contract 'IOTToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(178)

[31mViolation[0m for UnrestrictedWrite in contract 'IOTToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(180)

[33mWarning[0m for UnrestrictedWrite in contract 'IOTToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'IOTToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'IOTToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'IOTToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'IOTToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(179)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe9cef5d87dbe063c0ed3194bc8830227e1916d6d.sol(9)


