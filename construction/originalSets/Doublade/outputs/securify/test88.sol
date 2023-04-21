Processing contract: /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol:CrypteloERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'CrypteloERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract CrypteloERC20 {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'CrypteloERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'CrypteloERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'CrypteloERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'CrypteloERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'CrypteloERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'CrypteloERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(160)

[33mWarning[0m for MissingInputValidation in contract 'CrypteloERC20':
    |contract CrypteloERC20 {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint256 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'CrypteloERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint256 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'CrypteloERC20':
    |    string public name;
    |    string public symbol;
  > |    uint256 public decimals;
    |    uint256 public totalSupply;
    |    uint256 public totalSupplyICO;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'CrypteloERC20':
    |    string public symbol;
    |    uint256 public decimals;
  > |    uint256 public totalSupply;
    |    uint256 public totalSupplyICO;
    |    uint256 public totalSupplyPrivateSale;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'CrypteloERC20':
    |    uint256 public decimals;
    |    uint256 public totalSupply;
  > |    uint256 public totalSupplyICO;
    |    uint256 public totalSupplyPrivateSale;
    |    uint256 public totalSupplyTeamTokens;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'CrypteloERC20':
    |    uint256 public totalSupply;
    |    uint256 public totalSupplyICO;
  > |    uint256 public totalSupplyPrivateSale;
    |    uint256 public totalSupplyTeamTokens;
    |    uint256 public totalSupplyExpansionTokens;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'CrypteloERC20':
    |    uint256 public totalSupplyICO;
    |    uint256 public totalSupplyPrivateSale;
  > |    uint256 public totalSupplyTeamTokens;
    |    uint256 public totalSupplyExpansionTokens;
    |
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'CrypteloERC20':
    |    uint256 public totalSupplyPrivateSale;
    |    uint256 public totalSupplyTeamTokens;
  > |    uint256 public totalSupplyExpansionTokens;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'CrypteloERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'CrypteloERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(144)

[33mWarning[0m for UnhandledException in contract 'CrypteloERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(132)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CrypteloERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'CrypteloERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'CrypteloERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'CrypteloERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'CrypteloERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(163)

[31mViolation[0m for UnrestrictedWrite in contract 'CrypteloERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'CrypteloERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'CrypteloERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'CrypteloERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'CrypteloERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(146)

[33mWarning[0m for UnrestrictedWrite in contract 'CrypteloERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x05fceb069136e291f5241753e8e5ad2b55a372d6.sol(164)


