Processing contract: /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol:VIUREFoundersTokenSale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'VIUREFoundersTokenSale':
    |    if (this.balance == 0) throw;
    |
  > |    if (!project_wallet.send(this.balance)) throw;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(76)

[33mWarning[0m for DAOConstantGas in contract 'VIUREFoundersTokenSale':
    |    balances[msg.sender] = 0;
    |
  > |    if (!msg.sender.send(refund_amount)) {
    |    if (!msg.sender.send(refund_amount)) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(92)

[33mWarning[0m for DAOConstantGas in contract 'VIUREFoundersTokenSale':
    |
    |    if (!msg.sender.send(refund_amount)) {
  > |    if (!msg.sender.send(refund_amount)) throw;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(93)

[33mWarning[0m for DAOConstantGas in contract 'VIUREFoundersTokenSale':
    |
    |    if (this.balance == 0) throw;
  > |    if (!project_wallet.send(this.balance)) throw;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(103)

[33mWarning[0m for LockedEther in contract 'VIUREFoundersTokenSale':
    |pragma solidity ^0.4.6;
    |
  > |contract VIUREFoundersTokenSale {
    |  mapping (address => uint) public balances;
    |
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |
    |contract VIUREFoundersTokenSale {
  > |  mapping (address => uint) public balances;
    |
    |  uint public transferred_total = 0;
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  mapping (address => uint) public balances;
    |
  > |  uint public transferred_total = 0;
    |
    |  uint public constant min_goal_amount = 4000 ether;
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  uint public transferred_total = 0;
    |
  > |  uint public constant min_goal_amount = 4000 ether;
    |  uint public constant max_goal_amount = 7000 ether;
    |
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |
    |  uint public constant min_goal_amount = 4000 ether;
  > |  uint public constant max_goal_amount = 7000 ether;
    |
    |  address public project_wallet;
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  uint public constant max_goal_amount = 7000 ether;
    |
  > |  address public project_wallet;
    |
    |  uint public token_sale_start_block;
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  address public project_wallet;
    |
  > |  uint public token_sale_start_block;
    |  uint public token_sale_end_block;
    |
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |
    |  uint public token_sale_start_block;
  > |  uint public token_sale_end_block;
    |
    |  uint constant blocks_in_two_months = 351558;
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  uint constant blocks_in_two_months = 351558;
    |
  > |  uint public refund_window_end_block;
    |
    |  function VIUREFoundersTokenSale(uint _start_block, uint _end_block, address _project_wallet) {
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  }
    |
  > |  function has_token_sale_started() private constant returns (bool) {
    |    return block.number >= token_sale_start_block;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  }
    |
  > |  function has_token_sale_time_ended() private constant returns (bool) {
    |    return block.number > token_sale_end_block;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  }
    |
  > |  function is_min_goal_reached() private constant returns (bool) {
    |    return transferred_total >= min_goal_amount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  }
    |
  > |  function is_max_goal_reached() private constant returns (bool) {
    |    return transferred_total >= max_goal_amount;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  }
    |
  > |  function transfer_funds_to_project() {
    |    if (!is_min_goal_reached()) throw;
    |    
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  }
    |
  > |  function refund() {
    |    if (!has_token_sale_time_ended()) throw;
    |
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'VIUREFoundersTokenSale':
    |  }
    |
  > |  function transfer_remaining_funds_to_project() {
    |    if (!has_token_sale_time_ended()) throw;
    |    if (is_min_goal_reached()) throw;
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(97)

[31mViolation[0m for TODAmount in contract 'VIUREFoundersTokenSale':
    |    if (this.balance == 0) throw;
    |
  > |    if (!project_wallet.send(this.balance)) throw;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(76)

[31mViolation[0m for TODAmount in contract 'VIUREFoundersTokenSale':
    |
    |    if (this.balance == 0) throw;
  > |    if (!project_wallet.send(this.balance)) throw;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(103)

[33mWarning[0m for TODReceiver in contract 'VIUREFoundersTokenSale':
    |    if (this.balance == 0) throw;
    |
  > |    if (!project_wallet.send(this.balance)) throw;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(76)

[33mWarning[0m for TODReceiver in contract 'VIUREFoundersTokenSale':
    |    balances[msg.sender] = 0;
    |
  > |    if (!msg.sender.send(refund_amount)) {
    |    if (!msg.sender.send(refund_amount)) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(92)

[33mWarning[0m for TODReceiver in contract 'VIUREFoundersTokenSale':
    |
    |    if (!msg.sender.send(refund_amount)) {
  > |    if (!msg.sender.send(refund_amount)) throw;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(93)

[33mWarning[0m for TODReceiver in contract 'VIUREFoundersTokenSale':
    |
    |    if (this.balance == 0) throw;
  > |    if (!project_wallet.send(this.balance)) throw;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(103)

[33mWarning[0m for UnhandledException in contract 'VIUREFoundersTokenSale':
    |    if (this.balance == 0) throw;
    |
  > |    if (!project_wallet.send(this.balance)) throw;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(76)

[33mWarning[0m for UnhandledException in contract 'VIUREFoundersTokenSale':
    |    balances[msg.sender] = 0;
    |
  > |    if (!msg.sender.send(refund_amount)) {
    |    if (!msg.sender.send(refund_amount)) throw;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(92)

[33mWarning[0m for UnhandledException in contract 'VIUREFoundersTokenSale':
    |
    |    if (!msg.sender.send(refund_amount)) {
  > |    if (!msg.sender.send(refund_amount)) throw;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(93)

[33mWarning[0m for UnhandledException in contract 'VIUREFoundersTokenSale':
    |
    |    if (this.balance == 0) throw;
  > |    if (!project_wallet.send(this.balance)) throw;
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'VIUREFoundersTokenSale':
    |    if (refund_amount == 0) throw;
    |
  > |    balances[msg.sender] = 0;
    |
    |    if (!msg.sender.send(refund_amount)) {
  at /home/jiaming/mavs_srcs/contract@0x4f634dc221ad8c1b65c23f2782f209fda5712fc2.sol(90)


