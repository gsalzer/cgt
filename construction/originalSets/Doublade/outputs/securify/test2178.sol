Processing contract: /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol:FoundGameCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'FoundGameCoin':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract FoundGameCoin {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'FoundGameCoin':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'FoundGameCoin':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'FoundGameCoin':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'FoundGameCoin':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'FoundGameCoin':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'FoundGameCoin':
    |contract FoundGameCoin {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'FoundGameCoin':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'FoundGameCoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'FoundGameCoin':
    |    uint8 public decimals;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'FoundGameCoin':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(45)

[33mWarning[0m for UnhandledException in contract 'FoundGameCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FoundGameCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'FoundGameCoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'FoundGameCoin':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'FoundGameCoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'FoundGameCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'FoundGameCoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8df358c41cbfd364d58e061b2ba1af350cd5147a.sol(101)


