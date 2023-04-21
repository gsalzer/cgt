Processing contract: /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol:Presale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |        
    |        // transfer ethers to Vega Round A address
  > |        if (!project_wallet.send(this.balance)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(87)

[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |        
    |        // actual refund
  > |        if (!msg.sender.send(amount)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(105)

[33mWarning[0m for DAOConstantGas in contract 'Presale':
    |        if (this.balance == 0) throw;
    |        // transfer left ETH to Vega Round A address
  > |        if (!project_wallet.send(this.balance)) throw;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(116)

[33mWarning[0m for LockedEther in contract 'Presale':
    |pragma solidity ^0.4.2;
    |
  > |contract Presale {
    |    mapping (address => uint) public balances;
    |    uint public transfered_total = 0;
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Presale':
    |
    |contract Presale {
  > |    mapping (address => uint) public balances;
    |    uint public transfered_total = 0;
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |contract Presale {
    |    mapping (address => uint) public balances;
  > |    uint public transfered_total = 0;
    |    
    |    uint public constant min_goal_amount = 5 ether;
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    uint public transfered_total = 0;
    |    
  > |    uint public constant min_goal_amount = 5 ether;
    |    uint public constant max_goal_amount = 10 ether;
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    
    |    uint public constant min_goal_amount = 5 ether;
  > |    uint public constant max_goal_amount = 10 ether;
    |    
    |    // Vega Fund Round A Address
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    
    |    // Vega Fund Round A Address
  > |    address public project_wallet;
    |
    |    uint public presale_start_block;
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    address public project_wallet;
    |
  > |    uint public presale_start_block;
    |    uint public presale_end_block;
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |
    |    uint public presale_start_block;
  > |    uint public presale_end_block;
    |    
    |    // est. of blocks count in 1 month
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    // block number of the end of refund window, 
    |    // which will occur in the end of 1 month after presale
  > |    uint public refund_window_end_block;
    |    
    |    function Presale(uint _start_block, uint _end_block, address _project_wallet) {
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    }
    |	
  > |    function has_presale_started() private constant returns (bool) {
    |	return block.number >= presale_start_block;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    }
    |    
  > |    function has_presale_time_ended() private constant returns (bool) {
    |        return block.number > presale_end_block;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    }
    |    
  > |    function is_min_goal_reached() private constant returns (bool) {
    |        return transfered_total >= min_goal_amount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    }
    |    
  > |    function is_max_goal_reached() private constant returns (bool) {
    |        return transfered_total >= max_goal_amount;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    
    |    // Transfer ETH to Vega Round A address, as soon as minimum goal is reached.
  > |    function transfer_funds_to_project() {
    |        if (!is_min_goal_reached()) throw;
    |        if (this.balance == 0) throw;
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    // Refund ETH in case minimum goal was not reached during presale.
    |    // Refund will be available for one month window after presale.
  > |    function refund() {
    |        if (!has_presale_time_ended()) throw;
    |        if (is_min_goal_reached()) throw;
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'Presale':
    |    
    |    // In case any ETH has left unclaimed after one month window, send them to Vega Round A address.
  > |    function transfer_left_funds_to_project() {
    |        if (!has_presale_time_ended()) throw;
    |        if (is_min_goal_reached()) throw;
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(109)

[31mViolation[0m for TODAmount in contract 'Presale':
    |        
    |        // transfer ethers to Vega Round A address
  > |        if (!project_wallet.send(this.balance)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(87)

[31mViolation[0m for TODAmount in contract 'Presale':
    |        if (this.balance == 0) throw;
    |        // transfer left ETH to Vega Round A address
  > |        if (!project_wallet.send(this.balance)) throw;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(116)

[33mWarning[0m for TODReceiver in contract 'Presale':
    |        
    |        // transfer ethers to Vega Round A address
  > |        if (!project_wallet.send(this.balance)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(87)

[33mWarning[0m for TODReceiver in contract 'Presale':
    |        
    |        // actual refund
  > |        if (!msg.sender.send(amount)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(105)

[33mWarning[0m for TODReceiver in contract 'Presale':
    |        if (this.balance == 0) throw;
    |        // transfer left ETH to Vega Round A address
  > |        if (!project_wallet.send(this.balance)) throw;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(116)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |        
    |        // transfer ethers to Vega Round A address
  > |        if (!project_wallet.send(this.balance)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(87)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |        
    |        // actual refund
  > |        if (!msg.sender.send(amount)) throw;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(105)

[33mWarning[0m for UnhandledException in contract 'Presale':
    |        if (this.balance == 0) throw;
    |        // transfer left ETH to Vega Round A address
  > |        if (!project_wallet.send(this.balance)) throw;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(116)

[33mWarning[0m for UnrestrictedWrite in contract 'Presale':
    |        
    |        // reset balance
  > |        balances[msg.sender] = 0;
    |        
    |        // actual refund
  at /home/jiaming/mavs_srcs/contract@0xf9735dc96a98f68ac8fe6fccf1e7b9876ddb6b47.sol(102)


