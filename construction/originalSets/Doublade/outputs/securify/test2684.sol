Processing contract: /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol:ERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol:Mobilink
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20':
    |pragma solidity ^0.4.18;
    |
  > |contract ERC20 is ERC20Interface {
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
  > |    mapping (address => uint256) public balances;
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(51)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    uint256 constant private MAX_UINT256 = 2**256 - 1;
    |    mapping (address => uint256) public balances;
  > |    mapping (address => mapping (address => uint256)) public allowed;
    |
    |    string public name ="MobilinkToken";
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool 
    |success) {
    |        require(balances[msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) 
    |public returns (bool success) {
    |        uint256 allowance = allowed[_from][msg.sender];
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(82)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 
    |balance) {
    |        return balances[_owner];
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns 
    |(bool success) {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(100)

[31mViolation[0m for MissingInputValidation in contract 'ERC20':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view 
    |returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(107)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |contract ERC20Interface {
    |
  > |    uint256 public totalSupply = 9000000000000000000000000000;
    |
    |    function balanceOf(address _owner) public view returns (uint256 
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    mapping (address => mapping (address => uint256)) public allowed;
    |
  > |    string public name ="MobilinkToken";
    |    uint8 public decimals = 18;
    |    string public symbol = "MLK";
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |
    |    string public name ="MobilinkToken";
  > |    uint8 public decimals = 18;
    |    string public symbol = "MLK";
    |
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'ERC20':
    |    string public name ="MobilinkToken";
    |    uint8 public decimals = 18;
  > |    string public symbol = "MLK";
    |
    |    function ERC20(
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(56)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;
  > |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(77)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] += _value;
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] += _value;
  > |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |success) {
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;
    |        balances[_to] += _value;
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |        balances[_from] -= _value;
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] -= _value;
    |        }
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |    function approve(address _spender, uint256 _value) public returns 
    |(bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(102)

[33mWarning[0m for LockedEther in contract 'Mobilink':
    |pragma solidity ^0.4.18;
    |
  > |contract Mobilink {
    |
    |    function Mobilink() public {
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Mobilink':
    |    }
    |
  > |    function createERC20(address _initialOwner, uint256 _initialAmount, 
    |string _name, uint8 _decimals, string _symbol)
    |        public
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Mobilink':
    |pragma solidity ^0.4.18;
    |
  > |contract Mobilink {
    |
    |    function Mobilink() public {
  at /home/jiaming/mavs_srcs/contract@0xaf3709f737c2354de7a8d9f258e554c7c64a0386.sol(3)


