Processing contract: /home/jiaming/mavs_srcs/contract@0x8158c03015823d42b745c2a82e3364f8719f1689.sol:BITSEACoinERC20Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BITSEACoinERC20Token':
    |pragma solidity ^0.4.21;
    |
  > |contract BITSEACoinERC20Token {
    |  address public owner;
    |  string public name;
  at /home/jiaming/mavs_srcs/contract@0x8158c03015823d42b745c2a82e3364f8719f1689.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'BITSEACoinERC20Token':
    |  uint256 public totalSupply;
    |  event Transfer(address indexed from, address indexed to, uint256 value);
  > |  mapping (address => uint256) public balanceOf;
    |  
    |  function BITSEACoinERC20Token (uint256 initialSupply, string tokenName, string tokenSymbol, uint decimalUnits) public {
  at /home/jiaming/mavs_srcs/contract@0x8158c03015823d42b745c2a82e3364f8719f1689.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'BITSEACoinERC20Token':
    |
    |contract BITSEACoinERC20Token {
  > |  address public owner;
    |  string public name;
    |  string public symbol;
  at /home/jiaming/mavs_srcs/contract@0x8158c03015823d42b745c2a82e3364f8719f1689.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'BITSEACoinERC20Token':
    |contract BITSEACoinERC20Token {
    |  address public owner;
  > |  string public name;
    |  string public symbol;
    |  uint public decimals;
  at /home/jiaming/mavs_srcs/contract@0x8158c03015823d42b745c2a82e3364f8719f1689.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'BITSEACoinERC20Token':
    |  address public owner;
    |  string public name;
  > |  string public symbol;
    |  uint public decimals;
    |  uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0x8158c03015823d42b745c2a82e3364f8719f1689.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'BITSEACoinERC20Token':
    |  string public name;
    |  string public symbol;
  > |  uint public decimals;
    |  uint256 public totalSupply;
    |  event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x8158c03015823d42b745c2a82e3364f8719f1689.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BITSEACoinERC20Token':
    |  string public symbol;
    |  uint public decimals;
  > |  uint256 public totalSupply;
    |  event Transfer(address indexed from, address indexed to, uint256 value);
    |  mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x8158c03015823d42b745c2a82e3364f8719f1689.sol(8)

[31mViolation[0m for UnrestrictedWrite in contract 'BITSEACoinERC20Token':
    |    require(balanceOf[msg.sender] >= _value && balanceOf[_to] + _value >= balanceOf[_to]);
    |    balanceOf[msg.sender] -= _value;
  > |    balanceOf[_to] += _value;
    |    emit Transfer(msg.sender, _to, _value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8158c03015823d42b745c2a82e3364f8719f1689.sol(24)

[33mWarning[0m for UnrestrictedWrite in contract 'BITSEACoinERC20Token':
    |  function transfer(address _to, uint256 _value) public {
    |    require(balanceOf[msg.sender] >= _value && balanceOf[_to] + _value >= balanceOf[_to]);
  > |    balanceOf[msg.sender] -= _value;
    |    balanceOf[_to] += _value;
    |    emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x8158c03015823d42b745c2a82e3364f8719f1689.sol(23)


