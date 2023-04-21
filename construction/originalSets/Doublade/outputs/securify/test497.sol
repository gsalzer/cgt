Processing contract: /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol:EIP20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol:EIP20Interface
[33mWarning[0m for LockedEther in contract 'EIP20':
    |}
    |
  > |contract EIP20 is EIP20Interface {
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'EIP20':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |    mapping (address => uint256) public admins;
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'EIP20':
    |
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |    mapping (address => uint256) public admins;
    |    address private owner;
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'EIP20':
    |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
  > |    mapping (address => uint256) public admins;
    |    address private owner;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(28)

[31mViolation[0m for MissingInputValidation in contract 'EIP20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |
    |        require(transfers != 0);
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'EIP20':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner]; 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'EIP20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'EIP20':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }   
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'EIP20':
    |    }
    |    
  > |    function transfersOnOff(uint8 _value) public {
    |        require(msg.sender == owner);
    |        
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'EIP20':
    |    }
    |    
  > |    function admin(address _admin, uint8 _value) public {
    |        require(msg.sender == owner);
    |        
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'EIP20':
    |
    |contract EIP20Interface {
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) public view returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'EIP20':
    |    mapping (address => uint256) public admins;
    |    address private owner;
  > |    string public name;
    |    uint8 public decimals;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'EIP20':
    |    address private owner;
    |    string public name;
  > |    uint8 public decimals;
    |    string public symbol;
    |    uint8 public transfers;
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'EIP20':
    |    string public name;
    |    uint8 public decimals;
  > |    string public symbol;
    |    uint8 public transfers;
    |
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'EIP20':
    |    uint8 public decimals;
    |    string public symbol;
  > |    uint8 public transfers;
    |
    |    function EIP20() public {
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'EIP20':
    |    }
    |    
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |
    |        require(transfers != 0);
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'EIP20':
    |    }   
    |    
  > |    function burn(uint256 _value) public {
    |        require(msg.sender == owner);
    |        
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'EIP20':
    |        balances[msg.sender] -= _value;
    |        
  > |        balances[_to] += _value;
    |        
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'EIP20':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        
  > |        balances[_from] -= _value;
    |        
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'EIP20':
    |        balances[_from] -= _value;
    |        
  > |        balances[_to] += _value;
    |        
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'EIP20':
    |        require(balances[msg.sender] >= _value);
    |        
  > |        balances[msg.sender] -= _value;
    |        
    |        balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'EIP20':
    |        
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'EIP20':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'EIP20':
    |        address burner = msg.sender;
    |        
  > |        balances[burner] -= _value;
    |        
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'EIP20':
    |        balances[burner] -= _value;
    |        
  > |        totalSupply -= _value;
    |        
    |        Burn(burner, _value);
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'EIP20':
    |        require(msg.sender == owner);
    |        
  > |        transfers = _value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'EIP20':
    |        require(msg.sender == owner);
    |        
  > |        admins[_admin] = _value;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x2054a15c6822a722378d13c4e4ea85365e46e50b.sol(127)


