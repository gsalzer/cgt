Processing contract: /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol:CryptoGain
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'CryptoGain':
    |    // This action can't be revert. Use carefully if you know what you do!
    |    function destruct() public onlyOwner {
  > |        admin.transfer(this.balance);
    |        is_alive = false; // <- this action is fully destroy contract
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(71)

[31mViolation[0m for DAOConstantGas in contract 'CryptoGain':
    |    function reset() public onlyOwner {
    |        require(block.timestamp > start_ts + week_seconds); //only after week of inactivity
  > |        admin.transfer(price_ticket.mul(last_slot));
    |        restart();
    |
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(77)

[33mWarning[0m for DAOConstantGas in contract 'CryptoGain':
    |        var amount = balances[msg.sender];
    |        balances[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(151)

[33mWarning[0m for LockedEther in contract 'CryptoGain':
    |
    |
  > |contract CryptoGain {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(27)

[31mViolation[0m for TODAmount in contract 'CryptoGain':
    |    // This action can't be revert. Use carefully if you know what you do!
    |    function destruct() public onlyOwner {
  > |        admin.transfer(this.balance);
    |        is_alive = false; // <- this action is fully destroy contract
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(71)

[31mViolation[0m for TODAmount in contract 'CryptoGain':
    |    function reset() public onlyOwner {
    |        require(block.timestamp > start_ts + week_seconds); //only after week of inactivity
  > |        admin.transfer(price_ticket.mul(last_slot));
    |        restart();
    |
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(77)

[31mViolation[0m for TODReceiver in contract 'CryptoGain':
    |    // This action can't be revert. Use carefully if you know what you do!
    |    function destruct() public onlyOwner {
  > |        admin.transfer(this.balance);
    |        is_alive = false; // <- this action is fully destroy contract
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(71)

[31mViolation[0m for TODReceiver in contract 'CryptoGain':
    |    function reset() public onlyOwner {
    |        require(block.timestamp > start_ts + week_seconds); //only after week of inactivity
  > |        admin.transfer(price_ticket.mul(last_slot));
    |        restart();
    |
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(77)

[33mWarning[0m for TODReceiver in contract 'CryptoGain':
    |        var amount = balances[msg.sender];
    |        balances[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(151)

[33mWarning[0m for UnhandledException in contract 'CryptoGain':
    |    // This action can't be revert. Use carefully if you know what you do!
    |    function destruct() public onlyOwner {
  > |        admin.transfer(this.balance);
    |        is_alive = false; // <- this action is fully destroy contract
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(71)

[33mWarning[0m for UnhandledException in contract 'CryptoGain':
    |    function reset() public onlyOwner {
    |        require(block.timestamp > start_ts + week_seconds); //only after week of inactivity
  > |        admin.transfer(price_ticket.mul(last_slot));
    |        restart();
    |
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(77)

[33mWarning[0m for UnhandledException in contract 'CryptoGain':
    |    function playout() internal {
    |        
  > |        bytes20 hash = ripemd160(block.timestamp, block.number, msg.sender);
    |        
    |        uint8 current_winner_slot = 0;
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(123)

[33mWarning[0m for UnhandledException in contract 'CryptoGain':
    |        var amount = balances[msg.sender];
    |        balances[msg.sender] = 0;
  > |        msg.sender.transfer(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(151)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoGain':
    |    // This action can't be revert. Use carefully if you know what you do!
    |    function destruct() public onlyOwner {
  > |        admin.transfer(this.balance);
    |        is_alive = false; // <- this action is fully destroy contract
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(71)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoGain':
    |    function reset() public onlyOwner {
    |        require(block.timestamp > start_ts + week_seconds); //only after week of inactivity
  > |        admin.transfer(price_ticket.mul(last_slot));
    |        restart();
    |
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CryptoGain':
    |    function playout() internal {
    |        
  > |        bytes20 hash = ripemd160(block.timestamp, block.number, msg.sender);
    |        
    |        uint8 current_winner_slot = 0;
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGain':
    |
    |
  > |contract CryptoGain {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGain':
    |    
    |    function restart() internal {
  > |        start_ts = block.timestamp;
    |        last_slot = 0;
    |        delete bids;
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGain':
    |    function restart() internal {
    |        start_ts = block.timestamp;
  > |        last_slot = 0;
    |        delete bids;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGain':
    |        bids.push(Bid(player, last_slot, new_last_slot));
    |        remove_exceed(house_edge.mul(bid_slots_count));
  > |        last_slot = new_last_slot;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGain':
    |            current_winner_slot = ( current_winner_slot + uint8(hash[i]) ) % max_slots;
    |            address current_winner_address = search_winner_bid_address(current_winner_slot);
  > |            balances[current_winner_address] = balances[current_winner_address].add(win_reward);
    |        }
    |        restart();
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGain':
    |    
    |    function remove_exceed(uint256 amount) internal {
  > |        balances[admin] = balances[admin].add(amount);
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGain':
    |        require(balances[msg.sender] > 0);
    |        var amount = balances[msg.sender];
  > |        balances[msg.sender] = 0;
    |        msg.sender.transfer(amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGain':
    |
    |    function set_admin(address newAdmin) public onlyOwner {
  > |        admin = newAdmin;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(65)

[33mWarning[0m for UnrestrictedWrite in contract 'CryptoGain':
    |    function destruct() public onlyOwner {
    |        admin.transfer(this.balance);
  > |        is_alive = false; // <- this action is fully destroy contract
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(72)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x6c940a8d477922f1cffe012449321098e06db3f7.sol(7)


