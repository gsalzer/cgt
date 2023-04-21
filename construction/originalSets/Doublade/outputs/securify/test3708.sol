Processing contract: /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol:REBELCOIN
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'REBELCOIN':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract REBELCOIN{
    |    // Public variables of the token
    |    string public name = "REBEL COIN";
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'REBELCOIN':
    |    address public creator;
    |    
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'REBELCOIN':
    |    
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'REBELCOIN':
    |contract REBELCOIN{
    |    // Public variables of the token
  > |    string public name = "REBEL COIN";
    |    string public symbol = "REBLC";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'REBELCOIN':
    |    // Public variables of the token
    |    string public name = "REBEL COIN";
  > |    string public symbol = "REBLC";
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'REBELCOIN':
    |    string public name = "REBEL COIN";
    |    string public symbol = "REBLC";
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'REBELCOIN':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
  > |    uint256 public totalSupply;
    |    uint256 public REBELCOINSupply = 1000000000;
    |    uint256 public buyPrice = 100000000;
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'REBELCOIN':
    |    // 18 decimals is the strongly suggested default
    |    uint256 public totalSupply;
  > |    uint256 public REBELCOINSupply = 1000000000;
    |    uint256 public buyPrice = 100000000;
    |    address public creator;
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'REBELCOIN':
    |    uint256 public totalSupply;
    |    uint256 public REBELCOINSupply = 1000000000;
  > |    uint256 public buyPrice = 100000000;
    |    address public creator;
    |    
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'REBELCOIN':
    |    uint256 public REBELCOINSupply = 1000000000;
    |    uint256 public buyPrice = 100000000;
  > |    address public creator;
    |    
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'REBELCOIN':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'REBELCOIN':
    |     * @param _value the amount to send
    |     */
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'REBELCOIN':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'REBELCOIN':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |     
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'REBELCOIN':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xf2bad87c0d0ea8bda69c722368df4f79d92ee6c9.sol(45)


