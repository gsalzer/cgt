Processing contract: /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol:EnjinBuyer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'EnjinBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
    |    msg.sender.transfer(claimed_bounty);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(172)

[31mViolation[0m for DAOConstantGas in contract 'EnjinBuyer':
    |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(102)

[33mWarning[0m for DAOConstantGas in contract 'EnjinBuyer':
    |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(86)

[33mWarning[0m for DAOConstantGas in contract 'EnjinBuyer':
    |    withdraw_bounty -= claimed_bounty;
    |    // Send the caller their bounty for withdrawing on the user's behalf.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(128)

[33mWarning[0m for DAOConstantGas in contract 'EnjinBuyer':
    |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(174)

[33mWarning[0m for LockedEther in contract 'EnjinBuyer':
    |}
    |
  > |contract EnjinBuyer {
    |  // The minimum amount of eth required before the contract will buy in
    |  // Enjin requires $1000000 @ 306.22 for 50% bonus
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'EnjinBuyer':
    |
    |  // Store the amount of ETH deposited by each account.
  > |  mapping (address => uint256) public balances;
    |  // Bounty for executing buy.
    |  uint256 public buy_bounty;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Allows the developer to set the crowdsale addresses.
  > |  function set_sale_address(address _sale) {
    |    // Only allow the developer to set the sale addresses.
    |    require(msg.sender == developer);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(54)

[31mViolation[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  // In theory, developer could shaft everyone by setting incorrect token address
    |  // Please be careful
  > |  function set_token_address(address _token) {
    |    // Only allow the developer to set token addresses.
    |    require(msg.sender == developer);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(67)

[31mViolation[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Withdraws all ETH deposited or tokens purchased by the given user and rewards the caller.
  > |  function withdraw(address user){
    |    // Only allow withdrawals after the contract has had a chance to buy in.
    |    require(bought_tokens || now > earliest_buy_time + 1 hours);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  // The minimum amount of eth required before the contract will buy in
    |  // Enjin requires $1000000 @ 306.22 for 50% bonus
  > |  uint256 public eth_minimum = 3270 ether;
    |
    |  // Store the amount of ETH deposited by each account.
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  mapping (address => uint256) public balances;
    |  // Bounty for executing buy.
  > |  uint256 public buy_bounty;
    |  // Bounty for executing withdrawals.
    |  uint256 public withdraw_bounty;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  uint256 public buy_bounty;
    |  // Bounty for executing withdrawals.
  > |  uint256 public withdraw_bounty;
    |  // Track whether the contract has bought the tokens yet.
    |  bool public bought_tokens;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  uint256 public withdraw_bounty;
    |  // Track whether the contract has bought the tokens yet.
  > |  bool public bought_tokens;
    |  // Record ETH value of tokens currently held by contract.
    |  uint256 public contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  bool public bought_tokens;
    |  // Record ETH value of tokens currently held by contract.
  > |  uint256 public contract_eth_value;
    |  // Emergency kill switch in case a critical bug is found.
    |  bool public kill_switch;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  uint256 public contract_eth_value;
    |  // Emergency kill switch in case a critical bug is found.
  > |  bool public kill_switch;
    |  
    |  // SHA3 hash of kill switch password.
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  // Earliest time contract is allowed to buy into the crowdsale.
    |  // This time constant is in the past, not important for Enjin buyer, we will only purchase once 
  > |  uint256 public earliest_buy_time = 1504188000;
    |  // Maximum amount of user ETH contract will accept.  Reduces risk of hard cap related failure.
    |  uint256 public eth_cap = 5000 ether;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  uint256 public earliest_buy_time = 1504188000;
    |  // Maximum amount of user ETH contract will accept.  Reduces risk of hard cap related failure.
  > |  uint256 public eth_cap = 5000 ether;
    |  // The developer address.
    |  address public developer = 0xA4f8506E30991434204BC43975079aD93C8C5651;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  uint256 public eth_cap = 5000 ether;
    |  // The developer address.
  > |  address public developer = 0xA4f8506E30991434204BC43975079aD93C8C5651;
    |  // The crowdsale address.  Settable by the developer.
    |  address public sale;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  address public developer = 0xA4f8506E30991434204BC43975079aD93C8C5651;
    |  // The crowdsale address.  Settable by the developer.
  > |  address public sale;
    |  // The token address.  Settable by the developer.
    |  ERC20 public token;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  address public sale;
    |  // The token address.  Settable by the developer.
  > |  ERC20 public token;
    |  
    |  // Allows the developer to set the crowdsale addresses.
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Allows the developer or anyone with the password to shut down everything except withdrawals in emergencies.
  > |  function activate_kill_switch(string password) {
    |    // Only activate the kill switch if the sender is the developer or the password is correct.
    |    require(msg.sender == developer || sha3(password) == password_hash);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Allows developer to add ETH to the buy execution bounty.
  > |  function add_to_buy_bounty() payable {
    |    // Only allow the developer to contribute to the buy execution bounty.
    |    require(msg.sender == developer);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(132)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Allows developer to add ETH to the withdraw execution bounty.
  > |  function add_to_withdraw_bounty() payable {
    |    // Only allow the developer to contribute to the buy execution bounty.
    |    require(msg.sender == developer);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Buys tokens in the crowdsale and rewards the caller, callable by anyone.
  > |  function claim_bounty(){
    |    // If we don't have eth_minimum eth in contract, don't buy in
    |    // Enjin requires $1M minimum for 50% bonus
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(148)

[31mViolation[0m for TODAmount in contract 'EnjinBuyer':
    |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(86)

[31mViolation[0m for TODAmount in contract 'EnjinBuyer':
    |    withdraw_bounty -= claimed_bounty;
    |    // Send the caller their bounty for withdrawing on the user's behalf.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(128)

[31mViolation[0m for TODAmount in contract 'EnjinBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
    |    msg.sender.transfer(claimed_bounty);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(172)

[31mViolation[0m for TODAmount in contract 'EnjinBuyer':
    |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(174)

[31mViolation[0m for TODReceiver in contract 'EnjinBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
    |    msg.sender.transfer(claimed_bounty);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(172)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(86)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(102)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |    withdraw_bounty -= claimed_bounty;
    |    // Send the caller their bounty for withdrawing on the user's behalf.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(128)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(174)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(86)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(102)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    else {
    |      // Retrieve current token balance of contract.
  > |      uint256 contract_token_balance = token.balanceOf(address(this));
    |      // Disallow token withdrawals if there are no tokens to withdraw.
    |      require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(107)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |      //require(token.transfer(developer, fee));
    |      // Send the funds.  Throws on failure to prevent loss of funds.
  > |      require(token.transfer(user, tokens_to_withdraw - fee));
    |    }
    |    // Each withdraw call earns 1% of the current withdraw bounty.
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(121)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    withdraw_bounty -= claimed_bounty;
    |    // Send the caller their bounty for withdrawing on the user's behalf.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(128)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
    |    msg.sender.transfer(claimed_bounty);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(172)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(174)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |    else {
    |      // Retrieve current token balance of contract.
  > |      uint256 contract_token_balance = token.balanceOf(address(this));
    |      // Disallow token withdrawals if there are no tokens to withdraw.
    |      require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(107)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |      //require(token.transfer(developer, fee));
    |      // Send the funds.  Throws on failure to prevent loss of funds.
  > |      require(token.transfer(user, tokens_to_withdraw - fee));
    |    }
    |    // Each withdraw call earns 1% of the current withdraw bounty.
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |      uint256 eth_to_withdraw = balances[user];
    |      // Update the user's balance prior to sending ETH to prevent recursive call.
  > |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
    |      user.transfer(eth_to_withdraw);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |      uint256 tokens_to_withdraw = (balances[user] * contract_token_balance) / contract_eth_value;
    |      // Update the value of tokens currently held by the contract.
  > |      contract_eth_value -= balances[user];
    |      // Update the user's balance prior to sending to prevent recursive call.
    |      balances[user] = 0;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |      contract_eth_value -= balances[user];
    |      // Update the user's balance prior to sending to prevent recursive call.
  > |      balances[user] = 0;
    |      // 1% fee if contract successfully bought tokens.
    |      uint256 fee = tokens_to_withdraw / 100;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(115)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    uint256 claimed_bounty = withdraw_bounty / 100;
    |    // Update the withdraw bounty prior to sending to prevent recursive call.
  > |    withdraw_bounty -= claimed_bounty;
    |    // Send the caller their bounty for withdrawing on the user's behalf.
    |    msg.sender.transfer(claimed_bounty);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    require(sale != 0x0);
    |    // Record that the contract has bought the tokens.
  > |    bought_tokens = true;
    |    // Store the claimed bounty in a temporary variable.
    |    uint256 claimed_bounty = buy_bounty;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(162)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    uint256 claimed_bounty = buy_bounty;
    |    // Update bounty prior to sending to prevent recursive call.
  > |    buy_bounty = 0;
    |    // Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance - (claimed_bounty + withdraw_bounty);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    buy_bounty = 0;
    |    // Record the amount of ETH sent as the contract's current value.
  > |    contract_eth_value = this.balance - (claimed_bounty + withdraw_bounty);
    |    // Transfer all the funds (less the bounties) to the crowdsale address
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    require(sale == 0x0);
    |    // Set the crowdsale and token addresses.
  > |    sale = _sale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    require(msg.sender == developer);
    |    // Set the token addresses.
  > |    token = ERC20(_token);
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    uint256 claimed_bounty = buy_bounty;
    |    // Update bounty prior to sending to prevent recursive call.
  > |    buy_bounty = 0;
    |    // Irreversibly activate the kill switch.
    |    kill_switch = true;
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(82)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    buy_bounty = 0;
    |    // Irreversibly activate the kill switch.
  > |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
    |    msg.sender.transfer(claimed_bounty);
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    require(msg.sender == developer);
    |    // Update bounty to include received amount.
  > |    buy_bounty += msg.value;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(136)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    require(msg.sender == developer);
    |    // Update bounty to include received amount.
  > |    withdraw_bounty += msg.value;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xe5221f29861508d7556249f19924effe391db237.sol(144)


