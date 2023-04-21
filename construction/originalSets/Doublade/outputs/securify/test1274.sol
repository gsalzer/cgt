Processing contract: /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol:INDT
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol:INDTokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'INDT':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);              
  > |        msg.sender.transfer(amount * sellPrice);          
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(202)

[33mWarning[0m for LockedEther in contract 'INDT':
    |    }
    |}
  > |contract INDT is owned, INDTokenERC20 {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'INDT':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'INDT':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'INDT':
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    event Transfer(address indexed from, address indexed to, uint256 value);
    |    event Burn(address indexed from, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'INDT':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'INDT':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'INDT':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'INDT':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(127)

[31mViolation[0m for MissingInputValidation in contract 'INDT':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |   
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'INDT':
    |    /// @param target Address to receive the tokens
    |    /// @param mintedAmount the amount of tokens it will receive
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(168)

[31mViolation[0m for MissingInputValidation in contract 'INDT':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(178)

[31mViolation[0m for MissingInputValidation in contract 'INDT':
    |    /// @param newSellPrice Price the users can sell to the contract
    |    /// @param newBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(186)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |
    |contract owned {
  > |    address public owner;
    |    function owned() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |contract INDTokenERC20 {
  > |    string public constant _myTokeName = 'IndoToken';
    |    string public constant _mySymbol = 'INDT';
    |    uint public constant _myinitialSupply = 100000000;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |contract INDTokenERC20 {
    |    string public constant _myTokeName = 'IndoToken';
  > |    string public constant _mySymbol = 'INDT';
    |    uint public constant _myinitialSupply = 100000000;
    |    uint8 public constant _myDecimal = 0;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |    string public constant _myTokeName = 'IndoToken';
    |    string public constant _mySymbol = 'INDT';
  > |    uint public constant _myinitialSupply = 100000000;
    |    uint8 public constant _myDecimal = 0;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |    string public constant _mySymbol = 'INDT';
    |    uint public constant _myinitialSupply = 100000000;
  > |    uint8 public constant _myDecimal = 0;
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |    uint public constant _myinitialSupply = 100000000;
    |    uint8 public constant _myDecimal = 0;
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |    uint8 public constant _myDecimal = 0;
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |contract INDT is owned, INDTokenERC20 {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |    )INDT(initialSupply, tokenName, tokenSymbol) public {}
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               
    |        require (balanceOf[_from] >= _value);               
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'INDT':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable public {
    |        uint amount = msg.value / buyPrice;              
    |        _transfer(this, msg.sender, amount);             
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(192)

[33mWarning[0m for TODAmount in contract 'INDT':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);              
  > |        msg.sender.transfer(amount * sellPrice);          
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(202)

[33mWarning[0m for TODReceiver in contract 'INDT':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);              
  > |        msg.sender.transfer(amount * sellPrice);          
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(202)

[33mWarning[0m for UnhandledException in contract 'INDT':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(100)

[33mWarning[0m for UnhandledException in contract 'INDT':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);              
  > |        msg.sender.transfer(amount * sellPrice);          
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'INDT':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'INDT':
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  > |        totalSupply -= _value;                      
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'INDT':
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  > |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'INDT':
    |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
  > |        totalSupply -= _value;                              
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'INDT':
    |        require(!frozenAccount[_from]);                     
    |        require(!frozenAccount[_to]);                       
  > |        balanceOf[_from] -= _value;                         
    |        balanceOf[_to] += _value;                           
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(160)

[31mViolation[0m for UnrestrictedWrite in contract 'INDT':
    |        require(!frozenAccount[_to]);                       
    |        balanceOf[_from] -= _value;                         
  > |        balanceOf[_to] += _value;                           
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
  > |        balanceOf[msg.sender] -= _value;            
    |        totalSupply -= _value;                      
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |        require(_value <= allowance[_from][msg.sender]);    
    |        balanceOf[_from] -= _value;                         
  > |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |        require(!frozenAccount[_from]);                     
    |        require(!frozenAccount[_to]);                       
  > |        balanceOf[_from] -= _value;                         
    |        balanceOf[_to] += _value;                           
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |        require(!frozenAccount[_to]);                       
    |        balanceOf[_from] -= _value;                         
  > |        balanceOf[_to] += _value;                           
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(161)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |    }
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(13)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(169)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |    /// @param newBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'INDT':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(188)

[33mWarning[0m for LockedEther in contract 'INDTokenERC20':
    |}
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
  > |contract INDTokenERC20 {
    |    string public constant _myTokeName = 'IndoToken';
    |    string public constant _mySymbol = 'INDT';
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'INDTokenERC20':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'INDTokenERC20':
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    event Transfer(address indexed from, address indexed to, uint256 value);
    |    event Burn(address indexed from, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'INDTokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'INDTokenERC20':
    |     * @param _value the max amount they can spend
    |     */
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'INDTokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'INDTokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'INDTokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |contract INDTokenERC20 {
  > |    string public constant _myTokeName = 'IndoToken';
    |    string public constant _mySymbol = 'INDT';
    |    uint public constant _myinitialSupply = 100000000;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'INDTokenERC20':
    |contract INDTokenERC20 {
    |    string public constant _myTokeName = 'IndoToken';
  > |    string public constant _mySymbol = 'INDT';
    |    uint public constant _myinitialSupply = 100000000;
    |    uint8 public constant _myDecimal = 0;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'INDTokenERC20':
    |    string public constant _myTokeName = 'IndoToken';
    |    string public constant _mySymbol = 'INDT';
  > |    uint public constant _myinitialSupply = 100000000;
    |    uint8 public constant _myDecimal = 0;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'INDTokenERC20':
    |    string public constant _mySymbol = 'INDT';
    |    uint public constant _myinitialSupply = 100000000;
  > |    uint8 public constant _myDecimal = 0;
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'INDTokenERC20':
    |    uint public constant _myinitialSupply = 100000000;
    |    uint8 public constant _myDecimal = 0;
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'INDTokenERC20':
    |    uint8 public constant _myDecimal = 0;
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'INDTokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'INDTokenERC20':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'INDTokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'INDTokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(112)

[33mWarning[0m for UnhandledException in contract 'INDTokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(100)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'INDTokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'INDTokenERC20':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'INDTokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'INDTokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  > |        totalSupply -= _value;                      
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'INDTokenERC20':
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  > |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'INDTokenERC20':
    |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
  > |        totalSupply -= _value;                              
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'INDTokenERC20':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'INDTokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'INDTokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'INDTokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
  > |        balanceOf[msg.sender] -= _value;            
    |        totalSupply -= _value;                      
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'INDTokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    
    |        balanceOf[_from] -= _value;                         
  > |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(131)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |    function owned() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    }
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x506c34eca4cd1a6332df02a0ef813b3d9a3dc3a0.sol(13)


