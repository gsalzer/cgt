Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol:EIP20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol:XiaoliangToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'XiaoliangToken':
    |
    |
  > |contract XiaoliangToken is EIP20Interface {
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'XiaoliangToken':
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |    /*
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'XiaoliangToken':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |    /*
    |    NOTE:
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'XiaoliangToken':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(75)

[31mViolation[0m for MissingInputValidation in contract 'XiaoliangToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(83)

[31mViolation[0m for MissingInputValidation in contract 'XiaoliangToken':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'XiaoliangToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(99)

[31mViolation[0m for MissingInputValidation in contract 'XiaoliangToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'XiaoliangToken':
    |    */
    |    /// total amount of tokens
  > |    uint256 public totalSupply;
    |
    |    /// @param _owner The address from which the balance will be retrieved
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'XiaoliangToken':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show.
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'XiaoliangToken':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show.
    |    string public symbol;                 //An identifier: eg SBX
    |
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'XiaoliangToken':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show.
  > |    string public symbol;                 //An identifier: eg SBX
    |
    |    constructor () public {
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(65)

[31mViolation[0m for UnrestrictedWrite in contract 'XiaoliangToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value); //solhint-disable-line indent, no-unused-vars
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(78)

[31mViolation[0m for UnrestrictedWrite in contract 'XiaoliangToken':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'XiaoliangToken':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'XiaoliangToken':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'XiaoliangToken':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value); //solhint-disable-line indent, no-unused-vars
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'XiaoliangToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value); //solhint-disable-line indent, no-unused-vars
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xcf8593795c2f1359c7afa3d21616417e666b2803.sol(100)


