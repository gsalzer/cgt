Processing contract: /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol:PPToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'PPToken':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }
    |
  > |contract PPToken {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'PPToken':
    |    uint256 public totalSupply;
    |
  > |    mapping (address => uint256) public balanceOf;  // 
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'PPToken':
    |
    |    mapping (address => uint256) public balanceOf;  // 
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'PPToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'PPToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(49)

[31mViolation[0m for MissingInputValidation in contract 'PPToken':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'PPToken':
    |    }
    |
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'PPToken':
    |
    |contract PPToken {
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'PPToken':
    |contract PPToken {
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'PPToken':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals = 18;  // 18 是建议的默认值
    |    uint256 public totalSupply;
    |
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'PPToken':
    |    string public symbol;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
  > |    uint256 public totalSupply;
    |
    |    mapping (address => uint256) public balanceOf;  // 
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'PPToken':
    |
    |
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);
    |        require(balanceOf[_from] >= _value);
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'PPToken':
    |    }
    |
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(63)

[33mWarning[0m for UnhandledException in contract 'PPToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(58)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PPToken':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(58)

[31mViolation[0m for UnrestrictedWrite in contract 'PPToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(32)

[31mViolation[0m for UnrestrictedWrite in contract 'PPToken':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(33)

[31mViolation[0m for UnrestrictedWrite in contract 'PPToken':
    |        require(balanceOf[msg.sender] >= _value);
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'PPToken':
    |        require(balanceOf[_from] >= _value);
    |        require(_value <= allowance[_from][msg.sender]);
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'PPToken':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'PPToken':
    |        require(balanceOf[_to] + _value > balanceOf[_to]);
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'PPToken':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // Check allowance
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'PPToken':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'PPToken':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'PPToken':
    |        require(_value <= allowance[_from][msg.sender]);
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x6567751ec2b2d2566456bea3fd3090045cb0c865.sol(75)


