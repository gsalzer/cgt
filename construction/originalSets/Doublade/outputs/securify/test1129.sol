Processing contract: /home/jiaming/mavs_srcs/contract@0x4726bf61c3a8df967b6f2c805659810e8d343218.sol:Agriss
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Agriss':
    |pragma solidity ^0.4.4;
    |
  > |contract Agriss {
    |    uint8 public decimals = 18;
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x4726bf61c3a8df967b6f2c805659810e8d343218.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Agriss':
    |contract Agriss {
    |    uint8 public decimals = 18;
  > |    mapping (address => uint256) public balanceOf;
    |    
    |    constructor (
  at /home/jiaming/mavs_srcs/contract@0x4726bf61c3a8df967b6f2c805659810e8d343218.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'Agriss':
    |
    |    /* Send coins */
  > |    function transfer(address _to, uint256 _value) public {
    |        require(balanceOf[msg.sender] >= _value);           
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); 
  at /home/jiaming/mavs_srcs/contract@0x4726bf61c3a8df967b6f2c805659810e8d343218.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'Agriss':
    |    }
    |
  > |    function getBalanceOf(address src) constant public returns (uint256) {
    |        return balanceOf[src];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4726bf61c3a8df967b6f2c805659810e8d343218.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Agriss':
    |
    |contract Agriss {
  > |    uint8 public decimals = 18;
    |    mapping (address => uint256) public balanceOf;
    |    
  at /home/jiaming/mavs_srcs/contract@0x4726bf61c3a8df967b6f2c805659810e8d343218.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'Agriss':
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); 
    |        balanceOf[msg.sender] -= _value;                    
  > |        balanceOf[_to] += _value;                           
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x4726bf61c3a8df967b6f2c805659810e8d343218.sol(18)

[33mWarning[0m for UnrestrictedWrite in contract 'Agriss':
    |        require(balanceOf[msg.sender] >= _value);           
    |        require(balanceOf[_to] + _value >= balanceOf[_to]); 
  > |        balanceOf[msg.sender] -= _value;                    
    |        balanceOf[_to] += _value;                           
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4726bf61c3a8df967b6f2c805659810e8d343218.sol(17)


