Processing contract: /home/jiaming/mavs_srcs/contract@0xa68d55ca1950293dd027238d69f21386c4bbfa98.sol:CioCoinERC26Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CioCoinERC26Token':
    |pragma solidity ^0.4.21;
    |
  > |contract CioCoinERC26Token {
    |  address public owner;
    |  string public name;
  at /home/jiaming/mavs_srcs/contract@0xa68d55ca1950293dd027238d69f21386c4bbfa98.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'CioCoinERC26Token':
    |  uint256 public totalSupply;
    |  event Transfer(address indexed from, address indexed to, uint256 value);
  > |  mapping (address => uint256) public balanceOf;
    |  
    |  function CioCoinERC26Token(uint256 initialSupply, string tokenName, string tokenSymbol, uint decimalUnits) public {
  at /home/jiaming/mavs_srcs/contract@0xa68d55ca1950293dd027238d69f21386c4bbfa98.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'CioCoinERC26Token':
    |
    |contract CioCoinERC26Token {
  > |  address public owner;
    |  string public name;
    |  string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xa68d55ca1950293dd027238d69f21386c4bbfa98.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'CioCoinERC26Token':
    |contract CioCoinERC26Token {
    |  address public owner;
  > |  string public name;
    |  string public symbol;
    |  uint public decimals;
  at /home/jiaming/mavs_srcs/contract@0xa68d55ca1950293dd027238d69f21386c4bbfa98.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'CioCoinERC26Token':
    |  address public owner;
    |  string public name;
  > |  string public symbol;
    |  uint public decimals;
    |  uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xa68d55ca1950293dd027238d69f21386c4bbfa98.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'CioCoinERC26Token':
    |  string public name;
    |  string public symbol;
  > |  uint public decimals;
    |  uint256 public totalSupply;
    |  event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0xa68d55ca1950293dd027238d69f21386c4bbfa98.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'CioCoinERC26Token':
    |  string public symbol;
    |  uint public decimals;
  > |  uint256 public totalSupply;
    |  event Transfer(address indexed from, address indexed to, uint256 value);
    |  mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0xa68d55ca1950293dd027238d69f21386c4bbfa98.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'CioCoinERC26Token':
    |    require(balanceOf[msg.sender] >= _value && balanceOf[_to] + _value >= balanceOf[_to]);
    |    balanceOf[msg.sender] -= _value;
  > |    balanceOf[_to] += _value;
    |    emit Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa68d55ca1950293dd027238d69f21386c4bbfa98.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'CioCoinERC26Token':
    |  function transfer(address _to, uint256 _value) public {
    |    require(balanceOf[msg.sender] >= _value && balanceOf[_to] + _value >= balanceOf[_to]);
  > |    balanceOf[msg.sender] -= _value;
    |    balanceOf[_to] += _value;
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xa68d55ca1950293dd027238d69f21386c4bbfa98.sol(23)


