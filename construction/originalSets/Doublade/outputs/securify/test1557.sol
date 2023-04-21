Processing contract: /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol:PutYourFuckingTextOnTheFuckingBlockchain
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'PutYourFuckingTextOnTheFuckingBlockchain':
    |            return true;
    |        } else {
  > |            msg.sender.transfer(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol(15)

[33mWarning[0m for DAOConstantGas in contract 'PutYourFuckingTextOnTheFuckingBlockchain':
    |    function withdrawEther() external {
    |        require(msg.sender == owner);
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol(22)

[33mWarning[0m for LockedEther in contract 'PutYourFuckingTextOnTheFuckingBlockchain':
    |pragma solidity ^0.4.18;
    |
  > |contract PutYourFuckingTextOnTheFuckingBlockchain {
    |    uint public mostSent = 0;
    |    string public currentText = "Put your own text here for money!";
  at /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol(3)

[31mViolation[0m for TODAmount in contract 'PutYourFuckingTextOnTheFuckingBlockchain':
    |    function withdrawEther() external {
    |        require(msg.sender == owner);
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol(22)

[33mWarning[0m for TODReceiver in contract 'PutYourFuckingTextOnTheFuckingBlockchain':
    |            return true;
    |        } else {
  > |            msg.sender.transfer(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol(15)

[33mWarning[0m for TODReceiver in contract 'PutYourFuckingTextOnTheFuckingBlockchain':
    |    function withdrawEther() external {
    |        require(msg.sender == owner);
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol(22)

[33mWarning[0m for UnhandledException in contract 'PutYourFuckingTextOnTheFuckingBlockchain':
    |            return true;
    |        } else {
  > |            msg.sender.transfer(msg.value);
    |            return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol(15)

[33mWarning[0m for UnhandledException in contract 'PutYourFuckingTextOnTheFuckingBlockchain':
    |    function withdrawEther() external {
    |        require(msg.sender == owner);
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol(22)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PutYourFuckingTextOnTheFuckingBlockchain':
    |    function withdrawEther() external {
    |        require(msg.sender == owner);
  > |        owner.transfer(this.balance);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol(22)

[31mViolation[0m for UnrestrictedWrite in contract 'PutYourFuckingTextOnTheFuckingBlockchain':
    |pragma solidity ^0.4.18;
    |
  > |contract PutYourFuckingTextOnTheFuckingBlockchain {
    |    uint public mostSent = 0;
    |    string public currentText = "Put your own text here for money!";
  at /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'PutYourFuckingTextOnTheFuckingBlockchain':
    |        if (msg.value > mostSent && bytes(newText).length < maxLength) {
    |            currentText = newText;
  > |            mostSent = msg.value;
    |            return true;
    |        } else {
  at /home/jiaming/mavs_srcs/contract@0x631c0d6f503c900e969c14d80a61d94e34cb0899.sol(12)


