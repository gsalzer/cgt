Processing contract: /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol:EIP20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol:MarbellaCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'MarbellaCoin':
    |} 
    |
  > |contract MarbellaCoin is EIP20Interface {
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'MarbellaCoin':
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'MarbellaCoin':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |    /*
    |    NOTE:
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'MarbellaCoin':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'MarbellaCoin':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(90)

[31mViolation[0m for MissingInputValidation in contract 'MarbellaCoin':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'MarbellaCoin':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'MarbellaCoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }   
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(112)

[33mWarning[0m for MissingInputValidation in contract 'MarbellaCoin':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'MarbellaCoin':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'MarbellaCoin':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show.
    |    string public symbol;                 //An identifier: eg SBX
    |
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'MarbellaCoin':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show.
  > |    string public symbol;                 //An identifier: eg SBX
    |
    |    function MarbellaCoin(
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'MarbellaCoin':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'MarbellaCoin':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'MarbellaCoin':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'MarbellaCoin':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'MarbellaCoin':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'MarbellaCoin':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x27e5d09c55fd185419c7b07e842f33ea868dbb5b.sol(107)


