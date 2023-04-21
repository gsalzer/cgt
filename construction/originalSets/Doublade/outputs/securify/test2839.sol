Processing contract: /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol:Magic10
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Magic10':
    |        
    |        // 5% goes to the company budget
  > |        company.transfer(msg.value / 20);
    |        
    |        // Referral percent
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(96)

[33mWarning[0m for DAOConstantGas in contract 'Magic10':
    |        // Referral receive reward according current reward percent if he is in list.
    |        if(referralList[_referral] && _referral != msg.sender) {
  > |            _referral.transfer(msg.value * refferalPercent/ 100);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(103)

[33mWarning[0m for DAOConstantGas in contract 'Magic10':
    |        
    |        // Transfer reward to investor
  > |        deposit.owner.transfer(reward);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(124)

[31mViolation[0m for MissingInputValidation in contract 'Magic10':
    |    // Notice, start index for all deposits is 1.
    |    // List of all deposits
  > |    mapping(uint64 => Deposit) public deposits;
    |    
    |    // List of all deposits by each investor
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'Magic10':
    |    // List of all deposits by each investor
    |    // Implemented to enable quick access to investor deposits even without server caching
  > |    mapping(address => mapping(uint64 => uint64)) public investorsToDeposit;
    |    
    |    // Count of deposits by each investor
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'Magic10':
    |    
    |    // Count of deposits by each investor
  > |    mapping(address => uint16) public depositsByInvestor;
    |    
    |    // List of registered referrals
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'Magic10':
    |    
    |    // List of registered referrals
  > |    mapping(address => bool) public referralList;
    |    
    |    // Total number of deposits
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'Magic10':
    |    
    |    // Create a new deposit
  > |    function createDeposit(address _referral) external payable {
    |        
    |        // Minimal deposit is 1 finney
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Magic10':
    |    
    |    // Function for withdraw
  > |    function withdrawPercents(uint64 _depositId) external {
    |        
    |        // Get deposit information
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(108)

[31mViolation[0m for MissingInputValidation in contract 'Magic10':
    |
    |    // Referal registration
  > |    function registerReferral(address _refferal) external {
    |        // Available from this address only 
    |        require(msg.sender == 0x21b4d32e6875a6c2e44032da71a33438bbae8820);
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'Magic10':
    |    
    |    // Calcaulating current reward by deposit ID
  > |    function currentReward(uint64 _depositId)
    |        view 
    |        public 
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(144)

[33mWarning[0m for MissingInputValidation in contract 'Magic10':
    |pragma solidity ^0.4.24;
    |
  > |contract Magic10 {
    |    
    |    // Timer of percentage increasing 
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'Magic10':
    |    
    |    // Timer of percentage increasing 
  > |	uint256 public periodLength = 7 days;
    |	
    |	// We need to work with fractional percents like 0.7%, so we need to devide by 1000 before multiply the number
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Magic10':
    |	// We need to work with fractional percents like 0.7%, so we need to devide by 1000 before multiply the number
    |	// Each variable which calculated with this value has a prefix Decimal
  > |	uint256 public percentDecimals = 3;
    |	
    |	// Percents calculation using percentDecimals 2% = 20
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'Magic10':
    |	
    |	// Percents calculation using percentDecimals 2% = 20
  > |	uint256 public startDecimalPercent = 20;
    |
    |    // Additional percent for completed period is 0.3% = 3
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'Magic10':
    |
    |    // Additional percent for completed period is 0.3% = 3
  > |	uint256 public bonusDecimalPercentByPeriod = 3; 
    |	
    |	// Maximal percent is 5% = 50
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Magic10':
    |	
    |	// Maximal percent is 5% = 50
  > |	uint256 public maximalDecimalPercent = 50;
    |
    |    // Structure of deposit
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Magic10':
    |    
    |    // Total number of deposits
  > |    uint64 public depositsCount = 0;
    |    
    |    
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'Magic10':
    |    
    |    // Referral percent calculating by contract balance
  > |    function currentReferralPercent() 
    |        view 
    |        public 
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(186)

[33mWarning[0m for TODReceiver in contract 'Magic10':
    |        
    |        // 5% goes to the company budget
  > |        company.transfer(msg.value / 20);
    |        
    |        // Referral percent
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(96)

[33mWarning[0m for TODReceiver in contract 'Magic10':
    |        // Referral receive reward according current reward percent if he is in list.
    |        if(referralList[_referral] && _referral != msg.sender) {
  > |            _referral.transfer(msg.value * refferalPercent/ 100);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(103)

[33mWarning[0m for UnhandledException in contract 'Magic10':
    |        
    |        // 5% goes to the company budget
  > |        company.transfer(msg.value / 20);
    |        
    |        // Referral percent
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(96)

[33mWarning[0m for UnhandledException in contract 'Magic10':
    |        // Referral receive reward according current reward percent if he is in list.
    |        if(referralList[_referral] && _referral != msg.sender) {
  > |            _referral.transfer(msg.value * refferalPercent/ 100);
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(103)

[33mWarning[0m for UnhandledException in contract 'Magic10':
    |        
    |        // Transfer reward to investor
  > |        deposit.owner.transfer(reward);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Magic10':
    |        
    |        // Transfer reward to investor
  > |        deposit.owner.transfer(reward);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(124)

[31mViolation[0m for UnrestrictedWrite in contract 'Magic10':
    |        
    |        // Saving deposit into current ID
  > |        deposits[depositId] = _deposit;
    |        
    |        // Adding deposit ID into list of deposits for current investor
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'Magic10':
    |        
    |        // Increment global count of deposits
  > |        depositsCount++;
    |        
    |        //
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'Magic10':
    |        
    |        // Adding deposit ID into list of deposits for current investor
  > |        investorsToDeposit[msg.sender][depositIdByInvestor] = depositId;
    |        
    |        //
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'Magic10':
    |        
    |        // Increment count of deposits for current investor
  > |        depositsByInvestor[msg.sender]++;
    |        
    |        // Increment global count of deposits
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'Magic10':
    |        // Refresh deposit time and save it
    |        deposit.timeFrom = uint64(now);
  > |        deposits[_depositId] = deposit;
    |        
    |        // Transfer reward to investor
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(121)

[33mWarning[0m for UnrestrictedWrite in contract 'Magic10':
    |        require(msg.sender == 0x21b4d32e6875a6c2e44032da71a33438bbae8820);
    |        
  > |        referralList[_refferal] = true;
    |    }
    |    
  at /home/jiaming/mavs_srcs/contract@0xba28324ca4c494f9bbed0619aabe8c43e237a9d6.sol(132)


