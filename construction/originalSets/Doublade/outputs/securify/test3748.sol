Processing contract: /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol:Kaikai
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Kaikai':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract Kaikai {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'Kaikai':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'Kaikai':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Kaikai':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'Kaikai':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'Kaikai':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'Kaikai':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'Kaikai':
    |contract Kaikai {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Kaikai':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Kaikai':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Kaikai':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Kaikai':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Kaikai':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(128)

[33mWarning[0m for UnhandledException in contract 'Kaikai':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(116)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Kaikai':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'Kaikai':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'Kaikai':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'Kaikai':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'Kaikai':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'Kaikai':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(149)

[33mWarning[0m for UnrestrictedWrite in contract 'Kaikai':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'Kaikai':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'Kaikai':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Kaikai':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Kaikai':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xf643f640511a4fb900c2cd4164ff2312288b248b.sol(148)


