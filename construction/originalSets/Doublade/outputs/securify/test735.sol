Processing contract: /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol:DunkPayToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol:Pausable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol:tokenRecipient
[31mViolation[0m for DAOConstantGas in contract 'DunkPayToken':
    |        require(minimumAmount >= ethForSell);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(ethForSell);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |        totalEth -= ethForSell;
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(391)

[33mWarning[0m for DAOConstantGas in contract 'DunkPayToken':
    |        uint256 minimumAmount = address(this).balance; 
    |        require(minimumAmount >= amount);      // checks if the contract has enough ether to buy
  > |        msg.sender.transfer(amount);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(400)

[33mWarning[0m for LockedEther in contract 'DunkPayToken':
    |/******************************************/
    |
  > |contract DunkPayToken is TokenERC20 {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(265)

[31mViolation[0m for MissingInputValidation in contract 'DunkPayToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'DunkPayToken':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf; 
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'DunkPayToken':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf; 
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'DunkPayToken':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public whenNotPaused returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(185)

[31mViolation[0m for MissingInputValidation in contract 'DunkPayToken':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) whenNotPaused
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(215)

[31mViolation[0m for MissingInputValidation in contract 'DunkPayToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public whenPaused returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(249)

[31mViolation[0m for MissingInputValidation in contract 'DunkPayToken':
    |    uint256 public buySupply;
    |    uint256 public totalEth;
  > |    mapping (address => bool) public frozenAccount;
    |
    |    /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(271)

[31mViolation[0m for MissingInputValidation in contract 'DunkPayToken':
    |    /// @param target Address to be frozen
    |    /// @param freeze either to freeze it or not
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(341)

[31mViolation[0m for MissingInputValidation in contract 'DunkPayToken':
    |    /// @param newSellPrice Price the users can sell to the contract
    |    /// @param newBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(349)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |contract TokenERC20 is Pausable{
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |    uint256 public totalSupplyForDivision;
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  > |    uint256 public totalSupplyForDivision;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public whenPaused returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(232)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |contract DunkPayToken is TokenERC20 {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |    uint256 public buySupply;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(267)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |    uint256 public buySupply;
    |    uint256 public totalEth;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(268)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |    uint256 public sellPrice;
    |    uint256 public buyPrice;
  > |    uint256 public buySupply;
    |    uint256 public totalEth;
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |    uint256 public buyPrice;
    |    uint256 public buySupply;
  > |    uint256 public totalEth;
    |    mapping (address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(270)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |    }
    |
  > |    function percent(uint256 numerator, uint256 denominator , uint precision) returns(uint256 quotient) {
    |        if(numerator <= 0)
    |        {
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(292)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |    }
    |    
  > |    function getZero(uint256 number) returns(uint num_len) {
    |        uint i = 1;
    |        uint _num_len = 0;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(304)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(316)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |
    |    /// @notice Buy tokens from contract by sending ether
  > |    function buy() payable whenNotPaused public {
    |        uint256 dnkForBuy = msg.value;
    |        uint zeros = getZero(buySupply);
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(368)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |    /// @notice withDraw `amount` ETH to contract
    |    /// @param amount amount of ETH to be sent
  > |    function withdraw(uint256 amount) onlyOwner public {
    |        uint256 minimumAmount = address(this).balance; 
    |        require(minimumAmount >= amount);      // checks if the contract has enough ether to buy
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(397)

[33mWarning[0m for MissingInputValidation in contract 'DunkPayToken':
    |    }
    |
  > |    function bankrupt(address[] _holders) onlyOwner whenPaused public {
    |        uint256 restBalance = balanceOf[this];
    |        balanceOf[this] -= restBalance;                        // Subtract from the targeted balance
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(415)

[33mWarning[0m for TODAmount in contract 'DunkPayToken':
    |        uint256 minimumAmount = address(this).balance; 
    |        require(minimumAmount >= amount);      // checks if the contract has enough ether to buy
  > |        msg.sender.transfer(amount);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(400)

[33mWarning[0m for TODReceiver in contract 'DunkPayToken':
    |        require(minimumAmount >= ethForSell);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(ethForSell);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |        totalEth -= ethForSell;
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(391)

[33mWarning[0m for TODReceiver in contract 'DunkPayToken':
    |        uint256 minimumAmount = address(this).balance; 
    |        require(minimumAmount >= amount);      // checks if the contract has enough ether to buy
  > |        msg.sender.transfer(amount);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(400)

[33mWarning[0m for UnhandledException in contract 'DunkPayToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(220)

[33mWarning[0m for UnhandledException in contract 'DunkPayToken':
    |        require(minimumAmount >= ethForSell);      // checks if the contract has enough ether to buy
    |        _transfer(msg.sender, this, amount);              // makes the transfers
  > |        msg.sender.transfer(ethForSell);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |        totalEth -= ethForSell;
    |    } 
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(391)

[33mWarning[0m for UnhandledException in contract 'DunkPayToken':
    |        uint256 minimumAmount = address(this).balance; 
    |        require(minimumAmount >= amount);      // checks if the contract has enough ether to buy
  > |        msg.sender.transfer(amount);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(400)

[33mWarning[0m for UnhandledException in contract 'DunkPayToken':
    |            balanceOf[_holders[i]] -= holderBalance;                        // Subtract from the targeted balance
    |            totalSupply -= holderBalance;            
  > |            _holders[i].transfer(amount);          // sends ether to the seller. It's important to do this last to 
    |          } 
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(433)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DunkPayToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'DunkPayToken':
    |        uint256 minimumAmount = address(this).balance; 
    |        require(minimumAmount >= amount);      // checks if the contract has enough ether to buy
  > |        msg.sender.transfer(amount);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(400)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        totalSupplyForDivision -= _value;                              // Update totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
  > |        totalSupplyForDivision -= _value;                              // Update totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(252)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        totalSupplyForDivision -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(254)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  > |        totalSupplyForDivision -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(255)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(322)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |        balanceOf[_from] -= _value;                         // Subtract from the sender
  > |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        _transfer(msg.sender, this, amount);              // makes the transfers
    |        msg.sender.transfer(ethForSell);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
  > |        totalEth -= ethForSell;
    |    } 
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(392)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |            }
    |        }
  > |        totalSupplyForDivision = totalSupply;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(412)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |            require(minimumAmount >= amount);      // checks if the contract has enough ether to buy
    |            uint256 holderBalance = balanceOf[_holders[i]];
  > |            balanceOf[_holders[i]] -= holderBalance;                        // Subtract from the targeted balance
    |            totalSupply -= holderBalance;            
    |            _holders[i].transfer(amount);          // sends ether to the seller. It's important to do this last to 
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(431)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |            uint256 holderBalance = balanceOf[_holders[i]];
    |            balanceOf[_holders[i]] -= holderBalance;                        // Subtract from the targeted balance
  > |            totalSupply -= holderBalance;            
    |            _holders[i].transfer(amount);          // sends ether to the seller. It's important to do this last to 
    |          } 
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(432)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |          } 
    |        }
  > |        totalSupplyForDivision = totalSupply;
    |        totalEth = address(this).balance;
    |    }    
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(436)

[31mViolation[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        }
    |        totalSupplyForDivision = totalSupply;
  > |        totalEth = address(this).balance;
    |    }    
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(437)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public whenNotPaused returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |    function approve(address _spender, uint256 _value) public whenNotPaused
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |    function burn(uint256 _value) public whenPaused returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        totalSupplyForDivision -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        totalSupplyForDivision -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        require(!frozenAccount[_from]);                     // Check if sender is frozen
    |        require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |        balanceOf[_from] -= _value;                         // Subtract from the sender
    |        balanceOf[_to] += _value;                           // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(322)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |    /// @param mintedAmount the amount of tokens it will receive
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        totalSupplyForDivision += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(331)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        totalSupplyForDivision += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(332)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  > |        totalSupplyForDivision += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(333)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |    /// @param freeze either to freeze it or not
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(342)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |    /// @param newBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |        
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(350)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |        
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(351)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |    function bankrupt(address[] _holders) onlyOwner whenPaused public {
    |        uint256 restBalance = balanceOf[this];
  > |        balanceOf[this] -= restBalance;                        // Subtract from the targeted balance
    |        totalSupply -= restBalance;                              // Update totalSupply
    |        totalSupplyForDivision -= restBalance;                             // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(417)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        uint256 restBalance = balanceOf[this];
    |        balanceOf[this] -= restBalance;                        // Subtract from the targeted balance
  > |        totalSupply -= restBalance;                              // Update totalSupply
    |        totalSupplyForDivision -= restBalance;                             // Update totalSupply
    |        totalEth = address(this).balance;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(418)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        balanceOf[this] -= restBalance;                        // Subtract from the targeted balance
    |        totalSupply -= restBalance;                              // Update totalSupply
  > |        totalSupplyForDivision -= restBalance;                             // Update totalSupply
    |        totalEth = address(this).balance;
    |        
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(419)

[33mWarning[0m for UnrestrictedWrite in contract 'DunkPayToken':
    |        totalSupply -= restBalance;                              // Update totalSupply
    |        totalSupplyForDivision -= restBalance;                             // Update totalSupply
  > |        totalEth = address(this).balance;
    |        
    |        for (uint i = 0; i < _holders.length; i++) {
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(420)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(62)

[33mWarning[0m for LockedEther in contract 'Pausable':
    |}
    |
  > |contract Pausable is Ownable {
    |  event Pause();
    |  event Unpause();
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'Pausable':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Pausable':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'Pausable':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(101)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |  * @dev Math operations with safety checks that throw on error
    |  */
  > |  library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(7)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract TokenERC20 is Pausable{
    |    // Public variables of the token
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // This creates an array with all balances
  > |    mapping (address => uint256) public balanceOf; 
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    // This creates an array with all balances
    |    mapping (address => uint256) public balanceOf; 
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(119)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount to send
    |     */
  > |    function transferFrom(address _from, address _to, uint256 _value) public whenNotPaused returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(185)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _extraData some extra information to send to the approved contract
    |     */
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) whenNotPaused
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(215)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burnFrom(address _from, uint256 _value) public whenPaused returns (bool success) {
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(249)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |contract Ownable {
  > |    address public owner;
    |
    |    function Ownable() public {
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |  event Unpause();
    |
  > |  bool public paused = false;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |   * @dev called by the owner to pause, triggers stopped state
    |   */
  > |  function pause() onlyOwner whenNotPaused public {
    |    paused = true;
    |    emit Pause();
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |   * @dev called by the owner to unpause, returns to normal state
    |   */
  > |  function unpause() onlyOwner whenPaused public {
    |    paused = false;
    |    emit Unpause();
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(100)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 is Pausable{
    |    // Public variables of the token
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // Public variables of the token
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |    // 18 decimals is the strongly suggested default, avoid changing it
  > |    uint256 public totalSupply;
    |    uint256 public totalSupplyForDivision;
    |
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    // 18 decimals is the strongly suggested default, avoid changing it
    |    uint256 public totalSupply;
  > |    uint256 public totalSupplyForDivision;
    |
    |    // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * Internal transfer, only can be called by this contract
    |     */
  > |    function _transfer(address _from, address _to, uint _value) internal whenNotPaused{
    |        // Prevent transfer to 0x0 address. Use burn() instead
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(146)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |     * @param _value the amount of money to burn
    |     */
  > |    function burn(uint256 _value) public whenPaused returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(232)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(220)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(220)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(156)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(158)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        totalSupplyForDivision -= _value;                              // Update totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(235)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
  > |        totalSupplyForDivision -= _value;                              // Update totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(236)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(252)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        totalSupplyForDivision -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(254)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  > |        totalSupplyForDivision -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(255)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        // Subtract from the sender
  > |        balanceOf[_from] -= _value;
    |        // Add the same to the recipient
    |        balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public whenNotPaused returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public whenNotPaused
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public whenPaused returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        totalSupplyForDivision -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(234)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        totalSupplyForDivision -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(253)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |   */
    |  function pause() onlyOwner whenNotPaused public {
  > |    paused = true;
    |    emit Pause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |   */
    |  function unpause() onlyOwner whenPaused public {
  > |    paused = false;
    |    emit Unpause();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x2e76886f251caf2efe6853b181cea3385cc3a24b.sol(101)


