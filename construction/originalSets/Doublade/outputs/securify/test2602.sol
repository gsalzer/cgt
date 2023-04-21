Processing contract: /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol:RoscaERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'RoscaERC20':
    |}
    |        
  > |contract RoscaERC20 is owned {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'RoscaERC20':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'RoscaERC20':
    |    uint256 public totalSupply; 
    |
  > |    mapping (address => uint256) public balanceOf;  // 
    |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public frozenAccount;
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'RoscaERC20':
    |
    |    mapping (address => uint256) public balanceOf;  // 
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |    mapping (address => bool) public frozenAccount;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'RoscaERC20':
    |    mapping (address => uint256) public balanceOf;  // 
    |    mapping (address => mapping (address => uint256)) public allowance;
  > |    mapping (address => bool) public frozenAccount;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'RoscaERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'RoscaERC20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(69)

[31mViolation[0m for MissingInputValidation in contract 'RoscaERC20':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'RoscaERC20':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'RoscaERC20':
    |
    |    //Freeze target acocunt || not allow received or transfer
  > |    function freezeAccount(address target, bool freeze) public onlyOwner {
    |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'RoscaERC20':
    |    
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'RoscaERC20':
    |        
    |contract RoscaERC20 is owned {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'RoscaERC20':
    |contract RoscaERC20 is owned {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
    |    uint256 public totalSupply; 
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'RoscaERC20':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;  // 18 是建议的默认值
    |    uint256 public totalSupply; 
    |
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'RoscaERC20':
    |    string public symbol;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
  > |    uint256 public totalSupply; 
    |
    |    mapping (address => uint256) public balanceOf;  // 
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'RoscaERC20':
    |
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'RoscaERC20':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(83)

[33mWarning[0m for UnhandledException in contract 'RoscaERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(78)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'RoscaERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |        require(!frozenAccount[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(94)

[31mViolation[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |        require(!frozenAccount[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(95)

[33mWarning[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'RoscaERC20':
    |    //Freeze target acocunt || not allow received or transfer
    |    function freezeAccount(address target, bool freeze) public onlyOwner {
  > |        frozenAccount[target] = freeze;
    |        FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(103)

[33mWarning[0m for LockedEther in contract 'owned':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |    
  > |contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnership(address newOwner) onlyOwner public {
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    |    
    |contract owned {
  > |    address public owner;
    |
    |    function owned() public {
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(6)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnership(address newOwner) onlyOwner public {
  > |        owner = newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xaa350dc845c91e9286c8aaaccd7602c86348a446.sol(18)


