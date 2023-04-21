Processing contract: /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol:HRChainERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'HRChainERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract HRChainERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'HRChainERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'HRChainERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'HRChainERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'HRChainERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'HRChainERC20':
    |     * Allows `_spender` to spend no more than `_value` tokens on your behalf, and then ping the contract about it
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'HRChainERC20':
    |contract HRChainERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'HRChainERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'HRChainERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'HRChainERC20':
    |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'HRChainERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(36)

[33mWarning[0m for UnhandledException in contract 'HRChainERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(101)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HRChainERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'HRChainERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'HRChainERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'HRChainERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'HRChainERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'HRChainERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0f93f35822f611500773097e454fc04f9c2d3ef6.sol(87)


