Processing contract: /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol:BOB
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'BOB':
    |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(114)

[33mWarning[0m for LockedEther in contract 'BOB':
    |  }
    |}
  > |contract BOB is SafeMath{
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'BOB':
    |	address public owner;
    |
  > |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(42)

[31mViolation[0m for MissingInputValidation in contract 'BOB':
    |
    |    mapping (address => uint256) public balanceOf;
  > |	mapping (address => uint256) public freezeOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'BOB':
    |    mapping (address => uint256) public balanceOf;
    |	mapping (address => uint256) public freezeOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    | 
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'BOB':
    |    }
    |
  > |    function approve(address _spender, uint256 _value)
    |        returns (bool success) {
    |		if (_value <= 0) throw; 
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'BOB':
    |       
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (_to == 0x0) throw;
    |		if (_value <= 0) throw; 
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(81)

[31mViolation[0m for MissingInputValidation in contract 'BOB':
    |    }
    |	
  > |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
    |		owner.transfer(amount);
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'BOB':
    |  }
    |
  > |  function safeSub(uint256 a, uint256 b) internal returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'BOB':
    |  }
    |
  > |  function safeAdd(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'BOB':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) {
    |      throw;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'BOB':
    |}
    |contract BOB is SafeMath{
  > |    string public name;
    |    string public symbol;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'BOB':
    |contract BOB is SafeMath{
    |    string public name;
  > |    string public symbol;
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'BOB':
    |    string public name;
    |    string public symbol;
  > |    uint8 public decimals;
    |    uint256 public totalSupply;
    |	address public owner;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'BOB':
    |    string public symbol;
    |    uint8 public decimals;
  > |    uint256 public totalSupply;
    |	address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'BOB':
    |    uint8 public decimals;
    |    uint256 public totalSupply;
  > |	address public owner;
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(40)

[33mWarning[0m for TODAmount in contract 'BOB':
    |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(114)

[33mWarning[0m for TODReceiver in contract 'BOB':
    |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(114)

[33mWarning[0m for UnhandledException in contract 'BOB':
    |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BOB':
    |	function withdrawEther(uint256 amount) {
    |		if(msg.sender != owner)throw;
  > |		owner.transfer(amount);
    |	}
    |	
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'BOB':
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;
    |        if (_value > allowance[_from][msg.sender]) throw;
  > |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'BOB':
    |        if (_value > allowance[_from][msg.sender]) throw;
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);
    |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'BOB':
    |        if (balanceOf[msg.sender] < _value) throw;
    |        if (balanceOf[_to] + _value < balanceOf[_to]) throw;
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'BOB':
    |        returns (bool success) {
    |		if (_value <= 0) throw; 
  > |        allowance[msg.sender][_spender] = _value;
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'BOB':
    |        balanceOf[_from] = SafeMath.safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = SafeMath.safeAdd(balanceOf[_to], _value);
  > |        allowance[_from][msg.sender] = SafeMath.safeSub(allowance[_from][msg.sender], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'BOB':
    |        if (balanceOf[msg.sender] < _value) throw;
    |		if (_value <= 0) throw; 
  > |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);
    |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);
    |        Freeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'BOB':
    |		if (_value <= 0) throw; 
    |        balanceOf[msg.sender] = SafeMath.safeSub(balanceOf[msg.sender], _value);
  > |        freezeOf[msg.sender] = SafeMath.safeAdd(freezeOf[msg.sender], _value);
    |        Freeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'BOB':
    |        if (freezeOf[msg.sender] < _value) throw;
    |		if (_value <= 0) throw; 
  > |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);
    |		balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);
    |        Unfreeze(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'BOB':
    |		if (_value <= 0) throw; 
    |        freezeOf[msg.sender] = SafeMath.safeSub(freezeOf[msg.sender], _value);
  > |		balanceOf[msg.sender] = SafeMath.safeAdd(balanceOf[msg.sender], _value);
    |        Unfreeze(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(107)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |contract SafeMath {
    |  function safeMul(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x233d6c2361d966464fe4c516396cd12f5802204f.sol(4)


