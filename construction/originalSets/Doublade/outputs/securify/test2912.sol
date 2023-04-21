Processing contract: /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol:eth666
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'eth666':
    |        if(c1 == 0)
    |          uint256 reFundValue = deposited[exitUser];
  > |          exitUser.transfer(a);
    |          deposited[exitUser] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(100)

[33mWarning[0m for LockedEther in contract 'eth666':
    |**/
    |
  > |contract eth666{
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'eth666':
    |    
    |    //if you want to be a partner , contact admin
  > |    function setPartner(address newPartner) external onlyOwner {
    |        partner = newPartner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'eth666':
    |    }
    | 
  > | 	function gameStart(uint num) external onlyOwner{
    | 		isStart = num;
    | 	}
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'eth666':
    |	
    |	//refund to user who misunderstood the game . 'withdrew' must = 0
  > |    function reFund(address exitUser, uint a) external onlyOwner {
    |        uint256 c1 = withdrew[exitUser];
    |        if(c1 == 0)
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'eth666':
    |    }
    |    
  > |	function userDepositedWei(address _address) public view returns (uint256) {
    |		return deposited[_address];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(104)

[31mViolation[0m for MissingInputValidation in contract 'eth666':
    |    }
    |
  > |	function userWithdrewWei(address _address) public view returns (uint256) {
    |		return withdrew[_address];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'eth666':
    |    }
    |
  > |	function userDividendsWei(address _address) public view returns (uint256) {
    |        return deposited[_address] * 666 / 10000 * (block.number - blocklock[_address]) / 5900;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(112)

[31mViolation[0m for MissingInputValidation in contract 'eth666':
    |    }
    |
  > |	function userReferralsWei(address _address) public view returns (uint256) {
    |		return refearned[_address];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(116)

[33mWarning[0m for MissingInputValidation in contract 'eth666':
    |contract eth666{
    |
  > |    address public owner;
    |    address public partner;    
    |    
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'eth666':
    |
    |    address public owner;
  > |    address public partner;    
    |    
    |	mapping (address => uint256) deposited;
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'eth666':
    |	mapping (address => uint256) blocklock;
    |
  > |	uint256 public totalDepositedWei = 0;
    |	uint256 public totalWithdrewWei = 0;
    |	uint256 public investorNum = 0;
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'eth666':
    |
    |	uint256 public totalDepositedWei = 0;
  > |	uint256 public totalWithdrewWei = 0;
    |	uint256 public investorNum = 0;
    |	
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'eth666':
    |	uint256 public totalDepositedWei = 0;
    |	uint256 public totalWithdrewWei = 0;
  > |	uint256 public investorNum = 0;
    |	
    |	//if isStart = 0 !!!!DO NOT INVEST!!!! please wait for gameStart()
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'eth666':
    |	
    |	//if isStart = 0 !!!!DO NOT INVEST!!!! please wait for gameStart()
  > |	uint 	public isStart; 
    |
    |	event invest(address indexed beneficiary, uint amount);
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'eth666':
    |    }
    |
  > |	function bytesToAddress(bytes bys) private pure returns (address addr) {
    |		assembly {
    |			addr := mload(add(bys, 20))
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(120)

[33mWarning[0m for TODAmount in contract 'eth666':
    |        if(c1 == 0)
    |          uint256 reFundValue = deposited[exitUser];
  > |          exitUser.transfer(a);
    |          deposited[exitUser] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(100)

[33mWarning[0m for TODReceiver in contract 'eth666':
    |        if(c1 == 0)
    |          uint256 reFundValue = deposited[exitUser];
  > |          exitUser.transfer(a);
    |          deposited[exitUser] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(100)

[33mWarning[0m for UnhandledException in contract 'eth666':
    |        if(c1 == 0)
    |          uint256 reFundValue = deposited[exitUser];
  > |          exitUser.transfer(a);
    |          deposited[exitUser] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(100)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'eth666':
    |        if(c1 == 0)
    |          uint256 reFundValue = deposited[exitUser];
  > |          exitUser.transfer(a);
    |          deposited[exitUser] = 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(100)

[33mWarning[0m for UnrestrictedWrite in contract 'eth666':
    |    //if you want to be a partner , contact admin
    |    function setPartner(address newPartner) external onlyOwner {
  > |        partner = newPartner;
    |    }
    | 
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'eth666':
    | 
    | 	function gameStart(uint num) external onlyOwner{
  > | 		isStart = num;
    | 	}
    |
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'eth666':
    |          uint256 reFundValue = deposited[exitUser];
    |          exitUser.transfer(a);
  > |          deposited[exitUser] = 0;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xbf91b27fec3146a1b36069f92337a0ea330725df.sol(101)


