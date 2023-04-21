Processing contract: /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol:jiangguilong1
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'jiangguilong1':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract jiangguilong1 {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'jiangguilong1':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;  // 
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'jiangguilong1':
    |
    |    mapping (address => uint256) public balanceOf;  // 
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'jiangguilong1':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'jiangguilong1':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'jiangguilong1':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'jiangguilong1':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'jiangguilong1':
    |
    |contract jiangguilong1 {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'jiangguilong1':
    |contract jiangguilong1 {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'jiangguilong1':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;  // 18 是建议的默认值
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'jiangguilong1':
    |    string public symbol;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;  // 
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'jiangguilong1':
    |
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'jiangguilong1':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(63)

[33mWarning[0m for UnhandledException in contract 'jiangguilong1':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(58)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'jiangguilong1':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'jiangguilong1':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'jiangguilong1':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'jiangguilong1':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'jiangguilong1':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'jiangguilong1':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'jiangguilong1':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'jiangguilong1':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'jiangguilong1':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'jiangguilong1':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'jiangguilong1':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x51257ce076e3b4a2c4de2763e442ea2bf2c61e2c.sol(75)


