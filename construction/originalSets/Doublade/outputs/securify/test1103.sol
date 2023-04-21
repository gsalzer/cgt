Processing contract: /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol:EthMash
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EthMash':
    |        uint amount = balances[msg.sender];
    |        balances[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(29)

[33mWarning[0m for LockedEther in contract 'EthMash':
    |pragma solidity ^0.4.23;
    |
  > |contract EthMash {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'EthMash':
    |
    |    address public owner;
  > |    mapping (address => uint) public balances;
    |
    |    address public leader;
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(6)

[31mViolation[0m for MissingInputValidation in contract 'EthMash':
    |    }
    |
  > |    function publicGetBalance(address player) view public returns (uint) {
    |        return balances[player];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'EthMash':
    |contract EthMash {
    |
  > |    address public owner;
    |    mapping (address => uint) public balances;
    |
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'EthMash':
    |    mapping (address => uint) public balances;
    |
  > |    address public leader;
    |
    |    event Log(address challenger, address defender, bool success);
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'EthMash':
    |    }
    |
  > |    function publicGetState() view public returns (address) {
    |        return leader;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'EthMash':
    |    }
    |
  > |    function userWithdraw() public {
    |        require(balances[msg.sender] > 0);
    |        uint amount = balances[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'EthMash':
    |    }
    |
  > |    function userChallenge() public payable {
    |        require(msg.value == 100 finney);
    |        
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(32)

[33mWarning[0m for TODReceiver in contract 'EthMash':
    |        uint amount = balances[msg.sender];
    |        balances[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(29)

[33mWarning[0m for UnhandledException in contract 'EthMash':
    |        uint amount = balances[msg.sender];
    |        balances[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'EthMash':
    |        require(balances[msg.sender] > 0);
    |        uint amount = balances[msg.sender];
  > |        balances[msg.sender] = 0;
    |        msg.sender.transfer(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'EthMash':
    |        if (random % 2 == 1) {
    |            emit Log(msg.sender, leader, true);
  > |            balances[msg.sender] += 100 finney;
    |            leader = msg.sender;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'EthMash':
    |            emit Log(msg.sender, leader, true);
    |            balances[msg.sender] += 100 finney;
  > |            leader = msg.sender;
    |        } else {
    |            emit Log(msg.sender, leader, false);
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(39)

[33mWarning[0m for UnrestrictedWrite in contract 'EthMash':
    |        } else {
    |            emit Log(msg.sender, leader, false);
  > |            balances[leader] += 95 finney;
    |            balances[owner] += 5 finney;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'EthMash':
    |            emit Log(msg.sender, leader, false);
    |            balances[leader] += 95 finney;
  > |            balances[owner] += 5 finney;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x452ee11eb4ed8e709c510659f31c4942c14ff608.sol(43)


