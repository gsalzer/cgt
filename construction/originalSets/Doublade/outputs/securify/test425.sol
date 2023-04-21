Processing contract: /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol:Safether
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol:SafetherAbstract
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol:SafetherModifier
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol:SafetherStorage
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Safether':
    |        uint256 tempDeposit = _depositor[depositor]._data[2];
    |         _depositor[depositor]._data[2] = 0;
  > |         msg.sender.transfer(tempDeposit + msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(75)

[33mWarning[0m for DAOConstantGas in contract 'Safether':
    |        uint256 tempDeposit = _depositor[msg.sender]._data[2];
    |        delete _depositor[msg.sender];
  > |        msg.sender.transfer(tempDeposit + msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(81)

[33mWarning[0m for LockedEther in contract 'Safether':
    |}
    |
  > |contract Safether is SafetherModifier, SafetherAbstract {
    |    function authentication(bytes8 token) public constant returns(bool) {
    |        return _depositor[msg.sender]._token == token;
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(53)

[33mWarning[0m for TODReceiver in contract 'Safether':
    |        uint256 tempDeposit = _depositor[depositor]._data[2];
    |         _depositor[depositor]._data[2] = 0;
  > |         msg.sender.transfer(tempDeposit + msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(75)

[33mWarning[0m for TODReceiver in contract 'Safether':
    |        uint256 tempDeposit = _depositor[msg.sender]._data[2];
    |        delete _depositor[msg.sender];
  > |        msg.sender.transfer(tempDeposit + msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(81)

[33mWarning[0m for UnhandledException in contract 'Safether':
    |        uint256 tempDeposit = _depositor[depositor]._data[2];
    |         _depositor[depositor]._data[2] = 0;
  > |         msg.sender.transfer(tempDeposit + msg.value);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(75)

[33mWarning[0m for UnhandledException in contract 'Safether':
    |        uint256 tempDeposit = _depositor[msg.sender]._data[2];
    |        delete _depositor[msg.sender];
  > |        msg.sender.transfer(tempDeposit + msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'Safether':
    |    function withdraw(address depositor, bytes8 token) public payable isValidDepositor(depositor, token) {
    |        uint256 tempDeposit = _depositor[depositor]._data[2];
  > |         _depositor[depositor]._data[2] = 0;
    |         msg.sender.transfer(tempDeposit + msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Safether':
    |}
    |
  > |contract Safether is SafetherModifier, SafetherAbstract {
    |    function authentication(bytes8 token) public constant returns(bool) {
    |        return _depositor[msg.sender]._token == token;
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Safether':
    |    
    |    function register(bytes7 password) public isNotRegisterd {
  > |        _depositor[msg.sender]._token = bytes8(keccak256(block.number, msg.sender, password));
    |        _depositor[msg.sender]._data[0] = block.number;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Safether':
    |    function register(bytes7 password) public isNotRegisterd {
    |        _depositor[msg.sender]._token = bytes8(keccak256(block.number, msg.sender, password));
  > |        _depositor[msg.sender]._data[0] = block.number;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Safether':
    |    
    |    function deposit(uint256 period) public payable isRegisterd {
  > |        _depositor[msg.sender]._data[1] = block.number + period;
    |        _depositor[msg.sender]._data[2] += msg.value;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'Safether':
    |    function deposit(uint256 period) public payable isRegisterd {
    |        _depositor[msg.sender]._data[1] = block.number + period;
  > |        _depositor[msg.sender]._data[2] += msg.value;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Safether':
    |    function cancel() public payable isRegisterd {
    |        uint256 tempDeposit = _depositor[msg.sender]._data[2];
  > |        delete _depositor[msg.sender];
    |        msg.sender.transfer(tempDeposit + msg.value);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(80)

[33mWarning[0m for LockedEther in contract 'SafetherModifier':
    |}
    |
  > |contract SafetherModifier is SafetherStorage {
    |    modifier isRegisterd {
    |        require(_depositor[msg.sender]._token != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(24)

[33mWarning[0m for LockedEther in contract 'SafetherStorage':
    |pragma solidity ^0.4.19;
    |
  > |contract SafetherStorage {
    |    
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x1b6c342823d3cb989e17fd44423c9934504bfb5a.sol(3)


