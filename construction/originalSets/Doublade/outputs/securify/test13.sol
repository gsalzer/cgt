Processing contract: /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol:NeCashTokenSale
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol:NecashToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol:NecashTokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'NeCashTokenSale':
    |    **/
    |    function forwardFunds(uint256 _amount) internal {
  > |        wallet.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(378)

[33mWarning[0m for LockedEther in contract 'NeCashTokenSale':
    |  @title NeCashTokenSale
    |**/
  > |contract NeCashTokenSale is owned, Pausable {
    |
    |    using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(245)

[33mWarning[0m for TODAmount in contract 'NeCashTokenSale':
    |            uint256 possibleTokens = maxSellToken.sub(tokens);
    |            uint256 change = calculatePriceForTokens(tokens.sub(possibleTokens));
  > |            msg.sender.transfer(change);
    |            tokens = possibleTokens;
    |            amount = amount.sub(change);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(313)

[31mViolation[0m for TODReceiver in contract 'NeCashTokenSale':
    |    **/
    |    function forwardFunds(uint256 _amount) internal {
  > |        wallet.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(378)

[33mWarning[0m for TODReceiver in contract 'NeCashTokenSale':
    |            uint256 possibleTokens = maxSellToken.sub(tokens);
    |            uint256 change = calculatePriceForTokens(tokens.sub(possibleTokens));
  > |            msg.sender.transfer(change);
    |            tokens = possibleTokens;
    |            amount = amount.sub(change);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(313)

[33mWarning[0m for UnhandledException in contract 'NeCashTokenSale':
    |        uint256 tokens = calculateTokenAmount(amount);
    |
  > |        uint256 maxSellToken = necashToken.balanceOf(address(this));
    |        if(tokens > maxSellToken){
    |            uint256 possibleTokens = maxSellToken.sub(tokens);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(309)

[33mWarning[0m for UnhandledException in contract 'NeCashTokenSale':
    |            uint256 possibleTokens = maxSellToken.sub(tokens);
    |            uint256 change = calculatePriceForTokens(tokens.sub(possibleTokens));
  > |            msg.sender.transfer(change);
    |            tokens = possibleTokens;
    |            amount = amount.sub(change);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(313)

[33mWarning[0m for UnhandledException in contract 'NeCashTokenSale':
    |
    |        contributors[msg.sender] = contributors[msg.sender].add(amount);
  > |        necashToken.transfer(msg.sender, tokens);
    |
    |        tokensSold = tokensSold.add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(319)

[33mWarning[0m for UnhandledException in contract 'NeCashTokenSale':
    |    **/
    |    function forwardFunds(uint256 _amount) internal {
  > |        wallet.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(378)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'NeCashTokenSale':
    |            uint256 possibleTokens = maxSellToken.sub(tokens);
    |            uint256 change = calculatePriceForTokens(tokens.sub(possibleTokens));
  > |            msg.sender.transfer(change);
    |            tokens = possibleTokens;
    |            amount = amount.sub(change);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(313)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NeCashTokenSale':
    |        uint256 tokens = calculateTokenAmount(amount);
    |
  > |        uint256 maxSellToken = necashToken.balanceOf(address(this));
    |        if(tokens > maxSellToken){
    |            uint256 possibleTokens = maxSellToken.sub(tokens);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(309)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NeCashTokenSale':
    |
    |        contributors[msg.sender] = contributors[msg.sender].add(amount);
  > |        necashToken.transfer(msg.sender, tokens);
    |
    |        tokensSold = tokensSold.add(tokens);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(319)

[33mWarning[0m for UnrestrictedWrite in contract 'NeCashTokenSale':
    |        }
    |
  > |        contributors[msg.sender] = contributors[msg.sender].add(amount);
    |        necashToken.transfer(msg.sender, tokens);
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(318)

[33mWarning[0m for UnrestrictedWrite in contract 'NeCashTokenSale':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'NeCashTokenSale':
    |    */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'NeCashTokenSale':
    |    */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'NeCashTokenSale':
    |      public onlyOwner whenNotPaused
    |    {
  > |        maxGasPrice = _gasPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(334)

[33mWarning[0m for UnrestrictedWrite in contract 'NeCashTokenSale':
    |      public onlyOwner whenNotPaused
    |    {
  > |        tokenPerEth = _tokens;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(344)

[33mWarning[0m for UnrestrictedWrite in contract 'NeCashTokenSale':
    |    **/
    |    function finalizeSale() internal {
  > |        finalized = true;
    |        Finalized(tokensSold, weiRaised);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(404)

[33mWarning[0m for LockedEther in contract 'NecashToken':
    |
    |
  > |contract NecashToken is owned, NecashTokenBase {
    |    mapping (address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(140)

[31mViolation[0m for MissingInputValidation in contract 'NecashToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'NecashToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'NecashToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'NecashToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'NecashToken':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'NecashToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'NecashToken':
    |
    |contract NecashToken is owned, NecashTokenBase {
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(141)

[31mViolation[0m for MissingInputValidation in contract 'NecashToken':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(164)

[33mWarning[0m for MissingInputValidation in contract 'NecashToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'NecashToken':
    |
    |contract NecashTokenBase {
  > |    string public constant _myTokeName = 'Necash Token';
    |    string public constant _mySymbol = 'NEC';
    |    uint public constant _myinitialSupply = 20000000;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'NecashToken':
    |contract NecashTokenBase {
    |    string public constant _myTokeName = 'Necash Token';
  > |    string public constant _mySymbol = 'NEC';
    |    uint public constant _myinitialSupply = 20000000;
    |    // Public variables of the token
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'NecashToken':
    |    string public constant _myTokeName = 'Necash Token';
    |    string public constant _mySymbol = 'NEC';
  > |    uint public constant _myinitialSupply = 20000000;
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'NecashToken':
    |    uint public constant _myinitialSupply = 20000000;
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint256 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'NecashToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint256 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'NecashToken':
    |    string public name;
    |    string public symbol;
  > |    uint256 public decimals = 18;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'NecashToken':
    |    string public symbol;
    |    uint256 public decimals = 18;
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'NecashToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(150)

[33mWarning[0m for UnhandledException in contract 'NecashToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NecashToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'NecashToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'NecashToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(157)

[33mWarning[0m for UnrestrictedWrite in contract 'NecashToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'NecashToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'NecashToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'NecashToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'NecashToken':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(165)

[33mWarning[0m for LockedEther in contract 'NecashTokenBase':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract NecashTokenBase {
    |    string public constant _myTokeName = 'Necash Token';
    |    string public constant _mySymbol = 'NEC';
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'NecashTokenBase':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'NecashTokenBase':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'NecashTokenBase':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'NecashTokenBase':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'NecashTokenBase':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(128)

[33mWarning[0m for MissingInputValidation in contract 'NecashTokenBase':
    |
    |contract NecashTokenBase {
  > |    string public constant _myTokeName = 'Necash Token';
    |    string public constant _mySymbol = 'NEC';
    |    uint public constant _myinitialSupply = 20000000;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'NecashTokenBase':
    |contract NecashTokenBase {
    |    string public constant _myTokeName = 'Necash Token';
  > |    string public constant _mySymbol = 'NEC';
    |    uint public constant _myinitialSupply = 20000000;
    |    // Public variables of the token
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'NecashTokenBase':
    |    string public constant _myTokeName = 'Necash Token';
    |    string public constant _mySymbol = 'NEC';
  > |    uint public constant _myinitialSupply = 20000000;
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'NecashTokenBase':
    |    uint public constant _myinitialSupply = 20000000;
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint256 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'NecashTokenBase':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint256 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'NecashTokenBase':
    |    string public name;
    |    string public symbol;
  > |    uint256 public decimals = 18;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'NecashTokenBase':
    |    string public symbol;
    |    uint256 public decimals = 18;
  > |    uint256 public totalSupply;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'NecashTokenBase':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(59)

[33mWarning[0m for UnhandledException in contract 'NecashTokenBase':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(133)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NecashTokenBase':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'NecashTokenBase':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(69)

[31mViolation[0m for UnrestrictedWrite in contract 'NecashTokenBase':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'NecashTokenBase':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'NecashTokenBase':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'NecashTokenBase':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(115)

[33mWarning[0m for LockedEther in contract 'Pausable':
    | * @dev Base contract which allows children to implement an emergency stop mechanism.
    | */
  > |contract Pausable is owned {
    |    event Pause();
    |    event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract owned {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    event Unpause();
    |
  > |    bool public paused = false;
    |
    |    /**
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(178)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @dev called by the owner to pause, triggers stopped state
    |    */
  > |    function pause() onlyOwner whenNotPaused public {
    |        paused = true;
    |        Pause();
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(199)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |    * @dev called by the owner to unpause, returns to normal state
    |    */
  > |    function unpause() onlyOwner whenPaused public {
    |        paused = false;
    |        Unpause();
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    */
    |    function pause() onlyOwner whenNotPaused public {
  > |        paused = true;
    |        Pause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(200)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |    */
    |    function unpause() onlyOwner whenPaused public {
  > |        paused = false;
    |        Unpause();
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(208)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(213)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.18;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x00b9990251f411c28ff37eebfda25e5ad37fbb65.sol(18)


