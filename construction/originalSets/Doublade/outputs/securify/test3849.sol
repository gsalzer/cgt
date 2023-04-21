Processing contract: /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol:ERC20Basic
Processing contract: /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol:LoveAirCoffee
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'LoveAirCoffee':
    |}
    |
  > |contract LoveAirCoffee is ERC20 {
    |    
    |    address owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |    
    |    // Public variables of the token
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    }
    |    
  > |    function startBuyingTokens(bool _transferTokenNow,uint256 _minEther,uint256 _maxEther) public onlyOwner {
    |        require(state == State.Disabled);
    |        transferTokenNow = _transferTokenNow;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    }
    |    
  > |    function setFrozenCoin(bool _value) public onlyOwner {
    |        frozenCoin = _value;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |
    |    // NewBuyPrice Price users can buy from the contract
  > |    function setPrices(uint256 newBuyPrice) onlyOwner public {
    |        tokensPerOneEther = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    }
    |    
  > |    function allowance(address _owner, address _spender) constant public returns (uint256) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    }
    |    
  > |    function balanceOf(address _owner) constant public returns (uint256) {
    |        return balanceOf[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |
    |    // Transfer tokens from other address
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(!frozenCoin);
    |        require(_value <= allowed[_from][msg.sender]);     // Check allowance
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |
    |    //Allows `_spender` to spend no more than `_value` tokens in your behalf
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(140)

[31mViolation[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |
    |    //Destroy tokens from other account
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(!frozenCoin);
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(158)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    
    |    // Public variables of the token
  > |    string public name="Love Air Coffee";
    |    string public symbol="LAC";
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    // Public variables of the token
    |    string public name="Love Air Coffee";
  > |    string public symbol="LAC";
    |    uint8 public decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    string public name="Love Air Coffee";
    |    string public symbol="LAC";
  > |    uint8 public decimals = 18;
    |
    |    uint256 public totalSupply; 
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    uint8 public decimals = 18;
    |
  > |    uint256 public totalSupply; 
    |    
    |    uint256 public tokensPerOneEther;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    uint256 public totalSupply; 
    |    
  > |    uint256 public tokensPerOneEther;
    |    
    |    bool public transferTokenNow=true;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    uint256 public tokensPerOneEther;
    |    
  > |    bool public transferTokenNow=true;
    |    
    |    bool public frozenCoin=true;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    bool public transferTokenNow=true;
    |    
  > |    bool public frozenCoin=true;
    |    
    |    uint256 public minEther;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    bool public frozenCoin=true;
    |    
  > |    uint256 public minEther;
    |    uint256 public maxEther;
    |
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    
    |    uint256 public minEther;
  > |    uint256 public maxEther;
    |
    |    enum State { Disabled, Enabled }
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    enum State { Disabled, Enabled }
    |    
  > |    State public state = State.Disabled;
    |
    |    // This generates a public event on the blockchain that will notify clients
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    }
    |    
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
    |            owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |    }
    |    
  > |    function stopBuyingTokens() public onlyOwner {
    |        require(state == State.Enabled);
    |        state = State.Disabled;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |
    |    /* Internal transfer, only can be called by this contract */
  > |    function _transfer(address _from, address _to, uint256 _value) internal {
    |        require (_to != address(0x0));                          // Prevent transfer to 0x0 address. Use burn() instead
    |        require (balanceOf[_from] >= _value);                   // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(114)

[33mWarning[0m for MissingInputValidation in contract 'LoveAirCoffee':
    |
    |    //Destroy tokens
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(!frozenCoin);
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(148)

[31mViolation[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        require (balanceOf[_from] >= _value);                   // Check if the sender has enough
    |        require (balanceOf[_to] + _value >= balanceOf[_to]);    // Check for overflows
  > |        balanceOf[_from] -= _value;                             // Subtract from the sender
    |        balanceOf[_to] += _value;                               // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        require (balanceOf[_to] + _value >= balanceOf[_to]);    // Check for overflows
    |        balanceOf[_from] -= _value;                             // Subtract from the sender
  > |        balanceOf[_to] += _value;                               // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(119)

[31mViolation[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
    |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
  > |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(152)

[31mViolation[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        require(balanceOf[_from] >= _value);                // Check if the targeted balance is enough
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
  > |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(162)

[31mViolation[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
    |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
  > |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(164)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        require (balanceOf[_from] >= _value);                   // Check if the sender has enough
    |        require (balanceOf[_to] + _value >= balanceOf[_to]);    // Check for overflows
  > |        balanceOf[_from] -= _value;                             // Subtract from the sender
    |        balanceOf[_to] += _value;                               // Add the same to the recipient
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        require(!frozenCoin);
    |        require(_value <= allowed[_from][msg.sender]);     // Check allowance
  > |        allowed[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        require(!frozenCoin);
    |        require(balanceOf[msg.sender] >= _value);   // Check if the sender has enough
  > |        balanceOf[msg.sender] -= _value;            // Subtract from the sender
    |        totalSupply -= _value;                      // Updates totalSupply
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(151)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        require(_value <= allowed[_from][msg.sender]);    // Check allowance
    |        balanceOf[_from] -= _value;                         // Subtract from the targeted balance
  > |        allowed[_from][msg.sender] -= _value;             // Subtract from the sender's allowance
    |        totalSupply -= _value;                              // Update totalSupply
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |    function transferOwnership(address newOwner) onlyOwner public {
    |        if (newOwner != address(0)) {
  > |            owner = newOwner;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |    function startBuyingTokens(bool _transferTokenNow,uint256 _minEther,uint256 _maxEther) public onlyOwner {
    |        require(state == State.Disabled);
  > |        transferTokenNow = _transferTokenNow;
    |        minEther = _minEther * 10 ** uint256(decimals);
    |        maxEther = _maxEther * 10 ** uint256(decimals);
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        require(state == State.Disabled);
    |        transferTokenNow = _transferTokenNow;
  > |        minEther = _minEther * 10 ** uint256(decimals);
    |        maxEther = _maxEther * 10 ** uint256(decimals);
    |        state = State.Enabled;
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        transferTokenNow = _transferTokenNow;
    |        minEther = _minEther * 10 ** uint256(decimals);
  > |        maxEther = _maxEther * 10 ** uint256(decimals);
    |        state = State.Enabled;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |        minEther = _minEther * 10 ** uint256(decimals);
    |        maxEther = _maxEther * 10 ** uint256(decimals);
  > |        state = State.Enabled;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |    function stopBuyingTokens() public onlyOwner {
    |        require(state == State.Enabled);
  > |        state = State.Disabled;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |    
    |    function setFrozenCoin(bool _value) public onlyOwner {
  > |        frozenCoin = _value;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'LoveAirCoffee':
    |    // NewBuyPrice Price users can buy from the contract
    |    function setPrices(uint256 newBuyPrice) onlyOwner public {
  > |        tokensPerOneEther = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfd7cbc2f241b885700585f40558b85b366c99b82.sol(89)


