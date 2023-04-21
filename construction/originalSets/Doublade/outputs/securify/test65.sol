Processing contract: /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol:ChinaAERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'ChinaAERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract ChinaAERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'ChinaAERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'ChinaAERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'ChinaAERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'ChinaAERC20':
    |     * Allows `_spender` to spend no more than `_value` tokens on your behalf
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'ChinaAERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'ChinaAERC20':
    |     * Destroy tokens from other account
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(121)

[33mWarning[0m for MissingInputValidation in contract 'ChinaAERC20':
    |contract ChinaAERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'ChinaAERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'ChinaAERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'ChinaAERC20':
    |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'ChinaAERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'ChinaAERC20':
    |     * Destroy tokens
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(110)

[33mWarning[0m for UnhandledException in contract 'ChinaAERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(102)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ChinaAERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(102)

[31mViolation[0m for UnrestrictedWrite in contract 'ChinaAERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'ChinaAERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'ChinaAERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'ChinaAERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'ChinaAERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaAERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaAERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaAERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaAERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'ChinaAERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x0443826f43ac51d58aa2e2d72df3804a79a5715b.sol(125)


