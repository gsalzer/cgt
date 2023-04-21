Processing contract: /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |pragma solidity ^0.4.16;
    |
  > |contract TokenERC20 {
    |    // Public variables of the token
    |    string public name = "Grinta Coin";
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    // Public variables of the token
  > |    string public name = "Grinta Coin";
    |    string public symbol = "GRIT";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name = "Grinta Coin";
  > |    string public symbol = "GRIT";
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name = "Grinta Coin";
    |    string public symbol = "GRIT";
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply = 1000000;
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply = 1000000;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    event Message(address indexed from, string message);
    |    
  > |    function writeMessage(string message)
    |    public
    |    returns (string)
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(43)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xa822768656beb36d709773c62588fdb0458714a7.sol(72)


