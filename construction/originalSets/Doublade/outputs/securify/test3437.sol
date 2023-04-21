Processing contract: /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol:EIP20Token
Processing contract: /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol:HubTokenPurchase
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol:Ownable
[33mWarning[0m for DAOConstantGas in contract 'HubTokenPurchase':
    |    uint minor_fee = transfer_amount * 14 / 1035;
    |
  > |    require(major_partner_address.call.gas(gas).value(major_fee)());
    |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(76)

[33mWarning[0m for DAOConstantGas in contract 'HubTokenPurchase':
    |
    |    require(major_partner_address.call.gas(gas).value(major_fee)());
  > |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
    |    // Send the rest
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(77)

[33mWarning[0m for DAOConstantGas in contract 'HubTokenPurchase':
    |    // Send the rest
    |    uint purchase_amount = transfer_amount - major_fee - minor_fee;
  > |    require(purchase_address.call.gas(gas).value(purchase_amount)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(81)

[33mWarning[0m for DAOConstantGas in contract 'HubTokenPurchase':
    |  // However, we include this function to avoid stuck value by some unknown mishap.
    |  function emergency_withdraw() public onlyOwner {
  > |    require(msg.sender.call.gas(gas).value(address(this).balance)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(99)

[33mWarning[0m for LockedEther in contract 'HubTokenPurchase':
    |
    |// The owner of this contract should be an externally owned account
  > |contract HubTokenPurchase is Ownable {
    |
    |  // Address of the target contract
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(53)

[31mViolation[0m for MissingInputValidation in contract 'HubTokenPurchase':
    |  // @dev This allows transfers to multisigs that use more than 2300 gas in their fallback function.
    |  //  
  > |  function set_transfer_gas(uint transfer_gas) public onlyOwner {
    |    gas = transfer_gas;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'HubTokenPurchase':
    |
    |  // We can use this function to move unwanted tokens in the contract
  > |  function approve_unwanted_tokens(EIP20Token token, address dest, uint value) public onlyOwner {
    |    token.approve(dest, value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(92)

[33mWarning[0m for MissingInputValidation in contract 'HubTokenPurchase':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'HubTokenPurchase':
    |   * @param newOwner The address to transfer ownership to. 
    |   */
  > |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'HubTokenPurchase':
    |
    |  // Address of the target contract
  > |  address public purchase_address = 0xcc04AF825eEf340e99710D4366e3021F8d82F42A;
    |  // Major partner address
    |  address public major_partner_address = 0x212286e36Ae998FAd27b627EB326107B3aF1FeD4;
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'HubTokenPurchase':
    |  address public purchase_address = 0xcc04AF825eEf340e99710D4366e3021F8d82F42A;
    |  // Major partner address
  > |  address public major_partner_address = 0x212286e36Ae998FAd27b627EB326107B3aF1FeD4;
    |  // Minor partner address
    |  address public minor_partner_address = 0x515962688858eD980EB2Db2b6fA2802D9f620C6d;
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'HubTokenPurchase':
    |  address public major_partner_address = 0x212286e36Ae998FAd27b627EB326107B3aF1FeD4;
    |  // Minor partner address
  > |  address public minor_partner_address = 0x515962688858eD980EB2Db2b6fA2802D9f620C6d;
    |  // Additional gas used for transfers.
    |  uint public gas = 1000;
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'HubTokenPurchase':
    |  address public minor_partner_address = 0x515962688858eD980EB2Db2b6fA2802D9f620C6d;
    |  // Additional gas used for transfers.
  > |  uint public gas = 1000;
    |
    |  // Payments to this contract require a bit of gas. 100k should be enough.
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'HubTokenPurchase':
    |
    |  // Transfer some funds to the target purchase address.
  > |  function execute_transfer(uint transfer_amount) internal {
    |    // Major fee is 1.4 for each 1035
    |    uint major_fee = transfer_amount * 21 / 1035;
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(70)

[33mWarning[0m for MissingInputValidation in contract 'HubTokenPurchase':
    |  // This contract is designed to have no balance.
    |  // However, we include this function to avoid stuck value by some unknown mishap.
  > |  function emergency_withdraw() public onlyOwner {
    |    require(msg.sender.call.gas(gas).value(address(this).balance)());
    |  }
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(98)

[31mViolation[0m for TODAmount in contract 'HubTokenPurchase':
    |  // However, we include this function to avoid stuck value by some unknown mishap.
    |  function emergency_withdraw() public onlyOwner {
  > |    require(msg.sender.call.gas(gas).value(address(this).balance)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(99)

[33mWarning[0m for TODAmount in contract 'HubTokenPurchase':
    |    uint minor_fee = transfer_amount * 14 / 1035;
    |
  > |    require(major_partner_address.call.gas(gas).value(major_fee)());
    |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(76)

[33mWarning[0m for TODAmount in contract 'HubTokenPurchase':
    |
    |    require(major_partner_address.call.gas(gas).value(major_fee)());
  > |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
    |    // Send the rest
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(77)

[33mWarning[0m for TODAmount in contract 'HubTokenPurchase':
    |    // Send the rest
    |    uint purchase_amount = transfer_amount - major_fee - minor_fee;
  > |    require(purchase_address.call.gas(gas).value(purchase_amount)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(81)

[33mWarning[0m for TODReceiver in contract 'HubTokenPurchase':
    |    uint minor_fee = transfer_amount * 14 / 1035;
    |
  > |    require(major_partner_address.call.gas(gas).value(major_fee)());
    |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(76)

[33mWarning[0m for TODReceiver in contract 'HubTokenPurchase':
    |
    |    require(major_partner_address.call.gas(gas).value(major_fee)());
  > |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
    |    // Send the rest
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(77)

[33mWarning[0m for TODReceiver in contract 'HubTokenPurchase':
    |    // Send the rest
    |    uint purchase_amount = transfer_amount - major_fee - minor_fee;
  > |    require(purchase_address.call.gas(gas).value(purchase_amount)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(81)

[33mWarning[0m for TODReceiver in contract 'HubTokenPurchase':
    |  // However, we include this function to avoid stuck value by some unknown mishap.
    |  function emergency_withdraw() public onlyOwner {
  > |    require(msg.sender.call.gas(gas).value(address(this).balance)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(99)

[33mWarning[0m for UnhandledException in contract 'HubTokenPurchase':
    |    uint minor_fee = transfer_amount * 14 / 1035;
    |
  > |    require(major_partner_address.call.gas(gas).value(major_fee)());
    |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(76)

[33mWarning[0m for UnhandledException in contract 'HubTokenPurchase':
    |
    |    require(major_partner_address.call.gas(gas).value(major_fee)());
  > |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
    |    // Send the rest
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(77)

[33mWarning[0m for UnhandledException in contract 'HubTokenPurchase':
    |    // Send the rest
    |    uint purchase_amount = transfer_amount - major_fee - minor_fee;
  > |    require(purchase_address.call.gas(gas).value(purchase_amount)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(81)

[33mWarning[0m for UnhandledException in contract 'HubTokenPurchase':
    |  // We can use this function to move unwanted tokens in the contract
    |  function approve_unwanted_tokens(EIP20Token token, address dest, uint value) public onlyOwner {
  > |    token.approve(dest, value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(93)

[33mWarning[0m for UnhandledException in contract 'HubTokenPurchase':
    |  // However, we include this function to avoid stuck value by some unknown mishap.
    |  function emergency_withdraw() public onlyOwner {
  > |    require(msg.sender.call.gas(gas).value(address(this).balance)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(99)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'HubTokenPurchase':
    |    uint minor_fee = transfer_amount * 14 / 1035;
    |
  > |    require(major_partner_address.call.gas(gas).value(major_fee)());
    |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(76)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'HubTokenPurchase':
    |
    |    require(major_partner_address.call.gas(gas).value(major_fee)());
  > |    require(minor_partner_address.call.gas(gas).value(minor_fee)());
    |
    |    // Send the rest
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(77)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'HubTokenPurchase':
    |    // Send the rest
    |    uint purchase_amount = transfer_amount - major_fee - minor_fee;
  > |    require(purchase_address.call.gas(gas).value(purchase_amount)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(81)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HubTokenPurchase':
    |  // We can use this function to move unwanted tokens in the contract
    |  function approve_unwanted_tokens(EIP20Token token, address dest, uint value) public onlyOwner {
  > |    token.approve(dest, value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HubTokenPurchase':
    |  // However, we include this function to avoid stuck value by some unknown mishap.
    |  function emergency_withdraw() public onlyOwner {
  > |    require(msg.sender.call.gas(gas).value(address(this).balance)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'HubTokenPurchase':
    |  function transferOwnership(address newOwner) onlyOwner public {
    |    require(newOwner != address(0));
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(31)

[33mWarning[0m for UnrestrictedWrite in contract 'HubTokenPurchase':
    |  //  
    |  function set_transfer_gas(uint transfer_gas) public onlyOwner {
  > |    gas = transfer_gas;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe14eac83b3bb1bb7b265bf298c348264f8399834.sol(88)


