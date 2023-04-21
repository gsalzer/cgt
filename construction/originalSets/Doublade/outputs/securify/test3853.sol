Processing contract: /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol:Martcoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Martcoin':
    |}
    |
  > |contract Martcoin is owned, TokenERC20 {
    |    string public name = "Martcoin";
    |    string public symbol = "MART";
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'Martcoin':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'Martcoin':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'Martcoin':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'Martcoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'Martcoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'Martcoin':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'Martcoin':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(98)

[31mViolation[0m for MissingInputValidation in contract 'Martcoin':
    |    uint public INITIAL_SUPPLY = 29000000;
    |
  > |    mapping (address => bool) public frozenAccount;
    |
    |    event FrozenFunds(address target, bool frozen);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'Martcoin':
    |    }
    |
  > |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(136)

[31mViolation[0m for MissingInputValidation in contract 'Martcoin':
    |    }
    |
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'Martcoin':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Martcoin':
    |    uint8 public decimals = 18;
    |
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Martcoin':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'Martcoin':
    |
    |contract Martcoin is owned, TokenERC20 {
  > |    string public name = "Martcoin";
    |    string public symbol = "MART";
    |    uint public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'Martcoin':
    |contract Martcoin is owned, TokenERC20 {
    |    string public name = "Martcoin";
  > |    string public symbol = "MART";
    |    uint public decimals = 18;
    |    uint public INITIAL_SUPPLY = 29000000;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'Martcoin':
    |    string public name = "Martcoin";
    |    string public symbol = "MART";
  > |    uint public decimals = 18;
    |    uint public INITIAL_SUPPLY = 29000000;
    |
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'Martcoin':
    |    string public symbol = "MART";
    |    uint public decimals = 18;
  > |    uint public INITIAL_SUPPLY = 29000000;
    |
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'Martcoin':
    |    ) TokenERC20(initialSupply, tokenName, tokenSymbol) public {}
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require (_to != 0x0);
    |        require (balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(125)

[33mWarning[0m for UnhandledException in contract 'Martcoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(85)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Martcoin':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'Martcoin':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'Martcoin':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'Martcoin':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'Martcoin':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'Martcoin':
    |        require(!frozenAccount[_to]);
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Martcoin':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Martcoin':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'Martcoin':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'Martcoin':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Martcoin':
    |        require(!frozenAccount[_from]);
    |        require(!frozenAccount[_to]);
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'Martcoin':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(21)

[33mWarning[0m for UnrestrictedWrite in contract 'Martcoin':
    |
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
  > |        balanceOf[target] += mintedAmount;
    |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'Martcoin':
    |    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
    |        balanceOf[target] += mintedAmount;
  > |        totalSupply += mintedAmount;
    |        Transfer(0, this, mintedAmount);
    |        Transfer(this, target, mintedAmount);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'Martcoin':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(144)

[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract TokenERC20 {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(74)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        public
    |        returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(98)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |contract TokenERC20 {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    uint8 public decimals = 18;
    |
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(90)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(85)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(57)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(101)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(102)

[33mWarning[0m for LockedEther in contract 'owned':
    |pragma solidity ^0.4.18;
    |
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(8)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(9)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfdcc07ab60660de533b5ad26e1457b565a9d59bd.sol(21)


