Processing contract: /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol:MyToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'MyToken':
    |contract tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData); }
    |
  > |contract MyToken {
    |    string public standard = 'Token 0.1';
    |    string public name = 'One Thousand Coin';
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    uint256 public totalSupply = 100000000000;
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData)
    |        returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    }        
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (_to == 0x0) throw;
    |        if (balanceOf[_from] < _value) throw;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'MyToken':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) returns (bool success) {
    |        if (balanceOf[_from] < _value) throw;
    |        if (_value > allowance[_from][msg.sender]) throw;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |
    |contract MyToken {
  > |    string public standard = 'Token 0.1';
    |    string public name = 'One Thousand Coin';
    |    string public symbol = '1000';
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |contract MyToken {
    |    string public standard = 'Token 0.1';
  > |    string public name = 'One Thousand Coin';
    |    string public symbol = '1000';
    |    uint8 public decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    string public standard = 'Token 0.1';
    |    string public name = 'One Thousand Coin';
  > |    string public symbol = '1000';
    |    uint8 public decimals = 8;
    |    uint256 public totalSupply = 100000000000;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    string public name = 'One Thousand Coin';
    |    string public symbol = '1000';
  > |    uint8 public decimals = 8;
    |    uint256 public totalSupply = 100000000000;
    |
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    string public symbol = '1000';
    |    uint8 public decimals = 8;
  > |    uint256 public totalSupply = 100000000000;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) {
    |        if (_to == 0x0) throw;
    |        if (balanceOf[msg.sender] < _value) throw;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'MyToken':
    |    }
    |
  > |    function burn(uint256 _value) returns (bool success) {
    |        if (balanceOf[msg.sender] < _value) throw;
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(62)

[33mWarning[0m for UnhandledException in contract 'MyToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(45)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(45)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;
    |        balanceOf[msg.sender] -= _value;
  > |        balanceOf[_to] += _value;          
    |        Transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(31)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;
    |        if (_value > allowance[_from][msg.sender]) throw;
  > |        balanceOf[_from] -= _value;   
    |        balanceOf[_to] += _value;
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(55)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        if (_value > allowance[_from][msg.sender]) throw;
    |        balanceOf[_from] -= _value;   
  > |        balanceOf[_to] += _value;
    |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        if (balanceOf[msg.sender] < _value) throw;
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        if (balanceOf[_from] < _value) throw;
    |        if (_value > allowance[_from][msg.sender]) throw;
  > |        balanceOf[_from] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'MyToken':
    |        if (_value > allowance[_from][msg.sender]) throw;
    |        balanceOf[_from] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        if (balanceOf[msg.sender] < _value) throw;
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;
  > |        balanceOf[msg.sender] -= _value;
    |        balanceOf[_to] += _value;          
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |        balanceOf[_from] -= _value;   
    |        balanceOf[_to] += _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'MyToken':
    |    function burn(uint256 _value) returns (bool success) {
    |        if (balanceOf[msg.sender] < _value) throw;
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x23f91a54af690e9d2b20c043827ba66648826c28.sol(64)


