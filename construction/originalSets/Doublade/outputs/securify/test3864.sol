Processing contract: /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol:AgentContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'AgentContract':
    |    function returnBalanseToTarget() public payable {
    |        assert (msg.sender == __owner);
  > |        if (!target.send(this.balance)){
    |            __owner.send(this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(29)

[33mWarning[0m for DAOConstantGas in contract 'AgentContract':
    |        assert (msg.sender == __owner);
    |        if (!target.send(this.balance)){
  > |            __owner.send(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(30)

[33mWarning[0m for DAOConstantGas in contract 'AgentContract':
    |            uint256 value_to_send = (summa * piece_to_send) / 10000;
    |            summa_rest = summa_rest - value_to_send;
  > |            if (!agents[i].send(value_to_send)){
    |                summa_rest = summa_rest + value_to_send;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(41)

[33mWarning[0m for DAOConstantGas in contract 'AgentContract':
    |            }
    |        }
  > |        if (!target.send(summa_rest)){
    |            if (!msg.sender.send(summa_rest)){
    |                __owner.send(summa_rest);
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(48)

[33mWarning[0m for DAOConstantGas in contract 'AgentContract':
    |        }
    |        if (!target.send(summa_rest)){
  > |            if (!msg.sender.send(summa_rest)){
    |                __owner.send(summa_rest);
    |                SendEther(__owner, summa_rest);
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(49)

[33mWarning[0m for DAOConstantGas in contract 'AgentContract':
    |        if (!target.send(summa_rest)){
    |            if (!msg.sender.send(summa_rest)){
  > |                __owner.send(summa_rest);
    |                SendEther(__owner, summa_rest);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(50)

[33mWarning[0m for LockedEther in contract 'AgentContract':
    |pragma solidity ^0.4.0;
    |
  > |contract AgentContract {
    |
    |    address __owner;
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(3)

[31mViolation[0m for TODAmount in contract 'AgentContract':
    |    function returnBalanseToTarget() public payable {
    |        assert (msg.sender == __owner);
  > |        if (!target.send(this.balance)){
    |            __owner.send(this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(29)

[31mViolation[0m for TODAmount in contract 'AgentContract':
    |        assert (msg.sender == __owner);
    |        if (!target.send(this.balance)){
  > |            __owner.send(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(30)

[33mWarning[0m for TODReceiver in contract 'AgentContract':
    |    function returnBalanseToTarget() public payable {
    |        assert (msg.sender == __owner);
  > |        if (!target.send(this.balance)){
    |            __owner.send(this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(29)

[33mWarning[0m for TODReceiver in contract 'AgentContract':
    |        }
    |        if (!target.send(summa_rest)){
  > |            if (!msg.sender.send(summa_rest)){
    |                __owner.send(summa_rest);
    |                SendEther(__owner, summa_rest);
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(49)

[31mViolation[0m for UnhandledException in contract 'AgentContract':
    |        assert (msg.sender == __owner);
    |        if (!target.send(this.balance)){
  > |            __owner.send(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(30)

[31mViolation[0m for UnhandledException in contract 'AgentContract':
    |        if (!target.send(summa_rest)){
    |            if (!msg.sender.send(summa_rest)){
  > |                __owner.send(summa_rest);
    |                SendEther(__owner, summa_rest);
    |            }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(50)

[33mWarning[0m for UnhandledException in contract 'AgentContract':
    |    function returnBalanseToTarget() public payable {
    |        assert (msg.sender == __owner);
  > |        if (!target.send(this.balance)){
    |            __owner.send(this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(29)

[33mWarning[0m for UnhandledException in contract 'AgentContract':
    |            uint256 value_to_send = (summa * piece_to_send) / 10000;
    |            summa_rest = summa_rest - value_to_send;
  > |            if (!agents[i].send(value_to_send)){
    |                summa_rest = summa_rest + value_to_send;
    |            }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(41)

[33mWarning[0m for UnhandledException in contract 'AgentContract':
    |            }
    |        }
  > |        if (!target.send(summa_rest)){
    |            if (!msg.sender.send(summa_rest)){
    |                __owner.send(summa_rest);
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(48)

[33mWarning[0m for UnhandledException in contract 'AgentContract':
    |        }
    |        if (!target.send(summa_rest)){
  > |            if (!msg.sender.send(summa_rest)){
    |                __owner.send(summa_rest);
    |                SendEther(__owner, summa_rest);
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(49)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgentContract':
    |    function returnBalanseToTarget() public payable {
    |        assert (msg.sender == __owner);
  > |        if (!target.send(this.balance)){
    |            __owner.send(this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(29)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgentContract':
    |        assert (msg.sender == __owner);
    |        if (!target.send(this.balance)){
  > |            __owner.send(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfee1e8cb20c64b84056e3c5088987f240a53f169.sol(30)


