Processing contract: /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol:ERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'ERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract ERC20 is owned {
    |    // Public variables of the token
    |    string public name = "Cannabnc Token";
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(85)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public frozenAccount;
    |   
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  > |    mapping (address => bool) public frozenAccount;
    |   
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value)  public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(171)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(214)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(222)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(250)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    /// @dev Set the ICO_Contract.
    |    /// @param _ICO_Contract crowdsale contract address
  > |    function setICO_Contract(address _ICO_Contract) onlyOwner public {
    |        ICO_Contract = _ICO_Contract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(262)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor () public {
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |contract ERC20 is owned {
    |    // Public variables of the token
  > |    string public name = "Cannabnc Token";
    |    string public symbol = "CBNC";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    // Public variables of the token
    |    string public name = "Cannabnc Token";
  > |    string public symbol = "CBNC";
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 400000000 * 10 ** uint256(decimals);
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    string public name = "Cannabnc Token";
    |    string public symbol = "CBNC";
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 400000000 * 10 ** uint256(decimals);
    |
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    string public symbol = "CBNC";
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply = 400000000 * 10 ** uint256(decimals);
    |
    |    /// contract that is allowed to create new tokens and allows unlift the transfer limits on this token
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |
    |    /// contract that is allowed to create new tokens and allows unlift the transfer limits on this token
  > |    address public ICO_Contract;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint256 _value)  internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(234)

[33mWarning[0m for UnhandledException in contract 'ERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(206)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(206)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        uint256 previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(142)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(237)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(253)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        uint256 previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function transferFrom(address _from, address _to, uint256 _value)  public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(173)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(this, target, mintedAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(224)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    /// @param _ICO_Contract crowdsale contract address
    |    function setICO_Contract(address _ICO_Contract) onlyOwner public {
  > |        ICO_Contract = _ICO_Contract;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(263)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |*/
    |
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(23)

[33mWarning[0m for LockedEther in contract 'owned':
    | */
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor () public {
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x220e7403b395261e3243eaa9ee077c42d2a9fdba.sol(86)


