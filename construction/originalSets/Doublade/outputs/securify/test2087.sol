Processing contract: /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol:GoodTimeCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'GoodTimeCoin':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract GoodTimeCoin {
    |   
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |    uint256 public totalSupply;
    |    
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |    
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    
    |    event Transfer(address indexed from, address indexed to, uint256 value);    
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |    }
    |    
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |    }
    |   
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |    }
    |    
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |    }
    |   
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(93)

[33mWarning[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |contract GoodTimeCoin {
    |   
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |   
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |    uint8 public decimals = 18;
    |    
  > |    uint256 public totalSupply;
    |    
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |    }
    |    
  > |    function _transfer(address _from, address _to, uint _value) internal {        
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);       
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'GoodTimeCoin':
    |    }
    |   
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(85)

[33mWarning[0m for UnhandledException in contract 'GoodTimeCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(80)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'GoodTimeCoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'GoodTimeCoin':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);       
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];        
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);       
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'GoodTimeCoin':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];        
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);       
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'GoodTimeCoin':
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  > |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'GoodTimeCoin':
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  > |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'GoodTimeCoin':
    |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
  > |        totalSupply -= _value;                              
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodTimeCoin':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);       
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];        
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);       
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodTimeCoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodTimeCoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodTimeCoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
  > |        balanceOf[msg.sender] -= _value;            
    |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'GoodTimeCoin':
    |        require(_value <= allowance[_from][msg.sender]);    
    |        balanceOf[_from] -= _value;                         
  > |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(97)

[33mWarning[0m for DAOConstantGas in contract 'StandardToken':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);              
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(155)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is owned, GoodTimeCoin {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    uint256 public totalSupply;
    |    
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    
    |    event Transfer(address indexed from, address indexed to, uint256 value);    
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |   
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |   
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(93)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |    
    |    event FrozenFunds(address target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |   
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |   
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract GoodTimeCoin {
    |   
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |   
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    uint8 public decimals = 18;
    |    
  > |    uint256 public totalSupply;
    |    
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |   
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is owned, GoodTimeCoin {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(106)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    ) GoodTimeCoin(initialSupply, tokenName, tokenSymbol) public {}
    |    
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);                               
    |        require (balanceOf[_from] >= _value);               
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |  
  > |    function buy() payable public {
    |        uint amount = msg.value / buyPrice;               
    |        _transfer(this, msg.sender, amount);              
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(147)

[33mWarning[0m for TODAmount in contract 'StandardToken':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);              
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(155)

[33mWarning[0m for TODReceiver in contract 'StandardToken':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);              
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(155)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(80)

[33mWarning[0m for UnhandledException in contract 'StandardToken':
    |        require(this.balance >= amount * sellPrice);      
    |        _transfer(msg.sender, this, amount);              
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'StandardToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balanceOf[msg.sender] >= _value);   
    |        balanceOf[msg.sender] -= _value;            
  > |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balanceOf[_from] >= _value);                
    |        require(_value <= allowance[_from][msg.sender]);    
  > |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balanceOf[_from] -= _value;                         
    |        allowance[_from][msg.sender] -= _value;             
  > |        totalSupply -= _value;                              
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(!frozenAccount[_from]);                     
    |        require(!frozenAccount[_to]);                       
  > |        balanceOf[_from] -= _value;                         
    |        balanceOf[_to] += _value;                           
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(125)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(!frozenAccount[_to]);                       
    |        balanceOf[_from] -= _value;                         
  > |        balanceOf[_to] += _value;                           
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   
  > |        balanceOf[msg.sender] -= _value;            
    |        totalSupply -= _value;                      
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(_value <= allowance[_from][msg.sender]);    
    |        balanceOf[_from] -= _value;                         
  > |        allowance[_from][msg.sender] -= _value;             
    |        totalSupply -= _value;                              
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(!frozenAccount[_from]);                     
    |        require(!frozenAccount[_to]);                       
  > |        balanceOf[_from] -= _value;                         
    |        balanceOf[_to] += _value;                           
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(!frozenAccount[_to]);                       
    |        balanceOf[_from] -= _value;                         
  > |        balanceOf[_to] += _value;                           
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |   
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |  
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(144)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x88765d79c5d26be5544ee66ed32e85000cc96753.sol(16)


