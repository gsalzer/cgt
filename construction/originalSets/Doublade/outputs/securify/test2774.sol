Processing contract: /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol:BankcoinBCASH
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'BankcoinBCASH':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract BankcoinBCASH {
    |    // Public variables of the token
    |    string public name = "Bankcoin";
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'BankcoinBCASH':
    |    address public creator;
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'BankcoinBCASH':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'BankcoinBCASH':
    |contract BankcoinBCASH {
    |    // Public variables of the token
  > |    string public name = "Bankcoin";
    |    string public symbol = "BCASH";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BankcoinBCASH':
    |    // Public variables of the token
    |    string public name = "Bankcoin";
  > |    string public symbol = "BCASH";
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'BankcoinBCASH':
    |    string public name = "Bankcoin";
    |    string public symbol = "BCASH";
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BankcoinBCASH':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default
  > |    uint256 public totalSupply;
    |    uint256 public BankcoinBCASHSupply = 2100000;
    |    uint256 public buyPrice = 2000;
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'BankcoinBCASH':
    |    // 18 decimals is the strongly suggested default
    |    uint256 public totalSupply;
  > |    uint256 public BankcoinBCASHSupply = 2100000;
    |    uint256 public buyPrice = 2000;
    |    address public creator;
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'BankcoinBCASH':
    |    uint256 public totalSupply;
    |    uint256 public BankcoinBCASHSupply = 2100000;
  > |    uint256 public buyPrice = 2000;
    |    address public creator;
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'BankcoinBCASH':
    |    uint256 public BankcoinBCASHSupply = 2100000;
    |    uint256 public buyPrice = 2000;
  > |    address public creator;
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'BankcoinBCASH':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'BankcoinBCASH':
    |     * @param _value the amount to send
    |     */
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(60)

[31mViolation[0m for UnrestrictedWrite in contract 'BankcoinBCASH':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'BankcoinBCASH':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |      
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'BankcoinBCASH':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xb5bb48567bfd0bfe9e4b08ef8b7f91556cc2a112.sol(45)


