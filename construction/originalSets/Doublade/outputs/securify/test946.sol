Processing contract: /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol:SuperEOS
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SuperEOS':
    |pragma solidity ^0.4.16;
    |
  > |contract SuperEOS {
    |    string public name = "SuperEOS";      
    |    string public symbol = "SPEOS";              
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'SuperEOS':
    |    address public owner;
    |    address internal newOwner = 0x0;
  > |    mapping (address => bool) public frozens;
    |    mapping (address => uint256) public balanceOf;
    |
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'SuperEOS':
    |    address internal newOwner = 0x0;
    |    mapping (address => bool) public frozens;
  > |    mapping (address => uint256) public balanceOf;
    |
    |    //---------init----------
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'SuperEOS':
    |    }
    |
  > |    function freezeAccount(address target, bool freeze) onlyOwner public {
    |        frozens[target] = freeze;
    |        emit FrozenFunds(target, freeze);
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'SuperEOS':
    |    }
    |
  > |    function freezeAll(bool lock) onlyOwner public {
    |        lockAll = lock;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'SuperEOS':
    |
    |contract SuperEOS {
  > |    string public name = "SuperEOS";      
    |    string public symbol = "SPEOS";              
    |    uint8 public decimals = 6;                
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SuperEOS':
    |contract SuperEOS {
    |    string public name = "SuperEOS";      
  > |    string public symbol = "SPEOS";              
    |    uint8 public decimals = 6;                
    |    uint256 public totalSupply;                
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'SuperEOS':
    |    string public name = "SuperEOS";      
    |    string public symbol = "SPEOS";              
  > |    uint8 public decimals = 6;                
    |    uint256 public totalSupply;                
    |
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'SuperEOS':
    |    string public symbol = "SPEOS";              
    |    uint8 public decimals = 6;                
  > |    uint256 public totalSupply;                
    |
    |    bool public lockAll = false;               
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'SuperEOS':
    |    uint256 public totalSupply;                
    |
  > |    bool public lockAll = false;               
    |
    |    event Transfer(address indexed from, address indexed to, uint256 value);
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'SuperEOS':
    |    event FrozenFunds(address target, bool frozen);
    |    event OwnerUpdate(address _prevOwner, address _newOwner);
  > |    address public owner;
    |    address internal newOwner = 0x0;
    |    mapping (address => bool) public frozens;
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'SuperEOS':
    |        _;
    |    }
  > |    function transferOwnership(address tOwner) onlyOwner public {
    |        require(owner!=tOwner);
    |        newOwner = tOwner;
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SuperEOS':
    |        newOwner = tOwner;
    |    }
  > |    function acceptOwnership() public {
    |        require(msg.sender==newOwner && newOwner != 0x0);
    |        owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'SuperEOS':
    |
    |    //-------transfer-------
  > |    function transfer(address _to, uint256 _value) public {
    |        _transfer(msg.sender, _to, _value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'SuperEOS':
    |        _transfer(msg.sender, _to, _value);
    |    }
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(!lockAll);
    |        require(_to != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperEOS':
    |
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperEOS':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
    |        balanceOf[_from] -= _value;
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperEOS':
    |
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];
  > |        balanceOf[_from] -= _value;
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperEOS':
    |    function transferOwnership(address tOwner) onlyOwner public {
    |        require(owner!=tOwner);
  > |        newOwner = tOwner;
    |    }
    |    function acceptOwnership() public {
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(32)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperEOS':
    |    function acceptOwnership() public {
    |        require(msg.sender==newOwner && newOwner != 0x0);
  > |        owner = newOwner;
    |        newOwner = 0x0;
    |        emit OwnerUpdate(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperEOS':
    |        require(msg.sender==newOwner && newOwner != 0x0);
    |        owner = newOwner;
  > |        newOwner = 0x0;
    |        emit OwnerUpdate(owner, newOwner);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperEOS':
    |
    |    function freezeAccount(address target, bool freeze) onlyOwner public {
  > |        frozens[target] = freeze;
    |        emit FrozenFunds(target, freeze);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperEOS':
    |
    |    function freezeAll(bool lock) onlyOwner public {
  > |        lockAll = lock;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x3be9ec670bd3d71d7b4a4f1fc8afc89fddad3710.sol(47)


