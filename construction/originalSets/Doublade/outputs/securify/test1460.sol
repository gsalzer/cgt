Processing contract: /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol:PELO
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'PELO':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract PELO {
    |    // Public variables of the token
    |    string public name = "PELO Coin";
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'PELO':
    |    address public creator;
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'PELO':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'PELO':
    |contract PELO {
    |    // Public variables of the token
  > |    string public name = "PELO Coin";
    |    string public symbol = "PELO";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'PELO':
    |    // Public variables of the token
    |    string public name = "PELO Coin";
  > |    string public symbol = "PELO";
    |    uint8 public decimals = 18;
    |    // Decimals = 18
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'PELO':
    |    string public name = "PELO Coin";
    |    string public symbol = "PELO";
  > |    uint8 public decimals = 18;
    |    // Decimals = 18
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'PELO':
    |    uint8 public decimals = 18;
    |    // Decimals = 18
  > |    uint256 public totalSupply;
    |    uint256 public trl2Supply = 215000000;
    |    uint256 public buyPrice = 3000000;
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'PELO':
    |    // Decimals = 18
    |    uint256 public totalSupply;
  > |    uint256 public trl2Supply = 215000000;
    |    uint256 public buyPrice = 3000000;
    |    address public creator;
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'PELO':
    |    uint256 public totalSupply;
    |    uint256 public trl2Supply = 215000000;
  > |    uint256 public buyPrice = 3000000;
    |    address public creator;
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'PELO':
    |    uint256 public trl2Supply = 215000000;
    |    uint256 public buyPrice = 3000000;
  > |    address public creator;
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'PELO':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0); //Burn
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'PELO':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'PELO':
    |        require(balanceOf[_from] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'PELO':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |      
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'PELO':
    |        require(balanceOf[_from] >= _value);
    |        require(balanceOf[_to] + _value >= balanceOf[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5cb3c3a9ea17395af39fcbd357cc568944f074ea.sol(41)


