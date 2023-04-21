Processing contract: /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol:CHBN
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'CHBN':
    |}
    |
  > |contract CHBN {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'CHBN':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'CHBN':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'CHBN':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'CHBN':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'CHBN':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes memory _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'CHBN':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'CHBN':
    |contract CHBN {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'CHBN':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'CHBN':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'CHBN':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'CHBN':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != address(0x0));
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'CHBN':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(135)

[33mWarning[0m for UnhandledException in contract 'CHBN':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(123)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CHBN':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'CHBN':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'CHBN':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'CHBN':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'CHBN':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(154)

[31mViolation[0m for UnrestrictedWrite in contract 'CHBN':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'CHBN':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'CHBN':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'CHBN':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(104)

[33mWarning[0m for UnrestrictedWrite in contract 'CHBN':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'CHBN':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x6de141e98c3e64f6230f57aaaea939afbdfb3c67.sol(155)


