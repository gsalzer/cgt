Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol:BetBuyer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol:DaoCasinoToken
[33mWarning[0m for DAO in contract 'BetBuyer':
    |        fee = bet_amount / 100;
    |        // Send any non-zero fees to developer.
  > |        if(!token.transfer(developer, fee)) throw;
    |      }
    |      // Send the user their tokens.  Throws if the crowdsale isn't over.
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(74)

[33mWarning[0m for DAO in contract 'BetBuyer':
    |      }
    |      // Send the user their tokens.  Throws if the crowdsale isn't over.
  > |      if(!token.transfer(msg.sender, bet_amount - fee)) throw;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(77)

[33mWarning[0m for DAO in contract 'BetBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    token.proxyPayment.value(this.balance - bounty)(address(this));
    |    // Send the caller their bounty for buying tokens for the contract.
    |    msg.sender.transfer(bounty);
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(106)

[33mWarning[0m for DAOConstantGas in contract 'BetBuyer':
    |      balances[msg.sender] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      msg.sender.transfer(eth_amount);
    |    }
    |    // Withdraw the sender's tokens if the contract has already purchased them.
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(60)

[33mWarning[0m for DAOConstantGas in contract 'BetBuyer':
    |    token.proxyPayment.value(this.balance - bounty)(address(this));
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(108)

[33mWarning[0m for LockedEther in contract 'BetBuyer':
    |}
    |
  > |contract BetBuyer {
    |  // Store the amount of ETH deposited by each account.
    |  mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'BetBuyer':
    |contract BetBuyer {
    |  // Store the amount of ETH deposited by each account.
  > |  mapping (address => uint256) public balances;
    |  // Store whether or not each account would have made it into the crowdsale.
    |  mapping (address => bool) public checked_in;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'BetBuyer':
    |  mapping (address => uint256) public balances;
    |  // Store whether or not each account would have made it into the crowdsale.
  > |  mapping (address => bool) public checked_in;
    |  // Bounty for executing buy.
    |  uint256 public bounty;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'BetBuyer':
    |  mapping (address => bool) public checked_in;
    |  // Bounty for executing buy.
  > |  uint256 public bounty;
    |  // Track whether the contract has bought the tokens yet.
    |  bool public bought_tokens;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'BetBuyer':
    |  uint256 public bounty;
    |  // Track whether the contract has bought the tokens yet.
  > |  bool public bought_tokens;
    |  // Record the time the contract bought the tokens.
    |  uint256 public time_bought;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'BetBuyer':
    |  bool public bought_tokens;
    |  // Record the time the contract bought the tokens.
  > |  uint256 public time_bought;
    |  // Emergency kill switch in case a critical bug is found.
    |  bool public kill_switch;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'BetBuyer':
    |  uint256 public time_bought;
    |  // Emergency kill switch in case a critical bug is found.
  > |  bool public kill_switch;
    |  
    |  // Ratio of BET tokens received to ETH contributed
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'BetBuyer':
    |  
    |  // The BET Token address and sale address are the same.
  > |  DaoCasinoToken public token = DaoCasinoToken(0x2B09b52d42DfB4e0cBA43F607dD272ea3FE1FB9F);
    |  // The developer address.
    |  address developer = 0x000Fb8369677b3065dE5821a86Bc9551d5e5EAb9;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'BetBuyer':
    |  
    |  // Allows the developer to shut down everything except withdrawals in emergencies.
  > |  function activate_kill_switch() {
    |    // Only allow the developer to activate the kill switch.
    |    if (msg.sender != developer) throw;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'BetBuyer':
    |  
    |  // Withdraws all ETH deposited or BET purchased by the sender.
  > |  function withdraw(){
    |    // If called before the ICO, cancel caller's participation in the sale.
    |    if (!bought_tokens) {
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'BetBuyer':
    |  
    |  // Allow developer to add ETH to the buy execution bounty.
  > |  function add_to_bounty() payable {
    |    // Only allow the developer to contribute to the buy execution bounty.
    |    if (msg.sender != developer) throw;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'BetBuyer':
    |  
    |  // Buys tokens in the crowdsale and rewards the caller, callable by anyone.
  > |  function claim_bounty(){
    |    // Short circuit to save gas if the contract has already bought tokens.
    |    if (bought_tokens) return;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(94)

[33mWarning[0m for MissingInputValidation in contract 'BetBuyer':
    |  
    |  // A helper function for the default function, allowing contracts to interact.
  > |  function default_helper() payable {
    |    // Treat near-zero ETH transactions as check ins and withdrawal requests.
    |    if (msg.value <= 1 finney) {
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(112)

[31mViolation[0m for TODAmount in contract 'BetBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    token.proxyPayment.value(this.balance - bounty)(address(this));
    |    // Send the caller their bounty for buying tokens for the contract.
    |    msg.sender.transfer(bounty);
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(106)

[31mViolation[0m for TODAmount in contract 'BetBuyer':
    |    token.proxyPayment.value(this.balance - bounty)(address(this));
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(108)

[33mWarning[0m for TODReceiver in contract 'BetBuyer':
    |      balances[msg.sender] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      msg.sender.transfer(eth_amount);
    |    }
    |    // Withdraw the sender's tokens if the contract has already purchased them.
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(60)

[33mWarning[0m for TODReceiver in contract 'BetBuyer':
    |    token.proxyPayment.value(this.balance - bounty)(address(this));
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(108)

[33mWarning[0m for UnhandledException in contract 'BetBuyer':
    |      balances[msg.sender] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      msg.sender.transfer(eth_amount);
    |    }
    |    // Withdraw the sender's tokens if the contract has already purchased them.
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(60)

[33mWarning[0m for UnhandledException in contract 'BetBuyer':
    |        fee = bet_amount / 100;
    |        // Send any non-zero fees to developer.
  > |        if(!token.transfer(developer, fee)) throw;
    |      }
    |      // Send the user their tokens.  Throws if the crowdsale isn't over.
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(74)

[33mWarning[0m for UnhandledException in contract 'BetBuyer':
    |      }
    |      // Send the user their tokens.  Throws if the crowdsale isn't over.
  > |      if(!token.transfer(msg.sender, bet_amount - fee)) throw;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(77)

[33mWarning[0m for UnhandledException in contract 'BetBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    token.proxyPayment.value(this.balance - bounty)(address(this));
    |    // Send the caller their bounty for buying tokens for the contract.
    |    msg.sender.transfer(bounty);
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(106)

[33mWarning[0m for UnhandledException in contract 'BetBuyer':
    |    token.proxyPayment.value(this.balance - bounty)(address(this));
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(108)

[33mWarning[0m for UnhandledException in contract 'BetBuyer':
    |      if (bought_tokens) {
    |        // Only allow checking in before the crowdsale has reached the cap.
  > |        if (token.totalEthers() >= token.CAP()) throw;
    |        // Mark user as checked in, meaning they would have been able to enter alone.
    |        checked_in[msg.sender] = true;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(118)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BetBuyer':
    |        fee = bet_amount / 100;
    |        // Send any non-zero fees to developer.
  > |        if(!token.transfer(developer, fee)) throw;
    |      }
    |      // Send the user their tokens.  Throws if the crowdsale isn't over.
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(74)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BetBuyer':
    |      }
    |      // Send the user their tokens.  Throws if the crowdsale isn't over.
  > |      if(!token.transfer(msg.sender, bet_amount - fee)) throw;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BetBuyer':
    |      if (bought_tokens) {
    |        // Only allow checking in before the crowdsale has reached the cap.
  > |        if (token.totalEthers() >= token.CAP()) throw;
    |        // Mark user as checked in, meaning they would have been able to enter alone.
    |        checked_in[msg.sender] = true;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(118)

[31mViolation[0m for UnrestrictedWrite in contract 'BetBuyer':
    |      uint256 bet_amount = balances[msg.sender] * bet_per_eth;
    |      // Update the user's balance prior to sending BET to prevent recursive call.
  > |      balances[msg.sender] = 0;
    |      // No fee for withdrawing if the user would have made it into the crowdsale alone.
    |      uint256 fee = 0;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(67)

[31mViolation[0m for UnrestrictedWrite in contract 'BetBuyer':
    |    if (kill_switch) throw;
    |    // Record that the contract has bought the tokens.
  > |    bought_tokens = true;
    |    // Record the time the contract bought the tokens.
    |    time_bought = now;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'BetBuyer':
    |    bought_tokens = true;
    |    // Record the time the contract bought the tokens.
  > |    time_bought = now;
    |    // Transfer all the funds (less the bounty) to the BET crowdsale contract
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'BetBuyer':
    |      uint256 eth_amount = balances[msg.sender];
    |      // Update the user's balance prior to sending ETH to prevent recursive call.
  > |      balances[msg.sender] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
    |      msg.sender.transfer(eth_amount);
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'BetBuyer':
    |      uint256 bet_amount = balances[msg.sender] * bet_per_eth;
    |      // Update the user's balance prior to sending BET to prevent recursive call.
  > |      balances[msg.sender] = 0;
    |      // No fee for withdrawing if the user would have made it into the crowdsale alone.
    |      uint256 fee = 0;
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'BetBuyer':
    |        if (token.totalEthers() >= token.CAP()) throw;
    |        // Mark user as checked in, meaning they would have been able to enter alone.
  > |        checked_in[msg.sender] = true;
    |      }
    |      // Withdraw funds if the crowdsale hasn't begun yet or is already over.
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'BetBuyer':
    |      if (bought_tokens) throw;
    |      // Update records of deposited ETH to include the received amount.
  > |      balances[msg.sender] += msg.value;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'BetBuyer':
    |    if (msg.sender != developer) throw;
    |    // Irreversibly activate the kill switch.
  > |    kill_switch = true;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'BetBuyer':
    |    if (bought_tokens) throw;
    |    // Update bounty to include received amount.
  > |    bounty += msg.value;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xd3e55b1c1da60e7e995e70d85c847c975fed5d37.sol(90)


