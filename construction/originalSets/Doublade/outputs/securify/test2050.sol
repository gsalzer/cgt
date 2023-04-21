Processing contract: /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol:ERC20Basic
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol:FlexiFarmv2
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol:FreeItemFarm
Processing contract: /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol:Item_token
Processing contract: /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC20Basic':
    |
    |
  > |contract ERC20Basic {
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(4)

[31mViolation[0m for LockedEther in contract 'FlexiFarmv2':
    |    The result is the amount you have in the contract.*/   
    |
  > |contract FlexiFarmv2 is Ownable {
    |    using SafeMath for uint256;
    |    
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(95)

[33mWarning[0m for UnhandledException in contract 'FlexiFarmv2':
    |
    |      for(uint256 i = 0; i < shop_addresses.length; i++){        
  > |          FreeItemFarm(shop_addresses[i]).buyObject(this);              
    |      } 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(141)

[33mWarning[0m for UnhandledException in contract 'FlexiFarmv2':
    |                               
    |      for (uint256 i = 0; i < buy_amount; i++) {
  > |            require(shop_address.call.gas(26290).value(0)() == true);
    |      }
    |      tokenInventory[msg.sender][token_address] = tokenInventory[msg.sender][token_address].add(buy_amount);   
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(165)

[33mWarning[0m for UnhandledException in contract 'FlexiFarmv2':
    |        uint256 tokenbal = tokenInventory[msg.sender][token_address].mul(1 ether);
    |        tokenInventory[msg.sender][token_address] = 0;
  > |        Item_token(token_address).transfer(msg.sender, tokenbal);        
    |    }  
    |
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(180)

[33mWarning[0m for UnhandledException in contract 'FlexiFarmv2':
    |      address token_address = shops[shop_address]; 
    |      for (uint256 i = 0; i < buy_amount; i++) {
  > |            require(shop_address.call.gas(gas_amount).value(0)() == true);
    |      }
    |      tokenInventory[msg.sender][token_address] = tokenInventory[msg.sender][token_address].add(buy_amount); 
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexiFarmv2':
    |
    |      for(uint256 i = 0; i < shop_addresses.length; i++){        
  > |          FreeItemFarm(shop_addresses[i]).buyObject(this);              
    |      } 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(141)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexiFarmv2':
    |                               
    |      for (uint256 i = 0; i < buy_amount; i++) {
  > |            require(shop_address.call.gas(26290).value(0)() == true);
    |      }
    |      tokenInventory[msg.sender][token_address] = tokenInventory[msg.sender][token_address].add(buy_amount);   
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexiFarmv2':
    |        uint256 tokenbal = tokenInventory[msg.sender][token_address].mul(1 ether);
    |        tokenInventory[msg.sender][token_address] = 0;
  > |        Item_token(token_address).transfer(msg.sender, tokenbal);        
    |    }  
    |
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'FlexiFarmv2':
    |      address token_address = shops[shop_address]; 
    |      for (uint256 i = 0; i < buy_amount; i++) {
  > |            require(shop_address.call.gas(gas_amount).value(0)() == true);
    |      }
    |      tokenInventory[msg.sender][token_address] = tokenInventory[msg.sender][token_address].add(buy_amount); 
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(203)

[31mViolation[0m for UnrestrictedWrite in contract 'FlexiFarmv2':
    |    modifier nonReentrant() {
    |        require(!reentrancy_lock);
  > |        reentrancy_lock = true;
    |        _;
    |        reentrancy_lock = false;
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(108)

[31mViolation[0m for UnrestrictedWrite in contract 'FlexiFarmv2':
    |        reentrancy_lock = true;
    |        _;
  > |        reentrancy_lock = false;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(110)

[31mViolation[0m for UnrestrictedWrite in contract 'FlexiFarmv2':
    |
    |      for(uint256 i = 0; i < shop_addresses.length; i++){        
  > |          shops[shop_addresses[i]] = token_addresses[i];              
    |      } 
    |    }
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexiFarmv2':
    |            require(shop_address.call.gas(26290).value(0)() == true);
    |      }
  > |      tokenInventory[msg.sender][token_address] = tokenInventory[msg.sender][token_address].add(buy_amount);   
    |    } 
    |
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(167)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexiFarmv2':
    |        require(tokenInventory[msg.sender][token_address] > 0);
    |        uint256 tokenbal = tokenInventory[msg.sender][token_address].mul(1 ether);
  > |        tokenInventory[msg.sender][token_address] = 0;
    |        Item_token(token_address).transfer(msg.sender, tokenbal);        
    |    }  
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(179)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexiFarmv2':
    |            require(shop_address.call.gas(gas_amount).value(0)() == true);
    |      }
  > |      tokenInventory[msg.sender][token_address] = tokenInventory[msg.sender][token_address].add(buy_amount); 
    |    } 
    |}
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexiFarmv2':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexiFarmv2':
    |    modifier nonReentrant() {
    |        require(!reentrancy_lock);
  > |        reentrancy_lock = true;
    |        _;
    |        reentrancy_lock = false;
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(108)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexiFarmv2':
    |   
    |    function set_Gas(uint256 gas_val) onlyOwner external{
  > |      gas_amount = gas_val;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'FlexiFarmv2':
    |    
    |    function set_Total(uint256 buy_val) onlyOwner external{
  > |      total_buy = buy_val;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(120)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(42)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |   * @param newOwner The address to transfer ownership to.
    |   */
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(72)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x85d29c8126fa8ce5fe26e558feba5969fd0b2660.sol(18)


