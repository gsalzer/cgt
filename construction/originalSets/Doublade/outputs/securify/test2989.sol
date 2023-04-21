Processing contract: /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol:Bounty
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Bounty':
    |        require(votes_for+votes_against > count_donors*8/10);
    |        bounty_paid = true;
  > |        proposed_beneficiary.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(40)

[33mWarning[0m for DAOConstantGas in contract 'Bounty':
    |        
    |        // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |        msg.sender.transfer(eth_to_withdraw);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(81)

[33mWarning[0m for LockedEther in contract 'Bounty':
    |*/
    |
  > |contract Bounty {
    |    // Track if the bounty has been already paid.
    |    bool public bounty_paid = false;
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'Bounty':
    |    uint256 public count_donors = 0;
    |    // Stores the amount given by every donor.
  > |    mapping (address => uint256) public balances;
    |    // Stores the donor status.
    |    mapping (address => bool) public has_donated;
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Bounty':
    |    mapping (address => uint256) public balances;
    |    // Stores the donor status.
  > |    mapping (address => bool) public has_donated;
    |    // Stores the voting state.
    |    mapping (address => bool) public has_voted;
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Bounty':
    |    mapping (address => bool) public has_donated;
    |    // Stores the voting state.
  > |    mapping (address => bool) public has_voted;
    |
    |    address public proposed_beneficiary = 0x0;
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'Bounty':
    |    }
    |
  > |    function propose_beneficiary(address _proposed) onlyDonor {
    |        // Updates the proposed_beneficiary variable.
    |        proposed_beneficiary = _proposed;
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |contract Bounty {
    |    // Track if the bounty has been already paid.
  > |    bool public bounty_paid = false;
    |    // Track the total number of donors.
    |    uint256 public count_donors = 0;
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |    bool public bounty_paid = false;
    |    // Track the total number of donors.
  > |    uint256 public count_donors = 0;
    |    // Stores the amount given by every donor.
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |    mapping (address => bool) public has_voted;
    |
  > |    address public proposed_beneficiary = 0x0;
    |    uint256 public votes_for = 0;
    |    uint256 public votes_against = 0;
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |
    |    address public proposed_beneficiary = 0x0;
  > |    uint256 public votes_for = 0;
    |    uint256 public votes_against = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |    address public proposed_beneficiary = 0x0;
    |    uint256 public votes_for = 0;
  > |    uint256 public votes_against = 0;
    |
    |    modifier onlyDonor {
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |
    |    // Paying the tipper.
  > |    function payout() {
    |        require(!bounty_paid);
    |        require(proposed_beneficiary != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |    // Allow to vote for the proposed_beneficiary by passing "yes" or "no" in the function.
    |    // Any other string won't be counted.
  > |    function vote_beneficiary(string _vote) onlyDonor {
    |        require(!has_voted[msg.sender]);
    |        require(proposed_beneficiary != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |
    |    // Allow donors to withdraw their donations.
  > |    function refund() onlyDonor {
    |        // Calling a refund withdraws you from the voters
    |        has_donated[msg.sender] = false;
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(69)

[31mViolation[0m for TODAmount in contract 'Bounty':
    |        require(votes_for+votes_against > count_donors*8/10);
    |        bounty_paid = true;
  > |        proposed_beneficiary.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(40)

[31mViolation[0m for TODReceiver in contract 'Bounty':
    |        require(votes_for+votes_against > count_donors*8/10);
    |        bounty_paid = true;
  > |        proposed_beneficiary.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(40)

[33mWarning[0m for TODReceiver in contract 'Bounty':
    |        
    |        // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |        msg.sender.transfer(eth_to_withdraw);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(81)

[33mWarning[0m for UnhandledException in contract 'Bounty':
    |        require(votes_for+votes_against > count_donors*8/10);
    |        bounty_paid = true;
  > |        proposed_beneficiary.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(40)

[33mWarning[0m for UnhandledException in contract 'Bounty':
    |        
    |        // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |        msg.sender.transfer(eth_to_withdraw);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        // Minimum of 80% of the donors must have voted.
    |        require(votes_for+votes_against > count_donors*8/10);
  > |        bounty_paid = true;
    |        proposed_beneficiary.transfer(this.balance);
    |
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(39)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |    function propose_beneficiary(address _proposed) onlyDonor {
    |        // Updates the proposed_beneficiary variable.
  > |        proposed_beneficiary = _proposed;
    |        // Resets the voting counts.
    |        votes_for = 0;
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        proposed_beneficiary = _proposed;
    |        // Resets the voting counts.
  > |        votes_for = 0;
    |        votes_against = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        // Resets the voting counts.
    |        votes_for = 0;
  > |        votes_against = 0;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        require(proposed_beneficiary != 0x0);
    |        if (keccak256(_vote) == keccak256("yes")) {
  > |            votes_for += 1;
    |            has_voted[msg.sender] = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(59)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        }
    |        if (keccak256(_vote) == keccak256("no")) {
  > |            votes_against += 1;
    |            has_voted[msg.sender] = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(63)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        // Calling a refund withdraws you from the voters
    |        has_donated[msg.sender] = false;
  > |        count_donors -= 1;
    |
    |        // Store the user's balance prior to withdrawal in a temporary variable.
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'Bounty':
    |        if (keccak256(_vote) == keccak256("yes")) {
    |            votes_for += 1;
  > |            has_voted[msg.sender] = true;
    |        }
    |        if (keccak256(_vote) == keccak256("no")) {
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'Bounty':
    |        if (keccak256(_vote) == keccak256("no")) {
    |            votes_against += 1;
  > |            has_voted[msg.sender] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'Bounty':
    |    function refund() onlyDonor {
    |        // Calling a refund withdraws you from the voters
  > |        has_donated[msg.sender] = false;
    |        count_donors -= 1;
    |
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'Bounty':
    |        
    |        // Update the user's balance prior to sending ETH to prevent recursive call.
  > |        balances[msg.sender] = 0;
    |        
    |        // Return the user's funds.  Throws on failure to prevent loss of funds.
  at /home/jiaming/mavs_srcs/contract@0xc3f2b61da3c3797930caf9e9ff174c2d70b2e8a5.sol(78)


