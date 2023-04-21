Processing contract: /home/jiaming/mavs_srcs/contract@0x05aa0d3feec41af089bf1cbbb2c33dd90d648fce.sol:ClearCoinAdExchange
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for LockedEther in contract 'ClearCoinAdExchange':
    |pragma solidity ^0.4.24;
    |
  > |contract ClearCoinAdExchange {
    |    
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x05aa0d3feec41af089bf1cbbb2c33dd90d648fce.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ClearCoinAdExchange':
    |pragma solidity ^0.4.24;
    |
  > |contract ClearCoinAdExchange {
    |    
    |    /*
  at /home/jiaming/mavs_srcs/contract@0x05aa0d3feec41af089bf1cbbb2c33dd90d648fce.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'ClearCoinAdExchange':
    |        uint256[] categories
    |    ) public {
  > |        line_items[msg.sender] = LineItem({
    |            budget: 0,
    |            destination_url: destination_url,
  at /home/jiaming/mavs_srcs/contract@0x05aa0d3feec41af089bf1cbbb2c33dd90d648fce.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'ClearCoinAdExchange':
    |    
    |    function deactivateLineItem() public lineItemExists {
  > |        line_items[msg.sender].active = false;
    |        
    |        emit lineItemDeactivated(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x05aa0d3feec41af089bf1cbbb2c33dd90d648fce.sol(80)

[33mWarning[0m for UnrestrictedWrite in contract 'ClearCoinAdExchange':
    |    
    |    function activateLineItem() public lineItemExists {
  > |        line_items[msg.sender].active = true;
    |        
    |        emit lineItemActivated(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x05aa0d3feec41af089bf1cbbb2c33dd90d648fce.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'ClearCoinAdExchange':
    |    
    |    function deactivateAdSlot() public adSlotExists {
  > |        ad_slots[msg.sender].active = false;
    |        
    |        emit adSlotDeactivated(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x05aa0d3feec41af089bf1cbbb2c33dd90d648fce.sol(135)

[33mWarning[0m for UnrestrictedWrite in contract 'ClearCoinAdExchange':
    |    
    |    function activateAdSlot() public adSlotExists {
  > |        ad_slots[msg.sender].active = true;
    |        
    |        emit adSlotActivated(msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x05aa0d3feec41af089bf1cbbb2c33dd90d648fce.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'ClearCoinAdExchange':
    |
    |    function changeOwner(address new_owner) public onlyOwner {
  > |        owner = new_owner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x05aa0d3feec41af089bf1cbbb2c33dd90d648fce.sol(29)


