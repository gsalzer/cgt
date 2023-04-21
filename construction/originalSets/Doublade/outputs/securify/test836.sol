Processing contract: /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol:ERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol:ERC20_ICO
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol:Killable
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'ERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract ERC20 is owned {
    |   // Public variables of the token
    |    string public name = "WorkCoin Token";
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public frozenAccount;
    |   
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(103)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  > |    mapping (address => bool) public frozenAccount;
    |   
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value)  public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(170)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(185)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(200)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(213)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(221)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(249)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    /// @dev Set the ICO_Contract.
    |    /// @param _ICO_Contract crowdsale contract address
  > |    function setICO_Contract(address _ICO_Contract) onlyOwner public {
    |        ICO_Contract = _ICO_Contract;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(261)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor () public {
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(73)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |contract ERC20 is owned {
    |   // Public variables of the token
  > |    string public name = "WorkCoin Token";
    |    string public symbol = "WRC";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |   // Public variables of the token
    |    string public name = "WorkCoin Token";
  > |    string public symbol = "WRC";
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 2000000000 * 10 ** uint256(decimals);
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    string public name = "WorkCoin Token";
    |    string public symbol = "WRC";
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply = 2000000000 * 10 ** uint256(decimals);
    |
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(95)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    string public symbol = "WRC";
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply = 2000000000 * 10 ** uint256(decimals);
    |
    |    /// contract that is allowed to create new tokens and allows unlift the transfer limits on this token
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(96)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |
    |    /// contract that is allowed to create new tokens and allows unlift the transfer limits on this token
  > |    address public ICO_Contract;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint256 _value)  internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(233)

[33mWarning[0m for UnhandledException in contract 'ERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(205)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        uint256 previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(143)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(252)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(254)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        uint256 previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function transferFrom(address _from, address _to, uint256 _value)  public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(172)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(235)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(222)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(this, target, mintedAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    /// @param _ICO_Contract crowdsale contract address
    |    function setICO_Contract(address _ICO_Contract) onlyOwner public {
  > |        ICO_Contract = _ICO_Contract;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(262)

[33mWarning[0m for DAOConstantGas in contract 'ERC20_ICO':
    |
    |        // Transfer Fund to owner's address
  > |        owner.transfer(address(this).balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(334)

[33mWarning[0m for LockedEther in contract 'ERC20_ICO':
    |    }
    |}
  > |contract ERC20_ICO is Killable {
    |
    |    /// The token we are selling
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(270)

[31mViolation[0m for TODAmount in contract 'ERC20_ICO':
    |
    |        // Transfer Fund to owner's address
  > |        owner.transfer(address(this).balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(334)

[31mViolation[0m for TODReceiver in contract 'ERC20_ICO':
    |
    |        // Transfer Fund to owner's address
  > |        owner.transfer(address(this).balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(334)

[33mWarning[0m for UnhandledException in contract 'ERC20_ICO':
    |        
    |        // Transfer Token to owner's address
  > |        token.transfer(receiver, tokensAmount);
    |
    |        // Transfer Fund to owner's address
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(331)

[33mWarning[0m for UnhandledException in contract 'ERC20_ICO':
    |
    |        // Transfer Fund to owner's address
  > |        owner.transfer(address(this).balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(334)

[33mWarning[0m for UnhandledException in contract 'ERC20_ICO':
    |        // Finalized Pre ICO crowdsele.
    |        finalized = true;
  > |        uint256 tokensAmount = token.balanceOf(this);
    |        token.transfer(owner, tokensAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(363)

[33mWarning[0m for UnhandledException in contract 'ERC20_ICO':
    |        finalized = true;
    |        uint256 tokensAmount = token.balanceOf(this);
  > |        token.transfer(owner, tokensAmount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(364)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20_ICO':
    |        
    |        // Transfer Token to owner's address
  > |        token.transfer(receiver, tokensAmount);
    |
    |        // Transfer Fund to owner's address
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(331)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20_ICO':
    |        // Finalized Pre ICO crowdsele.
    |        finalized = true;
  > |        uint256 tokensAmount = token.balanceOf(this);
    |        token.transfer(owner, tokensAmount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(363)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20_ICO':
    |        finalized = true;
    |        uint256 tokensAmount = token.balanceOf(this);
  > |        token.transfer(owner, tokensAmount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(364)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20_ICO':
    |        investedAmountOf[receiver] += msg.value;
    |        // Update totals
  > |        tokensSold += tokensAmount;
    |        weiRaised += msg.value;
    |
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(324)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20_ICO':
    |        // Update totals
    |        tokensSold += tokensAmount;
  > |        weiRaised += msg.value;
    |
    |        // Emit an event that shows invested successfully
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(325)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20_ICO':
    |        // Update investor
    |        uint256 tokensAmount = msg.value * TokenPerETH;
  > |        investedAmountOf[receiver] += msg.value;
    |        // Update totals
    |        tokensSold += tokensAmount;
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20_ICO':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20_ICO':
    |    function setStartsAt(uint256 time) onlyOwner public {
    |        require(!finalized);
  > |        startsAt = time;
    |        emit StartsAtChanged(startsAt);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(345)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20_ICO':
    |    function setEndsAt(uint256 time) onlyOwner public {
    |        require(!finalized);
  > |        endsAt = time;
    |        emit EndsAtChanged(endsAt);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20_ICO':
    |        require(value > 0);
    |        emit RateChanged(TokenPerETH, value);
  > |        TokenPerETH = value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(357)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20_ICO':
    |    function finalize() public onlyOwner {
    |        // Finalized Pre ICO crowdsele.
  > |        finalized = true;
    |        uint256 tokensAmount = token.balanceOf(this);
    |        token.transfer(owner, tokensAmount);
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(362)

[33mWarning[0m for LockedEther in contract 'Killable':
    |    }
    |}
  > |contract Killable is owned {
    |    function kill() onlyOwner public {
    |        selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(265)

[33mWarning[0m for UnrestrictedWrite in contract 'Killable':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(85)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |    
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(22)

[33mWarning[0m for LockedEther in contract 'owned':
    | */
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(84)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    constructor () public {
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x3594b81234a14d0051e817793dc300763ce48241.sol(85)


