Processing contract: /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol:Aeron
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Aeron':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract Aeron {
    |    // Public variables of the token
    |    string public name = "Aeron";
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'Aeron':
    |    address public creator;
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'Aeron':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Aeron':
    |contract Aeron {
    |    // Public variables of the token
  > |    string public name = "Aeron";
    |    string public symbol = "ARN";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Aeron':
    |    // Public variables of the token
    |    string public name = "Aeron";
  > |    string public symbol = "ARN";
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Aeron':
    |    string public name = "Aeron";
    |    string public symbol = "ARN";
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Aeron':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
  > |    uint256 public totalSupply;
    |    uint256 public datboiSupply = 20000000;
    |    uint256 public buyPrice = 1000;
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Aeron':
    |    // 18 decimals is the strongly suggested default
    |    uint256 public totalSupply;
  > |    uint256 public datboiSupply = 20000000;
    |    uint256 public buyPrice = 1000;
    |    address public creator;
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Aeron':
    |    uint256 public totalSupply;
    |    uint256 public datboiSupply = 20000000;
  > |    uint256 public buyPrice = 1000;
    |    address public creator;
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Aeron':
    |    uint256 public datboiSupply = 20000000;
    |    uint256 public buyPrice = 1000;
  > |    address public creator;
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Aeron':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'Aeron':
    |     * @param _value the amount to send
    |     */
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeron':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'Aeron':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |      
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Aeron':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x4c3da77d8bce020d4128995d7f92c5bd0919fcc3.sol(45)


