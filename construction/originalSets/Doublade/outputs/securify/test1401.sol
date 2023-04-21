Processing contract: /home/jiaming/mavs_srcs/contract@0x58dfcfbd7955a67287eb0e4ba38a233c6f0f8012.sol:MultiSendEth
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'MultiSendEth':
    |        while (i < dests.length) {
    |            require(this.balance>=values[i]);
  > |            dests[i].transfer(values[i]);
    |            i++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x58dfcfbd7955a67287eb0e4ba38a233c6f0f8012.sol(16)

[33mWarning[0m for UnhandledException in contract 'MultiSendEth':
    |        while (i < dests.length) {
    |            require(this.balance>=values[i]);
  > |            dests[i].transfer(values[i]);
    |            i++;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x58dfcfbd7955a67287eb0e4ba38a233c6f0f8012.sol(16)


