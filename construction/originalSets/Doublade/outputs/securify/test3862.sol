Processing contract: /home/jiaming/mavs_srcs/contract@0xfea71f436ec963507c26f424d93168e4285cd822.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xfea71f436ec963507c26f424d93168e4285cd822.sol:batchTransfer
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0xfea71f436ec963507c26f424d93168e4285cd822.sol(7)

[31mViolation[0m for DAOConstantGas in contract 'batchTransfer':
    |            if(length==1)
    |            {
  > |               myAddresses[0].transfer(value);
    |            }else
    |            {
  at /home/jiaming/mavs_srcs/contract@0xfea71f436ec963507c26f424d93168e4285cd822.sol(68)

[33mWarning[0m for LockedEther in contract 'batchTransfer':
    |
    |
  > |contract batchTransfer {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0xfea71f436ec963507c26f424d93168e4285cd822.sol(50)

[33mWarning[0m for UnhandledException in contract 'batchTransfer':
    |            if(length==1)
    |            {
  > |               myAddresses[0].transfer(value);
    |            }else
    |            {
  at /home/jiaming/mavs_srcs/contract@0xfea71f436ec963507c26f424d93168e4285cd822.sol(68)

[33mWarning[0m for UnhandledException in contract 'batchTransfer':
    |                for(uint256 i=0;i<(length.sub(1));i++)
    |                {
  > |                    myAddresses[i].transfer(distr);
    |                    value = value.sub(distr);
    |                }
  at /home/jiaming/mavs_srcs/contract@0xfea71f436ec963507c26f424d93168e4285cd822.sol(73)

[33mWarning[0m for UnhandledException in contract 'batchTransfer':
    |                    value = value.sub(distr);
    |                }
  > |                myAddresses[myAddresses.length-1].transfer(value);
    |            }
    |            
  at /home/jiaming/mavs_srcs/contract@0xfea71f436ec963507c26f424d93168e4285cd822.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'batchTransfer':
    |            }
    |            
  > |            totalEther = totalEther.add(msg.value);
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xfea71f436ec963507c26f424d93168e4285cd822.sol(79)


