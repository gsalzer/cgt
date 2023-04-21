Processing contract: /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol:ERC20
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol:ERC20Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol:SelfDesctructionContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol:owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'ERC20':
    |}
    | 
  > |contract ERC20 is ERC20Interface,SafeMath,SelfDesctructionContract{
    |
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(87)

[31mViolation[0m for UnrestrictedWrite in contract 'ERC20':
    |}
    | 
  > |contract ERC20 is ERC20Interface,SafeMath,SelfDesctructionContract{
    |
    |    mapping(address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |      require(balanceOf[ _to] + _value >= balanceOf[ _to]); 
    |
  > |      balanceOf[msg.sender] =SafeMath.safeSub(balanceOf[msg.sender],_value) ;
    |      balanceOf[_to] =SafeMath.safeAdd(balanceOf[_to],_value) ;
    |
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |      balanceOf[_to] =SafeMath.safeAdd(balanceOf[_to],_value) ;
    |
  > |      allowed[_from][msg.sender] =SafeMath.safeSub(allowed[_from][msg.sender],_value) ;
    |
    |      emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |  function approve(address _spender, uint256 _value) returns (bool success) {
  > |      allowed[msg.sender][_spender] = _value;
    |
    |      emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20':
    |
    |    function transferOwnerShip(address newOwer) public onlyOwner {
  > |        owner = newOwer;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(61)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.20;
    |
  > |contract SafeMath {
    |  function safeMul(uint256 a, uint256 b) public pure  returns (uint256)  {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |contract SafeMath {
  > |  function safeMul(uint256 a, uint256 b) public pure  returns (uint256)  {
    |    uint256 c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |  }
    |
  > |  function safeDiv(uint256 a, uint256 b)public pure returns (uint256) {
    |    assert(b > 0);
    |    uint256 c = a / b;
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |  }
    |
  > |  function safeSub(uint256 a, uint256 b)public pure returns (uint256) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |  }
    |
  > |  function safeAdd(uint256 a, uint256 b)public pure returns (uint256) {
    |    uint256 c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |  }
    |
  > |  function _assert(bool assertion)public pure {
    |    assert(!assertion);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(28)

[31mViolation[0m for LockedEther in contract 'SelfDesctructionContract':
    |}
    |
  > |contract SelfDesctructionContract is owned {
    |   
    |   string  public someValue;
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'SelfDesctructionContract':
    |}
    |
  > |contract SelfDesctructionContract is owned {
    |   
    |   string  public someValue;
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'SelfDesctructionContract':
    |
    |    function transferOwnerShip(address newOwer) public onlyOwner {
  > |        owner = newOwer;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(61)

[33mWarning[0m for LockedEther in contract 'owned':
    | }
    | 
  > | contract owned {
    |    address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'owned':
    |    }
    |
  > |    function transferOwnerShip(address newOwer) public onlyOwner {
    |        owner = newOwer;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'owned':
    | 
    | contract owned {
  > |    address public owner;
    |
    |    constructor () public {
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'owned':
    |
    |    function transferOwnerShip(address newOwer) public onlyOwner {
  > |        owner = newOwer;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x903ec4ef3d003f05356f3890f13e53421fa4e42a.sol(61)


