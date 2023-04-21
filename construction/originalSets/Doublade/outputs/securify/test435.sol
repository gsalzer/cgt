Processing contract: /home/jiaming/mavs_srcs/contract@0x1c2389c0b8014be72e11849ec0aa790b03929e18.sol:FundingWallet
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'FundingWallet':
    |            //Prevent brute force
    |            if(msg.value > 1 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1c2389c0b8014be72e11849ec0aa790b03929e18.sol(18)

[33mWarning[0m for LockedEther in contract 'FundingWallet':
    |pragma solidity ^0.4.25;
    |
  > |contract FundingWallet
    |{
    |    bytes32 keyHash;
  at /home/jiaming/mavs_srcs/contract@0x1c2389c0b8014be72e11849ec0aa790b03929e18.sol(3)

[31mViolation[0m for TODAmount in contract 'FundingWallet':
    |            //Prevent brute force
    |            if(msg.value > 1 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1c2389c0b8014be72e11849ec0aa790b03929e18.sol(18)

[33mWarning[0m for TODReceiver in contract 'FundingWallet':
    |            //Prevent brute force
    |            if(msg.value > 1 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1c2389c0b8014be72e11849ec0aa790b03929e18.sol(18)

[33mWarning[0m for UnhandledException in contract 'FundingWallet':
    |            //Prevent brute force
    |            if(msg.value > 1 ether) {
  > |                msg.sender.transfer(address(this).balance);
    |            }
    |        }
  at /home/jiaming/mavs_srcs/contract@0x1c2389c0b8014be72e11849ec0aa790b03929e18.sol(18)

[31mViolation[0m for UnrestrictedWrite in contract 'FundingWallet':
    |    {
    |        if (keyHash == 0x0) {
  > |            keyHash = keccak256(abi.encodePacked(key));
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1c2389c0b8014be72e11849ec0aa790b03929e18.sol(27)

[31mViolation[0m for UnrestrictedWrite in contract 'FundingWallet':
    |    {
    |        if (keyHash == 0x0) {
  > |            keyHash = _keyHash;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x1c2389c0b8014be72e11849ec0aa790b03929e18.sol(35)


