Processing contract: /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol:AdvancedTokenEIC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol:TokenEIC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol:tokenRecipient
[33mWarning[0m for DAOConstantGas in contract 'AdvancedTokenEIC':
    |        require(this.balance >= amount * sellPrice); 
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(161)

[33mWarning[0m for LockedEther in contract 'AdvancedTokenEIC':
    |}
    |
  > |contract AdvancedTokenEIC is owned, TokenEIC {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    event FrozenFunds(address target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(130)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    }
    |
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(137)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    }
    |
  > |    function approvedAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    }
    |
  > |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |
    |contract owned {
  > |    address public owner;
    |    function owned() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |contract TokenEIC {
    |    /* Public variables of the token */
  > |    string public standard = "Token 0.1";
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    /* Public variables of the token */
    |    string public standard = "Token 0.1";
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    string public standard = "Token 0.1";
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |contract AdvancedTokenEIC is owned, TokenEIC {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(103)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    ) TokenEIC(initialSupply, tokenName, tokenSymbol) public {}
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);
    |        require (balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(115)

[33mWarning[0m for MissingInputValidation in contract 'AdvancedTokenEIC':
    |    }
    |
  > |    function buy() payable public {
    |        uint amount = msg.value / buyPrice;
    |        _transfer(this, msg.sender, amount);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(152)

[33mWarning[0m for TODAmount in contract 'AdvancedTokenEIC':
    |        require(this.balance >= amount * sellPrice); 
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(161)

[33mWarning[0m for TODReceiver in contract 'AdvancedTokenEIC':
    |        require(this.balance >= amount * sellPrice); 
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(161)

[33mWarning[0m for UnhandledException in contract 'AdvancedTokenEIC':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(76)

[33mWarning[0m for UnhandledException in contract 'AdvancedTokenEIC':
    |        require(this.balance >= amount * sellPrice); 
    |        _transfer(msg.sender, this, amount);
  > |        msg.sender.transfer(amount * sellPrice);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AdvancedTokenEIC':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value; 
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |        balanceOf[_from] -= _value; 
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]); 
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |        require(!frozenAccount[_to]); 
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value; 
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]); 
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |        require(!frozenAccount[_to]); 
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |    }
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(13)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |
    |    function approvedAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
  > |        sellPrice = newSellPrice;
    |        buyPrice = newBuyPrice;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'AdvancedTokenEIC':
    |    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
    |        sellPrice = newSellPrice;
  > |        buyPrice = newBuyPrice;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(149)

[33mWarning[0m for LockedEther in contract 'TokenEIC':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenEIC {
    |    /* Public variables of the token */
    |    string public standard = "Token 0.1";
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'TokenEIC':
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'TokenEIC':
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'TokenEIC':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'TokenEIC':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'TokenEIC':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(71)

[31mViolation[0m for MissingInputValidation in contract 'TokenEIC':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(89)

[33mWarning[0m for MissingInputValidation in contract 'TokenEIC':
    |contract TokenEIC {
    |    /* Public variables of the token */
  > |    string public standard = "Token 0.1";
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'TokenEIC':
    |    /* Public variables of the token */
    |    string public standard = "Token 0.1";
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TokenEIC':
    |    string public standard = "Token 0.1";
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'TokenEIC':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'TokenEIC':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenEIC':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'TokenEIC':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(81)

[33mWarning[0m for UnhandledException in contract 'TokenEIC':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(76)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenEIC':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenEIC':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenEIC':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenEIC':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenEIC':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value; 
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenEIC':
    |        balanceOf[_from] -= _value; 
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEIC':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEIC':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEIC':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEIC':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenEIC':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value; 
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(93)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |        _;
    |    }
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |    function owned() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |    }
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x58890fab4ef98270b0b59eb8a4d858e7750e8bcf.sol(13)


