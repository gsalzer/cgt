Processing contract: /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol:ETHERCOIN
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'ETHERCOIN':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract ETHERCOIN{
    |    // Public variables of the token
    |    string public name = "ETHERCOIN";
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'ETHERCOIN':
    |    address public creator;
    |    
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'ETHERCOIN':
    |    
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'ETHERCOIN':
    |contract ETHERCOIN{
    |    // Public variables of the token
  > |    string public name = "ETHERCOIN";
    |    string public symbol = "ETRC";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'ETHERCOIN':
    |    // Public variables of the token
    |    string public name = "ETHERCOIN";
  > |    string public symbol = "ETRC";
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'ETHERCOIN':
    |    string public name = "ETHERCOIN";
    |    string public symbol = "ETRC";
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'ETHERCOIN':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
  > |    uint256 public totalSupply;
    |    uint256 public ETHERCOINSupply = 21000000;
    |    uint256 public buyPrice = 4000000;
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'ETHERCOIN':
    |    // 18 decimals is the strongly suggested default
    |    uint256 public totalSupply;
  > |    uint256 public ETHERCOINSupply = 21000000;
    |    uint256 public buyPrice = 4000000;
    |    address public creator;
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'ETHERCOIN':
    |    uint256 public totalSupply;
    |    uint256 public ETHERCOINSupply = 21000000;
  > |    uint256 public buyPrice = 4000000;
    |    address public creator;
    |    
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'ETHERCOIN':
    |    uint256 public ETHERCOINSupply = 21000000;
    |    uint256 public buyPrice = 4000000;
  > |    address public creator;
    |    
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'ETHERCOIN':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'ETHERCOIN':
    |     * @param _value the amount to send
    |     */
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'ETHERCOIN':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'ETHERCOIN':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |     
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'ETHERCOIN':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xef7149290d68db4ae877c8fa32e89f99939eb2bd.sol(45)


