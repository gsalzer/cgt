Processing contract: /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol:BatchTransfer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol:Token
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'BatchTransfer':
    |}
    |
  > |contract BatchTransfer{
    |    address public owner;
    |    address public admin;
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'BatchTransfer':
    |    }
    |    
  > |    function ownerSetOwner(address newOwner) public onlyOwner{
    |        owner = newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'BatchTransfer':
    |    }
    |    
  > |    function ownerSetAdmin(address newAdmin) public onlyOwner{
    |        admin = newAdmin;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'BatchTransfer':
    |    }
    |    
  > |    function ownerTransfer(address _addr, uint _value) public onlyOwner{
    |        token.transfer(_addr,_value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'BatchTransfer':
    |
    |contract BatchTransfer{
  > |    address public owner;
    |    address public admin;
    |    Token public token;
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'BatchTransfer':
    |contract BatchTransfer{
    |    address public owner;
  > |    address public admin;
    |    Token public token;
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BatchTransfer':
    |    address public owner;
    |    address public admin;
  > |    Token public token;
    |    
    |    modifier onlyOwner{
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(10)

[33mWarning[0m for UnhandledException in contract 'BatchTransfer':
    |    
    |    function ownerTransfer(address _addr, uint _value) public onlyOwner{
  > |        token.transfer(_addr,_value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(36)

[33mWarning[0m for UnhandledException in contract 'BatchTransfer':
    |        uint i = 0;
    |        while (i < _dests.length) {
  > |            token.transfer(_dests[i], _values[i] * (10 ** 18));
    |            i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(42)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BatchTransfer':
    |    
    |    function ownerTransfer(address _addr, uint _value) public onlyOwner{
  > |        token.transfer(_addr,_value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(36)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BatchTransfer':
    |        uint i = 0;
    |        while (i < _dests.length) {
  > |            token.transfer(_dests[i], _values[i] * (10 ** 18));
    |            i += 1;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'BatchTransfer':
    |    
    |    function ownerSetOwner(address newOwner) public onlyOwner{
  > |        owner = newOwner;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'BatchTransfer':
    |    
    |    function ownerSetAdmin(address newAdmin) public onlyOwner{
  > |        admin = newAdmin;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(32)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.21;
    |
  > |contract Token{
    |    function transfer(address _to, uint256 _value){_to;_value;}
    |}
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Token':
    |
    |contract Token{
  > |    function transfer(address _to, uint256 _value){_to;_value;}
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xf9f6382790d74646aa4d590594442523ca4ed159.sol(4)


