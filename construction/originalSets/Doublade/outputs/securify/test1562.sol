Processing contract: /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol:ERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'ERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract ERC20 is owned {
    |    // Public variables of the token
    |    string public name = "hylos";
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public frozenAccount;
    |   
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  > |    mapping (address => bool) public frozenAccount;
    |   
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(143)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(150)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(179)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |
    |contract owned {
  > |    address public owner;
    |
    |    modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |contract ERC20 is owned {
    |    // Public variables of the token
  > |    string public name = "hylos";
    |    string public symbol = "HYT";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    // Public variables of the token
    |    string public name = "hylos";
  > |    string public symbol = "HYT";
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 900000000 * 10 ** uint256(decimals);
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    string public name = "hylos";
    |    string public symbol = "HYT";
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 900000000 * 10 ** uint256(decimals);
    |    uint256 public releaseDate = 1577750400;
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    string public symbol = "HYT";
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply = 900000000 * 10 ** uint256(decimals);
    |    uint256 public releaseDate = 1577750400;
    |    uint256 public holdedToken = 300000000 * 10 ** uint256(decimals);
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 900000000 * 10 ** uint256(decimals);
  > |    uint256 public releaseDate = 1577750400;
    |    uint256 public holdedToken = 300000000 * 10 ** uint256(decimals);
    |
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    uint256 public totalSupply = 900000000 * 10 ** uint256(decimals);
    |    uint256 public releaseDate = 1577750400;
  > |    uint256 public holdedToken = 300000000 * 10 ** uint256(decimals);
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint256 _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(163)

[33mWarning[0m for UnhandledException in contract 'ERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(135)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        uint256 previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(182)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        uint256 previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(165)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(12)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(144)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(this, target, mintedAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(152)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.24;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x633f2b386538f542f292f6f775999f5ffff52136.sol(12)


