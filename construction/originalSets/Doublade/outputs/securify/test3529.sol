Processing contract: /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol:Sonali
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol:StandardToken
[33mWarning[0m for LockedEther in contract 'Ownable':
    |
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(21)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |contract SafeMath {
    |
    |  function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(41)

[33mWarning[0m for LockedEther in contract 'Sonali':
    |}
    |
  > |contract Sonali is StandardToken {
    |  string public constant name = "Sonali";
    |  string public constant symbol = "sonali";
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(121)

[31mViolation[0m for MissingInputValidation in contract 'Sonali':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint _value) onlyPayloadSize(3 * 32) public returns (bool) {
    |    require(_to != address(0));
    |    require(_value <= balances[_from]);
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'Sonali':
    |  }
    |
  > |  function balanceOf(address _owner) public view returns (uint) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'Sonali':
    |  }
    |
  > |  function allowance(address _owner, address _spender) public view returns (uint) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(115)

[31mViolation[0m for MissingInputValidation in contract 'Sonali':
    |  }
    |
  > |  function approve(address _spender, uint _value) public returns (bool) {
    |    return super.approve(_spender,_value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(142)

[33mWarning[0m for MissingInputValidation in contract 'Sonali':
    |contract SafeMath {
    |
  > |  function safeAdd(uint256 x, uint256 y) internal pure returns(uint256) {
    |    uint256 z = x + y;
    |    assert((z >= x) && (z >= y));
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Sonali':
    |  }
    |
  > |  function safeSubtract(uint256 x, uint256 y) internal pure returns(uint256) {
    |    assert(x >= y);
    |    uint256 z = x - y;
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Sonali':
    |  mapping (address => mapping (address => uint256)) internal allowed;
    |
  > |  function transfer(address _to, uint _value) onlyPayloadSize(2 * 32) public returns (bool){
    |    require(_to != address(0));
    |    require(_value <= balances[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'Sonali':
    |  }
    |
  > |  function approve(address _spender, uint _value) public returns (bool) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'Sonali':
    |
    |contract Sonali is StandardToken {
  > |  string public constant name = "Sonali";
    |  string public constant symbol = "sonali";
    |  uint256 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(122)

[33mWarning[0m for MissingInputValidation in contract 'Sonali':
    |contract Sonali is StandardToken {
    |  string public constant name = "Sonali";
  > |  string public constant symbol = "sonali";
    |  uint256 public constant decimals = 18;
    |  string public version = "1.0";
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'Sonali':
    |  string public constant name = "Sonali";
    |  string public constant symbol = "sonali";
  > |  uint256 public constant decimals = 18;
    |  string public version = "1.0";
    |
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(124)

[33mWarning[0m for MissingInputValidation in contract 'Sonali':
    |  string public constant symbol = "sonali";
    |  uint256 public constant decimals = 18;
  > |  string public version = "1.0";
    |
    |  uint256 public constant total = 50 * (10**7) * 10**decimals;   // 20 *10^7 sonali total
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'Sonali':
    |  string public version = "1.0";
    |
  > |  uint256 public constant total = 50 * (10**7) * 10**decimals;   // 20 *10^7 sonali total
    |
    |  function Sonali() public {
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(127)

[33mWarning[0m for MissingInputValidation in contract 'Sonali':
    |  }
    |
  > |  function totalSupply() public view returns (uint256) {
    |    return total;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'Sonali':
    |    require(_value <= balances[msg.sender]);
    |
  > |    balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'Sonali':
    |
    |    balances[msg.sender] = safeSubtract(balances[msg.sender], _value);
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(86)

[31mViolation[0m for UnrestrictedWrite in contract 'Sonali':
    |    uint _allowance = allowed[_from][msg.sender];
    |
  > |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSubtract(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSubtract(_allowance, _value);
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(98)

[31mViolation[0m for UnrestrictedWrite in contract 'Sonali':
    |
    |    balances[_to] = safeAdd(balances[_to], _value);
  > |    balances[_from] = safeSubtract(balances[_from], _value);
    |    allowed[_from][msg.sender] = safeSubtract(_allowance, _value);
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'Sonali':
    |    balances[_to] = safeAdd(balances[_to], _value);
    |    balances[_from] = safeSubtract(balances[_from], _value);
  > |    allowed[_from][msg.sender] = safeSubtract(_allowance, _value);
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'Sonali':
    |
    |  function approve(address _spender, uint _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Sonali':
    |
    |  function approve(address _spender, uint _value) public returns (bool) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xe73213fcb56a9e0fe98d66dd3e573095a70194bb.sol(110)


