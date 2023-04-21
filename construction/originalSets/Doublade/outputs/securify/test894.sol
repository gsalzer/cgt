Processing contract: /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol:MyAdvancedToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'MyAdvancedToken':
    |}
    |
  > |contract MyAdvancedToken is owned, TokenERC20 {
    |
    |    uint256 public sellPrice;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    uint256 public buyPrice;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    event FrozenFunds(address target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |contract TokenERC20 {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |contract TokenERC20 {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |contract MyAdvancedToken is owned, TokenERC20 {
    |
  > |    uint256 public sellPrice;
    |    uint256 public buyPrice;
    |
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(101)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |
    |    uint256 public sellPrice;
  > |    uint256 public buyPrice;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'MyAdvancedToken':
    |    ) TokenERC20(initialSupply, tokenName, tokenSymbol) public {}
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);
    |        require (balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(114)

[33mWarning[0m for UnhandledException in contract 'MyAdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(75)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyAdvancedToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_to]);
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        emit Transfer(0, this, mintedAmount);
    |        emit Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'MyAdvancedToken':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(133)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) external; }
    |
  > |contract TokenERC20 {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(70)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(88)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |contract TokenERC20 {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(80)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(75)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(91)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(92)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.16;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0x38f8f98738b2d64f3ffb0fda7a60031f45a8c997.sol(4)


