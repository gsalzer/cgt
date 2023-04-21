Processing contract: /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol:AMULETS
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'AMULETS':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract AMULETS {
    |    // Public variables of the token
    |    string public name = 'AMULETS';
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'AMULETS':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'AMULETS':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'AMULETS':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'AMULETS':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'AMULETS':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'AMULETS':
    |contract AMULETS {
    |    // Public variables of the token
  > |    string public name = 'AMULETS';
    |    string public symbol = 'AML';
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'AMULETS':
    |    // Public variables of the token
    |    string public name = 'AMULETS';
  > |    string public symbol = 'AML';
    |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'AMULETS':
    |    string public name = 'AMULETS';
    |    string public symbol = 'AML';
  > |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply = 88800000000000000;
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'AMULETS':
    |    uint8 public decimals = 8;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply = 88800000000000000;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'AMULETS':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(35)

[33mWarning[0m for UnhandledException in contract 'AMULETS':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(109)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AMULETS':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(109)

[31mViolation[0m for UnrestrictedWrite in contract 'AMULETS':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'AMULETS':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'AMULETS':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'AMULETS':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'AMULETS':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe8b151c05a27bf095c0534bd5531523769e2abc8.sol(91)


