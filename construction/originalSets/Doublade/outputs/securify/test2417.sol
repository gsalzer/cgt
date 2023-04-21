Processing contract: /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol:Delta
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Delta':
    |        uint sum2 = msg.value * 3 / 10;           
    |
  > |        owner2.send(sum2);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(48)

[33mWarning[0m for DAOConstantGas in contract 'Delta':
    |          balance = this.balance;
    |          if(_amount > 0) balance = _amount;
  > |          owner.send(balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(58)

[33mWarning[0m for LockedEther in contract 'Delta':
    |// ----------------------------------------------------------------------------------------------
    |   
  > |contract Delta {     
    |
    |	address public c = 0xF85A2E95FA30d005F629cBe6c6d2887D979ffF2A; 
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'Delta':
    |
    |      //Change token
  > |      function change_token_price(uint256 _token_price) onlyOwner returns (bool result) {
    |        token_price = _token_price;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'Delta':
    |
    |      //Change active
  > |      function change_active(uint256 _active) onlyOwner returns (bool result) {
    |        active = _active;
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'Delta':
    |contract Delta {     
    |
  > |	address public c = 0xF85A2E95FA30d005F629cBe6c6d2887D979ffF2A; 
    |	address public owner = 0x788c45dd60ae4dbe5055b5ac02384d5dc84677b0;	
    |	address public owner2 = 0x0C6561edad2017c01579Fd346a58197ea01A0Cf3;	
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'Delta':
    |
    |	address public c = 0xF85A2E95FA30d005F629cBe6c6d2887D979ffF2A; 
  > |	address public owner = 0x788c45dd60ae4dbe5055b5ac02384d5dc84677b0;	
    |	address public owner2 = 0x0C6561edad2017c01579Fd346a58197ea01A0Cf3;	
    |	uint public active = 1;	
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Delta':
    |	address public c = 0xF85A2E95FA30d005F629cBe6c6d2887D979ffF2A; 
    |	address public owner = 0x788c45dd60ae4dbe5055b5ac02384d5dc84677b0;	
  > |	address public owner2 = 0x0C6561edad2017c01579Fd346a58197ea01A0Cf3;	
    |	uint public active = 1;	
    |
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Delta':
    |	address public owner = 0x788c45dd60ae4dbe5055b5ac02384d5dc84677b0;	
    |	address public owner2 = 0x0C6561edad2017c01579Fd346a58197ea01A0Cf3;	
  > |	uint public active = 1;	
    |
    |	uint public token_price = 10**18*1/1000; 	
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Delta':
    |	uint public active = 1;	
    |
  > |	uint public token_price = 10**18*1/1000; 	
    |
    |	//default function for buy tokens      
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'Delta':
    |	* Buy tokens
    |	*/
  > |    function tokens_buy() payable returns (bool) {         
    |        
    |        require(active > 0);
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Delta':
    |
    |      //Withdraw money from contract balance to owner
  > |      function withdraw(uint256 _amount) onlyOwner returns (bool result) {
    |          uint256 balance;
    |          balance = this.balance;
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(54)

[31mViolation[0m for TODAmount in contract 'Delta':
    |          balance = this.balance;
    |          if(_amount > 0) balance = _amount;
  > |          owner.send(balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(58)

[33mWarning[0m for TODReceiver in contract 'Delta':
    |          balance = this.balance;
    |          if(_amount > 0) balance = _amount;
  > |          owner.send(balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(58)

[31mViolation[0m for UnhandledException in contract 'Delta':
    |        uint sum2 = msg.value * 3 / 10;           
    |
  > |        owner2.send(sum2);
    |
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(48)

[31mViolation[0m for UnhandledException in contract 'Delta':
    |          balance = this.balance;
    |          if(_amount > 0) balance = _amount;
  > |          owner.send(balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(58)

[33mWarning[0m for UnhandledException in contract 'Delta':
    |        require(tokens_buy > 0);
    |
  > |        if(!c.call(bytes4(sha3("transferFrom(address,address,uint256)")),owner, msg.sender,tokens_buy)){
    |        	return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(42)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Delta':
    |        require(tokens_buy > 0);
    |
  > |        if(!c.call(bytes4(sha3("transferFrom(address,address,uint256)")),owner, msg.sender,tokens_buy)){
    |        	return false;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(42)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Delta':
    |          balance = this.balance;
    |          if(_amount > 0) balance = _amount;
  > |          owner.send(balance);
    |          return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'Delta':
    |      //Change token
    |      function change_token_price(uint256 _token_price) onlyOwner returns (bool result) {
  > |        token_price = _token_price;
    |        return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Delta':
    |      //Change active
    |      function change_active(uint256 _active) onlyOwner returns (bool result) {
  > |        active = _active;
    |        return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x9d06cbafa865037a01d322d3f4222fa3e04e5488.sol(70)


