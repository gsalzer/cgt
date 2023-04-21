Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol:Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol:TokenBase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'Owned':
    |
    |
  > |contract Owned {
    |    address public owner;
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |
    |contract Owned {
  > |    address public owner;
    |    constructor() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(16)

[33mWarning[0m for LockedEther in contract 'Token':
    |
    |
  > |contract Token is TokenBase {
    |    uint public initialSupply = 100*10**26;
    |    uint public reserveSupply = 0;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    uint public foundingTime;
    |
  > |    mapping (address => uint) public balanceOf;
    |    mapping (address => mapping (address => uint)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |
    |    mapping (address => uint) public balanceOf;
  > |    mapping (address => mapping (address => uint)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function approve(address _spender, uint _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function approveAndCall(address _spender, uint _value, bytes _extraData) public returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |contract Owned {
  > |    address public owner;
    |    constructor() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |contract TokenBase is Owned {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract TokenBase is Owned {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint public totalSupply;
    |    uint public tokenUnit = 10 ** uint(decimals);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint public totalSupply;
    |    uint public tokenUnit = 10 ** uint(decimals);
    |    uint public kUnit = 1000 * tokenUnit;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint8 public decimals = 18;
    |    uint public totalSupply;
  > |    uint public tokenUnit = 10 ** uint(decimals);
    |    uint public kUnit = 1000 * tokenUnit;
    |    uint public foundingTime;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint public totalSupply;
    |    uint public tokenUnit = 10 ** uint(decimals);
  > |    uint public kUnit = 1000 * tokenUnit;
    |    uint public foundingTime;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    uint public tokenUnit = 10 ** uint(decimals);
    |    uint public kUnit = 1000 * tokenUnit;
  > |    uint public foundingTime;
    |
    |    mapping (address => uint) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |contract Token is TokenBase {
  > |    uint public initialSupply = 100*10**26;
    |    uint public reserveSupply = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |contract Token is TokenBase {
    |    uint public initialSupply = 100*10**26;
  > |    uint public reserveSupply = 0;
    |
    |    constructor() public {
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |    }
    |
  > |    function releaseReserve(uint value) onlyOwner public {
    |        require(reserveSupply >= value);
    |        balanceOf[owner] += value;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(92)

[33mWarning[0m for UnhandledException in contract 'Token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(72)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Token':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'Token':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function approve(address _spender, uint _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(16)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |    function releaseReserve(uint value) onlyOwner public {
    |        require(reserveSupply >= value);
  > |        balanceOf[owner] += value;
    |        totalSupply += value;
    |        reserveSupply -= value;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        require(reserveSupply >= value);
    |        balanceOf[owner] += value;
  > |        totalSupply += value;
    |        reserveSupply -= value;
    |        emit Transfer(0, this, value);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'Token':
    |        balanceOf[owner] += value;
    |        totalSupply += value;
  > |        reserveSupply -= value;
    |        emit Transfer(0, this, value);
    |        emit Transfer(this, owner, value);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(96)

[33mWarning[0m for LockedEther in contract 'TokenBase':
    |
    |
  > |contract TokenBase is Owned {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'TokenBase':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'TokenBase':
    |    uint public foundingTime;
    |
  > |    mapping (address => uint) public balanceOf;
    |    mapping (address => mapping (address => uint)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'TokenBase':
    |
    |    mapping (address => uint) public balanceOf;
  > |    mapping (address => mapping (address => uint)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'TokenBase':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'TokenBase':
    |    }
    |
  > |    function approve(address _spender, uint _value) public returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'TokenBase':
    |    }
    |
  > |    function approveAndCall(address _spender, uint _value, bytes _extraData) public returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'TokenBase':
    |
    |contract Owned {
  > |    address public owner;
    |    constructor() public {
    |        owner = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'TokenBase':
    |
    |contract TokenBase is Owned {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'TokenBase':
    |contract TokenBase is Owned {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;
    |    uint public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'TokenBase':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;
    |    uint public totalSupply;
    |    uint public tokenUnit = 10 ** uint(decimals);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'TokenBase':
    |    string public symbol;
    |    uint8 public decimals = 18;
  > |    uint public totalSupply;
    |    uint public tokenUnit = 10 ** uint(decimals);
    |    uint public kUnit = 1000 * tokenUnit;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'TokenBase':
    |    uint8 public decimals = 18;
    |    uint public totalSupply;
  > |    uint public tokenUnit = 10 ** uint(decimals);
    |    uint public kUnit = 1000 * tokenUnit;
    |    uint public foundingTime;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'TokenBase':
    |    uint public totalSupply;
    |    uint public tokenUnit = 10 ** uint(decimals);
  > |    uint public kUnit = 1000 * tokenUnit;
    |    uint public foundingTime;
    |
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'TokenBase':
    |    uint public tokenUnit = 10 ** uint(decimals);
    |    uint public kUnit = 1000 * tokenUnit;
  > |    uint public foundingTime;
    |
    |    mapping (address => uint) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'TokenBase':
    |    }
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(42)

[33mWarning[0m for UnhandledException in contract 'TokenBase':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(72)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenBase':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(72)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenBase':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(47)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenBase':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |    function transferFrom(address _from, address _to, uint _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |
    |    function approve(address _spender, uint _value) public returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenBase':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf4c3e6201dda2aa221ac2fa9c4fe18f4e1aa75b6.sol(16)


