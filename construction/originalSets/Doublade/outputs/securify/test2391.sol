Processing contract: /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol:Sorus
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol:StandardToken
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(21)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |contract SafeMath {
    |
    |  function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(41)

[33mWarning[0m for LockedEther in contract 'Sorus':
    |}
    |
  > |contract Sorus is StandardToken {
    |  string public constant name = "Sorus";
    |  string public constant symbol = "SOR";
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'Sorus':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3 * 32) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'Sorus':
    |  }
    |
  > |  function balanceOf(address _owner) public view returns (uint) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'Sorus':
    |  }
    |
  > |  function allowance(address _owner, address _spender) public view returns (uint) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'Sorus':
    |  }
    |
  > |  function approve(address _spender, uint _value) public returns (bool) {
    |    return super.approve(_spender,_value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'Sorus':
    |contract SafeMath {
    |
  > |  function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
    |    uint256 z = x + y;
    |    assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Sorus':
    |  }
    |
  > |  function safeSubtract(uint256 x, uint256 y) internal pure returns(uint256) {
    |    assert(x >= y);
    |    uint256 z = x - y;
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Sorus':
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |
  > |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) public returns (bool){
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Sorus':
    |  }
    |
  > |  function approve(address _spender, uint _value) public returns (bool) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'Sorus':
    |
    |contract Sorus is StandardToken {
  > |  string public constant name = "Sorus";
    |  string public constant symbol = "SOR";
    |  uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'Sorus':
    |contract Sorus is StandardToken {
    |  string public constant name = "Sorus";
  > |  string public constant symbol = "SOR";
    |  uint256 public constant decimals = 18;
    |  string public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'Sorus':
    |  string public constant name = "Sorus";
    |  string public constant symbol = "SOR";
  > |  uint256 public constant decimals = 18;
    |  string public version = "1.0";
    |
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Sorus':
    |  string public constant symbol = "SOR";
    |  uint256 public constant decimals = 18;
  > |  string public version = "1.0";
    |
    |  uint256 public constant total = 20 * (10**7) * 10**decimals;   // 20 *10^7 SOR total
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'Sorus':
    |  string public version = "1.0";
    |
  > |  uint256 public constant total = 20 * (10**7) * 10**decimals;   // 20 *10^7 SOR total
    |
    |  function Sorus() public {
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'Sorus':
    |  }
    |
  > |  function totalSupply() public view returns (uint256) {
    |    return total;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'Sorus':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'Sorus':
    |
    |    balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'Sorus':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSubtract(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSubtract(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'Sorus':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSubtract(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSubtract(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'Sorus':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSubtract(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSubtract(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'Sorus':
    |
    |  function approve(address _spender, uint _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Sorus':
    |
    |  function approve(address _spender, uint _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x9b5899d431d1e39bace09d4f269927620e16b6ae.sol(110)


