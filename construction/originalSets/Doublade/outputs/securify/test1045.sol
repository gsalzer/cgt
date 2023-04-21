Processing contract: /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol:Bounty
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
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(43)

[33mWarning[0m for DAOConstantGas in contract 'Bounty':
    |        
    |        // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |        msg.sender.transfer(eth_to_withdraw);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(84)

[33mWarning[0m for LockedEther in contract 'Bounty':
    |*/
    |
  > |contract Bounty {
    |    // Track if the bounty has been already paid.
    |    bool public bounty_paid = false;
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'Bounty':
    |    uint256 public count_donors = 0;
    |    // Stores the amount given by every donor.
  > |    mapping (address => uint256) public balances;
    |    // Stores the donor status.
    |    mapping (address => bool) public has_donated;
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Bounty':
    |    mapping (address => uint256) public balances;
    |    // Stores the donor status.
  > |    mapping (address => bool) public has_donated;
    |    // Stores the voting state.
    |    mapping (address => bool) public has_voted;
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'Bounty':
    |    mapping (address => bool) public has_donated;
    |    // Stores the voting state.
  > |    mapping (address => bool) public has_voted;
    |
    |    address public proposed_beneficiary = 0x0;
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(17)

[31mViolation[0m for MissingInputValidation in contract 'Bounty':
    |    }
    |
  > |    function propose_beneficiary(address _proposed) onlyDonor {
    |        // Updates the proposed_beneficiary variable.
    |        proposed_beneficiary = _proposed;
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |contract Bounty {
    |    // Track if the bounty has been already paid.
  > |    bool public bounty_paid = false;
    |    // Track the total number of donors.
    |    uint256 public count_donors = 0;
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |    bool public bounty_paid = false;
    |    // Track the total number of donors.
  > |    uint256 public count_donors = 0;
    |    // Stores the amount given by every donor.
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |    mapping (address => bool) public has_voted;
    |
  > |    address public proposed_beneficiary = 0x0;
    |    uint256 public votes_for = 0;
    |    uint256 public votes_against = 0;
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |
    |    address public proposed_beneficiary = 0x0;
  > |    uint256 public votes_for = 0;
    |    uint256 public votes_against = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |    address public proposed_beneficiary = 0x0;
    |    uint256 public votes_for = 0;
  > |    uint256 public votes_against = 0;
    |
    |    bytes32 hash_pwd = 0x1a78e83f94c1bc28c54cfed1fe337e04c31732614ec822978d804283ef6a60c3;
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |
    |    // Paying the tipper.
  > |    function payout(string _password) {
    |        require(keccak256(_password) == hash_pwd);
    |        require(!bounty_paid);
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |    // Allow to vote for the proposed_beneficiary by passing "yes" or "no" in the function.
    |    // Any other string won't be counted.
  > |    function vote_beneficiary(string _vote) onlyDonor {
    |        require(!has_voted[msg.sender]);
    |        require(proposed_beneficiary != 0x0);
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'Bounty':
    |
    |    // Allow donors to withdraw their donations.
  > |    function refund() onlyDonor {
    |        // Calling a refund withdraws you from the voters
    |        has_donated[msg.sender] = false;
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(72)

[31mViolation[0m for TODAmount in contract 'Bounty':
    |        require(votes_for+votes_against > count_donors*8/10);
    |        bounty_paid = true;
  > |        proposed_beneficiary.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(43)

[31mViolation[0m for TODReceiver in contract 'Bounty':
    |        require(votes_for+votes_against > count_donors*8/10);
    |        bounty_paid = true;
  > |        proposed_beneficiary.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(43)

[33mWarning[0m for TODReceiver in contract 'Bounty':
    |        
    |        // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |        msg.sender.transfer(eth_to_withdraw);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(84)

[33mWarning[0m for UnhandledException in contract 'Bounty':
    |        require(votes_for+votes_against > count_donors*8/10);
    |        bounty_paid = true;
  > |        proposed_beneficiary.transfer(this.balance);
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(43)

[33mWarning[0m for UnhandledException in contract 'Bounty':
    |        
    |        // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |        msg.sender.transfer(eth_to_withdraw);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(84)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        // Minimum of 80% of the donors must have voted.
    |        require(votes_for+votes_against > count_donors*8/10);
  > |        bounty_paid = true;
    |        proposed_beneficiary.transfer(this.balance);
    |
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |    function propose_beneficiary(address _proposed) onlyDonor {
    |        // Updates the proposed_beneficiary variable.
  > |        proposed_beneficiary = _proposed;
    |        // Resets the voting counts.
    |        votes_for = 0;
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        proposed_beneficiary = _proposed;
    |        // Resets the voting counts.
  > |        votes_for = 0;
    |        votes_against = 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        // Resets the voting counts.
    |        votes_for = 0;
  > |        votes_against = 0;
    |
    |    }
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        require(proposed_beneficiary != 0x0);
    |        if (keccak256(_vote) == keccak256("yes")) {
  > |            votes_for += 1;
    |            has_voted[msg.sender] = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        }
    |        if (keccak256(_vote) == keccak256("no")) {
  > |            votes_against += 1;
    |            has_voted[msg.sender] = true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'Bounty':
    |        // Calling a refund withdraws you from the voters
    |        has_donated[msg.sender] = false;
  > |        count_donors -= 1;
    |
    |        // Store the user's balance prior to withdrawal in a temporary variable.
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'Bounty':
    |        if (keccak256(_vote) == keccak256("yes")) {
    |            votes_for += 1;
  > |            has_voted[msg.sender] = true;
    |        }
    |        if (keccak256(_vote) == keccak256("no")) {
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'Bounty':
    |        if (keccak256(_vote) == keccak256("no")) {
    |            votes_against += 1;
  > |            has_voted[msg.sender] = true;
    |        }
    |    }
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'Bounty':
    |    function refund() onlyDonor {
    |        // Calling a refund withdraws you from the voters
  > |        has_donated[msg.sender] = false;
    |        count_donors -= 1;
    |
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Bounty':
    |        
    |        // Update the user's balance prior to sending ETH to prevent recursive call.
  > |        balances[msg.sender] = 0;
    |        
    |        // Return the user's funds.  Throws on failure to prevent loss of funds.
  at /home/jiaming/mavs_srcs/contract@0x427e6460df1d9624f4e266f3dcc0c860fe5a6319.sol(81)


