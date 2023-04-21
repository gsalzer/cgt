Processing contract: /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol:CAPTOZ
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'CAPTOZ':
    |            require(address(this).balance > amount * sellPrice);      // checks if the contract has enough ether to buy
    |            _transfer(msg.sender, this, amount);              // makes the transfers
  > |            msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(259)

[33mWarning[0m for DAOConstantGas in contract 'CAPTOZ':
    |                : address(this).balance;
    |            require(address(this).balance >= amount);
  > |            target.transfer(txAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(274)

[33mWarning[0m for LockedEther in contract 'CAPTOZ':
    |    /******************************************/
    |    
  > |    contract CAPTOZ is owned, TokenERC20 {
    |    
    |        uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(188)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |        }
    |    
  > |        function transferOwnership(address newOwner) onlyOwner public {
    |            owner = newOwner;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |    
    |        // This creates an array with all balances
  > |        mapping (address => uint256) public balanceOf;
    |        mapping (address => mapping (address => uint256)) public allowance;
    |    
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |        // This creates an array with all balances
    |        mapping (address => uint256) public balanceOf;
  > |        mapping (address => mapping (address => uint256)) public allowance;
    |    
    |        // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |         * @param _value the amount to send
    |         */
  > |        function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |            require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |            allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |         * @param _value the max amount they can spend
    |         */
  > |        function approve(address _spender, uint256 _value) public
    |            returns (bool success) {
    |            allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |         * @param _extraData some extra information to send to the approved contract
    |         */
  > |        function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |            public
    |            returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(140)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |         * @param _value the amount of money to burn
    |         */
  > |        function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |            require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |            require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(173)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |        uint256 public buyPrice;
    |    
  > |        mapping (address => bool) public frozenAccount;
    |    
    |        /* This generates a public event on the blockchain that will notify clients */
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(193)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |        /// @param target Address to receive the tokens
    |        /// @param mintedAmount the amount of tokens it will receive
  > |        function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |            balanceOf[target] += mintedAmount;
    |            totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(219)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |        /// @param target Address to be frozen
    |        /// @param freeze either to freeze it or not
  > |        function freezeAccount(address target, bool freeze) onlyOwner public {
    |            frozenAccount[target] = freeze;
    |            emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(230)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |    
    |        /// @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
  > |        function setPrices(uint256 newSellPrice, uint256 newBuyPrice) public onlyOwner {
    |            sellPrice = newSellPrice;
    |            buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(236)

[31mViolation[0m for MissingInputValidation in contract 'CAPTOZ':
    |        function () public payable { }
    |        
  > |        function reclaim(address target, uint256 amount) public onlyOwner {
    |            uint txAmount = amount > 0 && amount <= address(this).balance 
    |                ? amount 
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(269)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |        string Version = "Version 3";
    |        
  > |        address public owner;
    |    
    |        constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |    contract TokenERC20 {
    |        // Public variables of the token
  > |        string public name;
    |        string public symbol;
    |        uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |        // Public variables of the token
    |        string public name;
  > |        string public symbol;
    |        uint8 public decimals = 18;
    |        uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |        string public name;
    |        string public symbol;
  > |        uint8 public decimals = 18;
    |        uint256 public totalSupply;
    |    
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |        string public symbol;
    |        uint8 public decimals = 18;
  > |        uint256 public totalSupply;
    |    
    |        // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |         * @param _value the amount of money to burn
    |         */
  > |        function burn(uint256 _value) public returns (bool success) {
    |            require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |            balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |    contract CAPTOZ is owned, TokenERC20 {
    |    
  > |        uint256 public sellPrice;
    |        uint256 public buyPrice;
    |    
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(190)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |    
    |        uint256 public sellPrice;
  > |        uint256 public buyPrice;
    |    
    |        mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(191)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |    
    |        /* Internal transfer, only can be called by this contract */
  > |        function _transfer(address _from, address _to, uint _value) internal {
    |            require (_to != 0x0);                               // Prevent transfer to 0x0 address. Use burn() instead
    |            require (balanceOf[_from] >= _value);               // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(205)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |        
    |        /// @notice Get the current buy and sell prices
  > |        function getPrices() public view returns(uint256, uint256) {
    |            return (sellPrice, buyPrice);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(242)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |    
    |        /// @notice Buy tokens from contract by sending ether
  > |        function buy() payable public {
    |            require(buyPrice > 0);                            // not allowed if the buyPrice is 0
    |            uint amount = msg.value / buyPrice;               // calculates the amount
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(247)

[33mWarning[0m for MissingInputValidation in contract 'CAPTOZ':
    |        
    |    
  > |        function version() view public returns(string) {
    |            return Version;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(263)

[33mWarning[0m for TODAmount in contract 'CAPTOZ':
    |                : address(this).balance;
    |            require(address(this).balance >= amount);
  > |            target.transfer(txAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(274)

[33mWarning[0m for TODAmount in contract 'CAPTOZ':
    |            require(address(this).balance > amount * sellPrice);      // checks if the contract has enough ether to buy
    |            _transfer(msg.sender, this, amount);              // makes the transfers
  > |            msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(259)

[33mWarning[0m for TODReceiver in contract 'CAPTOZ':
    |            require(address(this).balance > amount * sellPrice);      // checks if the contract has enough ether to buy
    |            _transfer(msg.sender, this, amount);              // makes the transfers
  > |            msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(259)

[33mWarning[0m for TODReceiver in contract 'CAPTOZ':
    |                : address(this).balance;
    |            require(address(this).balance >= amount);
  > |            target.transfer(txAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(274)

[33mWarning[0m for UnhandledException in contract 'CAPTOZ':
    |            tokenRecipient spender = tokenRecipient(_spender);
    |            if (approve(_spender, _value)) {
  > |                spender.receiveApproval(msg.sender, _value, this, _extraData);
    |                return true;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(145)

[33mWarning[0m for UnhandledException in contract 'CAPTOZ':
    |            require(address(this).balance > amount * sellPrice);      // checks if the contract has enough ether to buy
    |            _transfer(msg.sender, this, amount);              // makes the transfers
  > |            msg.sender.transfer(amount * sellPrice);          // sends ether to the seller. It's important to do this last to avoid recursion attacks
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(259)

[33mWarning[0m for UnhandledException in contract 'CAPTOZ':
    |                : address(this).balance;
    |            require(address(this).balance >= amount);
  > |            target.transfer(txAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(274)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CAPTOZ':
    |            tokenRecipient spender = tokenRecipient(_spender);
    |            if (approve(_spender, _value)) {
  > |                spender.receiveApproval(msg.sender, _value, this, _extraData);
    |                return true;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CAPTOZ':
    |                : address(this).balance;
    |            require(address(this).balance >= amount);
  > |            target.transfer(txAmount);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(274)

[31mViolation[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |            require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |            balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |            totalSupply -= _value;                      // Updates totalSupply
    |            emit Burn(msg.sender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(160)

[31mViolation[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |            require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |            require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |            balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |            allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |            totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |            balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |            allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |            totalSupply -= _value;                              // Update totalSupply
    |            emit Burn(_from, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(178)

[31mViolation[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |            require(!frozenAccount[_from]);                     // Check if sender is frozen
    |            require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |            balanceOf[_from] -= _value;                         // Subtract from the sender
    |            balanceOf[_to] += _value;                           // Add the same to the recipient
    |            emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(211)

[31mViolation[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |            require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |            balanceOf[_from] -= _value;                         // Subtract from the sender
  > |            balanceOf[_to] += _value;                           // Add the same to the recipient
    |            emit Transfer(_from, _to, _value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |        function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |            require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |            allowance[_from][msg.sender] -= _value;
    |            _transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |        function approve(address _spender, uint256 _value) public
    |            returns (bool success) {
  > |            allowance[msg.sender][_spender] = _value;
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |        function burn(uint256 _value) public returns (bool success) {
    |            require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |            balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |            totalSupply -= _value;                      // Updates totalSupply
    |            emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |            require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |            balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |            allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |            totalSupply -= _value;                              // Update totalSupply
    |            emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |            require(!frozenAccount[_from]);                     // Check if sender is frozen
    |            require(!frozenAccount[_to]);                       // Check if recipient is frozen
  > |            balanceOf[_from] -= _value;                         // Subtract from the sender
    |            balanceOf[_to] += _value;                           // Add the same to the recipient
    |            emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(211)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |            require(!frozenAccount[_to]);                       // Check if recipient is frozen
    |            balanceOf[_from] -= _value;                         // Subtract from the sender
  > |            balanceOf[_to] += _value;                           // Add the same to the recipient
    |            emit Transfer(_from, _to, _value);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(212)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |    
    |        function transferOwnership(address newOwner) onlyOwner public {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |        /// @param mintedAmount the amount of tokens it will receive
    |        function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |            balanceOf[target] += mintedAmount;
    |            totalSupply += mintedAmount;
    |            emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |        function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |            balanceOf[target] += mintedAmount;
  > |            totalSupply += mintedAmount;
    |            emit Transfer(0, this, mintedAmount);
    |            emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |        /// @param freeze either to freeze it or not
    |        function freezeAccount(address target, bool freeze) onlyOwner public {
  > |            frozenAccount[target] = freeze;
    |            emit FrozenFunds(target, freeze);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(231)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |        /// @notice Allow users to buy tokens for `newBuyPrice` eth and sell tokens for `newSellPrice` eth
    |        function setPrices(uint256 newSellPrice, uint256 newBuyPrice) public onlyOwner {
  > |            sellPrice = newSellPrice;
    |            buyPrice = newBuyPrice;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'CAPTOZ':
    |        function setPrices(uint256 newSellPrice, uint256 newBuyPrice) public onlyOwner {
    |            sellPrice = newSellPrice;
  > |            buyPrice = newBuyPrice;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(238)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |    interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData)  external; }
    |    
  > |    contract TokenERC20 {
    |        // Public variables of the token
    |        string public name;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    
    |        // This creates an array with all balances
  > |        mapping (address => uint256) public balanceOf;
    |        mapping (address => mapping (address => uint256)) public allowance;
    |    
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |        // This creates an array with all balances
    |        mapping (address => uint256) public balanceOf;
  > |        mapping (address => mapping (address => uint256)) public allowance;
    |    
    |        // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |         * @param _value the amount to send
    |         */
  > |        function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |            require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |            allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |         * @param _value the max amount they can spend
    |         */
  > |        function approve(address _spender, uint256 _value) public
    |            returns (bool success) {
    |            allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |         * @param _extraData some extra information to send to the approved contract
    |         */
  > |        function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |            public
    |            returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(140)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |         * @param _value the amount of money to burn
    |         */
  > |        function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |            require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |            require(_value <= allowance[_from][msg.sender]);    // Check allowance
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(173)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    contract TokenERC20 {
    |        // Public variables of the token
  > |        string public name;
    |        string public symbol;
    |        uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |        // Public variables of the token
    |        string public name;
  > |        string public symbol;
    |        uint8 public decimals = 18;
    |        uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |        string public name;
    |        string public symbol;
  > |        uint8 public decimals = 18;
    |        uint256 public totalSupply;
    |    
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |        string public symbol;
    |        uint8 public decimals = 18;
  > |        uint256 public totalSupply;
    |    
    |        // This creates an array with all balances
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |         * Internal transfer, only can be called by this contract
    |         */
  > |        function _transfer(address _from, address _to, uint _value) internal {
    |            // Prevent transfer to 0x0 address. Use burn() instead
    |            require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |         * @param _value the amount of money to burn
    |         */
  > |        function burn(uint256 _value) public returns (bool success) {
    |            require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |            balanceOf[msg.sender] -= _value;            // Subtract from the sender
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(157)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |            tokenRecipient spender = tokenRecipient(_spender);
    |            if (approve(_spender, _value)) {
  > |                spender.receiveApproval(msg.sender, _value, this, _extraData);
    |                return true;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |            tokenRecipient spender = tokenRecipient(_spender);
    |            if (approve(_spender, _value)) {
  > |                spender.receiveApproval(msg.sender, _value, this, _extraData);
    |                return true;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(145)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |            uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |            // Subtract from the sender
  > |            balanceOf[_from] -= _value;
    |            // Add the same to the recipient
    |            balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |            balanceOf[_from] -= _value;
    |            // Add the same to the recipient
  > |            balanceOf[_to] += _value;
    |            emit Transfer(_from, _to, _value);
    |            // Asserts are used to use static analysis to find bugs in your code. They should never fail
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |            require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |            balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |            totalSupply -= _value;                      // Updates totalSupply
    |            emit Burn(msg.sender, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(160)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |            require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |            require(_value <= allowance[_from][msg.sender]);    // Check allowance
  > |            balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |            allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |            totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(176)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |            balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |            allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |            totalSupply -= _value;                              // Update totalSupply
    |            emit Burn(_from, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(178)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |            uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |            // Subtract from the sender
  > |            balanceOf[_from] -= _value;
    |            // Add the same to the recipient
    |            balanceOf[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(81)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |            require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |            allowance[_from][msg.sender] -= _value;
    |            _transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        function approve(address _spender, uint256 _value) public
    |            returns (bool success) {
  > |            allowance[msg.sender][_spender] = _value;
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        function burn(uint256 _value) public returns (bool success) {
    |            require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |            balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |            totalSupply -= _value;                      // Updates totalSupply
    |            emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |            require(_value <= allowance[_from][msg.sender]);    // Check allowance
    |            balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |            allowance[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |            totalSupply -= _value;                              // Update totalSupply
    |            emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(177)

[33mWarning[0m for LockedEther in contract 'owned':
    |    pragma solidity ^0.4.24;
    |    
  > |    contract owned {
    |        string Version = "Version 3";
    |        
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |        }
    |    
  > |        function transferOwnership(address newOwner) onlyOwner public {
    |            owner = newOwner;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |        string Version = "Version 3";
    |        
  > |        address public owner;
    |    
    |        constructor() public {
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    
    |        function transferOwnership(address newOwner) onlyOwner public {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x08a41ce962d328418f21ccb39d49df5ea974c8ac.sol(28)


