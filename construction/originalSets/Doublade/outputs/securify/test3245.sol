Processing contract: /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol:Winco
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Winco':
    |pragma solidity ^0.4.16;    // Versão Compilador v0.4.16+commit.d7661dd9 - Runs (Optimiser):200 - Optimization Enabled:	No
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
  > |contract Winco {
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Winco':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'Winco':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Winco':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'Winco':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |    returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'Winco':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |    public
    |    returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'Winco':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'Winco':
    |contract Winco {
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Winco':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 8;
    |    
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Winco':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 8;
    |    
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Winco':
    |    uint8 public decimals = 8;
    |    
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Winco':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Winco':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(120)

[33mWarning[0m for UnhandledException in contract 'Winco':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Winco':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'Winco':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(44)

[31mViolation[0m for UnrestrictedWrite in contract 'Winco':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'Winco':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(123)

[31mViolation[0m for UnrestrictedWrite in contract 'Winco':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(139)

[31mViolation[0m for UnrestrictedWrite in contract 'Winco':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Winco':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'Winco':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Winco':
    |    function approve(address _spender, uint256 _value) public
    |    returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'Winco':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'Winco':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xd44bb6663936cab1310584a277f7daa6943d4904.sol(140)


