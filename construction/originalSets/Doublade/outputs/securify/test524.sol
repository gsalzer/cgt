Processing contract: /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol:EnjinBuyer
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
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(191)

[31mViolation[0m for DAOConstantGas in contract 'EnjinBuyer':
    |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(115)

[33mWarning[0m for DAOConstantGas in contract 'EnjinBuyer':
    |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(93)

[33mWarning[0m for DAOConstantGas in contract 'EnjinBuyer':
    |    withdraw_bounty -= claimed_bounty;
    |    // Send the caller their bounty for withdrawing on the user's behalf.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(147)

[33mWarning[0m for DAOConstantGas in contract 'EnjinBuyer':
    |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(193)

[33mWarning[0m for LockedEther in contract 'EnjinBuyer':
    |}
    |
  > |contract EnjinBuyer {
    |  // The minimum amount of eth required before the contract will buy in
    |  // Enjin requires $1000000 @ 306.22 for 50% bonus
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'EnjinBuyer':
    |
    |  // Store the amount of ETH deposited by each account.
  > |  mapping (address => uint256) public balances;
    |  // Bounty for executing buy.
    |  uint256 public buy_bounty;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Allows the developer to set the crowdsale addresses.
  > |  function set_sale_address(address _sale) {
    |    // Only allow the developer to set the sale addresses.
    |    require(msg.sender == developer);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(58)

[31mViolation[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Withdraws all ETH deposited or tokens purchased by the given user and rewards the caller.
  > |  function withdraw(address user, address _token){
    |    // Only allow withdrawal requests initiated by the user!
    |    // This means every user of this contract must be versed in how to 
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  // The minimum amount of eth required before the contract will buy in
    |  // Enjin requires $1000000 @ 306.22 for 50% bonus
  > |  uint256 public eth_minimum = 3270 ether;
    |
    |  // Store the amount of ETH deposited by each account.
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  mapping (address => uint256) public balances;
    |  // Bounty for executing buy.
  > |  uint256 public buy_bounty;
    |  // Bounty for executing withdrawals.
    |  uint256 public withdraw_bounty;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  uint256 public buy_bounty;
    |  // Bounty for executing withdrawals.
  > |  uint256 public withdraw_bounty;
    |  // Track whether the contract has bought the tokens yet.
    |  bool public bought_tokens;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  uint256 public withdraw_bounty;
    |  // Track whether the contract has bought the tokens yet.
  > |  bool public bought_tokens;
    |  // Record ETH value of tokens currently held by contract.
    |  uint256 public contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  bool public bought_tokens;
    |  // Record ETH value of tokens currently held by contract.
  > |  uint256 public contract_eth_value;
    |  // Emergency kill switch in case a critical bug is found.
    |  bool public kill_switch;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  uint256 public contract_eth_value;
    |  // Emergency kill switch in case a critical bug is found.
  > |  bool public kill_switch;
    |  
    |  // SHA3 hash of kill switch password.
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  // Earliest time contract is allowed to buy into the crowdsale.
    |  // This time constant is in the past, not important for Enjin buyer, we will only purchase once 
  > |  uint256 public earliest_buy_time = 1504188000;
    |  // Maximum amount of user ETH contract will accept.  Reduces risk of hard cap related failure.
    |  uint256 public eth_cap = 5000 ether;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  uint256 public earliest_buy_time = 1504188000;
    |  // Maximum amount of user ETH contract will accept.  Reduces risk of hard cap related failure.
  > |  uint256 public eth_cap = 5000 ether;
    |  // The developer address.
    |  address public developer = 0xA4f8506E30991434204BC43975079aD93C8C5651;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  uint256 public eth_cap = 5000 ether;
    |  // The developer address.
  > |  address public developer = 0xA4f8506E30991434204BC43975079aD93C8C5651;
    |  // The crowdsale address.  Settable by the developer.
    |  address public sale;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  address public developer = 0xA4f8506E30991434204BC43975079aD93C8C5651;
    |  // The crowdsale address.  Settable by the developer.
  > |  address public sale;
    |  // The token address.  Settable by the developer.
    |  ERC20 public token;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  address public sale;
    |  // The token address.  Settable by the developer.
  > |  ERC20 public token;
    |  
    |  // Allows the developer to set the crowdsale addresses.
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Allows the developer or anyone with the password to shut down everything except withdrawals in emergencies.
  > |  function activate_kill_switch(string password) {
    |    // Only activate the kill switch if the sender is the developer or the password is correct.
    |    require(msg.sender == developer || sha3(password) == password_hash);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(83)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Allows developer to add ETH to the buy execution bounty.
  > |  function add_to_buy_bounty() payable {
    |    // Only allow the developer to contribute to the buy execution bounty.
    |    require(msg.sender == developer);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(151)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Allows developer to add ETH to the withdraw execution bounty.
  > |  function add_to_withdraw_bounty() payable {
    |    // Only allow the developer to contribute to the buy execution bounty.
    |    require(msg.sender == developer);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(159)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  
    |  // Buys tokens in the crowdsale and rewards the caller, callable by anyone.
  > |  function claim_bounty(){
    |    // If we don't have eth_minimum eth in contract, don't buy in
    |    // Enjin requires $1M minimum for 50% bonus
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(167)

[31mViolation[0m for TODAmount in contract 'EnjinBuyer':
    |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(93)

[31mViolation[0m for TODAmount in contract 'EnjinBuyer':
    |    withdraw_bounty -= claimed_bounty;
    |    // Send the caller their bounty for withdrawing on the user's behalf.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(147)

[31mViolation[0m for TODAmount in contract 'EnjinBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
    |    msg.sender.transfer(claimed_bounty);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(191)

[31mViolation[0m for TODAmount in contract 'EnjinBuyer':
    |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(193)

[31mViolation[0m for TODReceiver in contract 'EnjinBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
    |    msg.sender.transfer(claimed_bounty);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(191)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(93)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(115)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |    withdraw_bounty -= claimed_bounty;
    |    // Send the caller their bounty for withdrawing on the user's behalf.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(147)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(193)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(93)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(115)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |      token = ERC20(_token);
    |      // Retrieve current token balance of contract.
  > |      uint256 contract_token_balance = token.balanceOf(address(this));
    |      // Disallow token withdrawals if there are no tokens to withdraw.
    |      require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(126)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |      //require(token.transfer(developer, fee));
    |      // Send the funds.  Throws on failure to prevent loss of funds.
  > |      require(token.transfer(user, tokens_to_withdraw));
    |    }
    |    // Each withdraw call earns 1% of the current withdraw bounty.
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(140)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    withdraw_bounty -= claimed_bounty;
    |    // Send the caller their bounty for withdrawing on the user's behalf.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(147)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
    |    msg.sender.transfer(claimed_bounty);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(191)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    require(sale.call.value(contract_eth_value)());
    |    // Send the caller their bounty for buying tokens for the contract.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(193)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |      token = ERC20(_token);
    |      // Retrieve current token balance of contract.
  > |      uint256 contract_token_balance = token.balanceOf(address(this));
    |      // Disallow token withdrawals if there are no tokens to withdraw.
    |      require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |      //require(token.transfer(developer, fee));
    |      // Send the funds.  Throws on failure to prevent loss of funds.
  > |      require(token.transfer(user, tokens_to_withdraw));
    |    }
    |    // Each withdraw call earns 1% of the current withdraw bounty.
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(140)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |    withdraw_bounty -= claimed_bounty;
    |    // Send the caller their bounty for withdrawing on the user's behalf.
  > |    msg.sender.transfer(claimed_bounty);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(147)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    require(sale != 0x0);
    |    // Record that the contract has bought the tokens.
  > |    bought_tokens = true;
    |    // Store the claimed bounty in a temporary variable.
    |    uint256 claimed_bounty = buy_bounty;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(181)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    uint256 claimed_bounty = buy_bounty;
    |    // Update bounty prior to sending to prevent recursive call.
  > |    buy_bounty = 0;
    |    // Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance - (claimed_bounty + withdraw_bounty);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    buy_bounty = 0;
    |    // Record the amount of ETH sent as the contract's current value.
  > |    contract_eth_value = this.balance - (claimed_bounty + withdraw_bounty);
    |    // Transfer all the funds (less the bounties) to the crowdsale address
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(187)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    require(sale == 0x0);
    |    // Set the crowdsale and token addresses.
  > |    sale = _sale;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(64)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    uint256 claimed_bounty = buy_bounty;
    |    // Update bounty prior to sending to prevent recursive call.
  > |    buy_bounty = 0;
    |    // Irreversibly activate the kill switch.
    |    kill_switch = true;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    buy_bounty = 0;
    |    // Irreversibly activate the kill switch.
  > |    kill_switch = true;
    |    // Send the caller their bounty for activating the kill switch.
    |    msg.sender.transfer(claimed_bounty);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(91)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |      uint256 eth_to_withdraw = balances[user];
    |      // Update the user's balance prior to sending ETH to prevent recursive call.
  > |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
    |      user.transfer(eth_to_withdraw);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |      // In aforementioned case, the user will zero out their balance
    |      // and receive their worthless token, but affect no one else
  > |      token = ERC20(_token);
    |      // Retrieve current token balance of contract.
    |      uint256 contract_token_balance = token.balanceOf(address(this));
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(124)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |      uint256 tokens_to_withdraw = (balances[user] * contract_token_balance) / contract_eth_value;
    |      // Update the value of tokens currently held by the contract.
  > |      contract_eth_value -= balances[user];
    |      // Update the user's balance prior to sending to prevent recursive call.
    |      balances[user] = 0;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |      contract_eth_value -= balances[user];
    |      // Update the user's balance prior to sending to prevent recursive call.
  > |      balances[user] = 0;
    |      // 1% fee if contract successfully bought tokens.
    |      //uint256 fee = tokens_to_withdraw / 100;
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    uint256 claimed_bounty = withdraw_bounty / 100;
    |    // Update the withdraw bounty prior to sending to prevent recursive call.
  > |    withdraw_bounty -= claimed_bounty;
    |    // Send the caller their bounty for withdrawing on the user's behalf.
    |    msg.sender.transfer(claimed_bounty);
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(145)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    require(msg.sender == developer);
    |    // Update bounty to include received amount.
  > |    buy_bounty += msg.value;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(155)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    require(msg.sender == developer);
    |    // Update bounty to include received amount.
  > |    withdraw_bounty += msg.value;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x22141343a20640daaf695226b2233baeef0f0d62.sol(163)


