Processing contract: /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol:AgentContracteGalaxy
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol:GESTokenCrowdSale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'AgentContracteGalaxy':
    |        }
    |        assert(summa_rest >= 100000000000000000);
  > |        GESTokenCrowdSale(target).buyTokens.value(summa_rest)(tx.origin);
    |        SendEther(target, summa_rest);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(53)

[33mWarning[0m for DAOConstantGas in contract 'AgentContracteGalaxy':
    |    function returnBalanseToTarget() public payable {
    |        assert (msg.sender == __owner);
  > |        if (!target.send(this.balance)){
    |            __owner.send(this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(33)

[33mWarning[0m for DAOConstantGas in contract 'AgentContracteGalaxy':
    |        assert (msg.sender == __owner);
    |        if (!target.send(this.balance)){
  > |            __owner.send(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(34)

[33mWarning[0m for DAOConstantGas in contract 'AgentContracteGalaxy':
    |            uint256 value_to_send = (summa * piece_to_send) / 10000;
    |            summa_rest = summa_rest - value_to_send;
  > |            if (!agents[i].send(value_to_send)){
    |                summa_rest = summa_rest + value_to_send;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(45)

[33mWarning[0m for LockedEther in contract 'AgentContracteGalaxy':
    |}
    |
  > |contract AgentContracteGalaxy {
    |    address __owner;
    |    address target;
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(8)

[31mViolation[0m for TODAmount in contract 'AgentContracteGalaxy':
    |    function returnBalanseToTarget() public payable {
    |        assert (msg.sender == __owner);
  > |        if (!target.send(this.balance)){
    |            __owner.send(this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(33)

[31mViolation[0m for TODAmount in contract 'AgentContracteGalaxy':
    |        assert (msg.sender == __owner);
    |        if (!target.send(this.balance)){
  > |            __owner.send(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(34)

[33mWarning[0m for TODReceiver in contract 'AgentContracteGalaxy':
    |    function returnBalanseToTarget() public payable {
    |        assert (msg.sender == __owner);
  > |        if (!target.send(this.balance)){
    |            __owner.send(this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(33)

[31mViolation[0m for UnhandledException in contract 'AgentContracteGalaxy':
    |        assert (msg.sender == __owner);
    |        if (!target.send(this.balance)){
  > |            __owner.send(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(34)

[33mWarning[0m for UnhandledException in contract 'AgentContracteGalaxy':
    |    function returnBalanseToTarget() public payable {
    |        assert (msg.sender == __owner);
  > |        if (!target.send(this.balance)){
    |            __owner.send(this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(33)

[33mWarning[0m for UnhandledException in contract 'AgentContracteGalaxy':
    |            uint256 value_to_send = (summa * piece_to_send) / 10000;
    |            summa_rest = summa_rest - value_to_send;
  > |            if (!agents[i].send(value_to_send)){
    |                summa_rest = summa_rest + value_to_send;
    |            }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(45)

[33mWarning[0m for UnhandledException in contract 'AgentContracteGalaxy':
    |        }
    |        assert(summa_rest >= 100000000000000000);
  > |        GESTokenCrowdSale(target).buyTokens.value(summa_rest)(tx.origin);
    |        SendEther(target, summa_rest);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(53)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgentContracteGalaxy':
    |    function returnBalanseToTarget() public payable {
    |        assert (msg.sender == __owner);
  > |        if (!target.send(this.balance)){
    |            __owner.send(this.balance);
    |        }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(33)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AgentContracteGalaxy':
    |        assert (msg.sender == __owner);
    |        if (!target.send(this.balance)){
  > |            __owner.send(this.balance);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(34)

[31mViolation[0m for LockedEther in contract 'GESTokenCrowdSale':
    |pragma solidity ^0.4.0;
    |
  > |contract GESTokenCrowdSale {
    |  function buyTokens(address beneficiary) public payable {
    |  }
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'GESTokenCrowdSale':
    |
    |contract GESTokenCrowdSale {
  > |  function buyTokens(address beneficiary) public payable {
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x505766c3aef3ea43cf7e1bf9620e52607d45885e.sol(4)


