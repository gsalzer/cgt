Processing contract: /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol:CobinhoodBuyer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol:ERC20
[33mWarning[0m for DAO in contract 'CobinhoodBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    require(sale.call.value(this.balance)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(130)

[33mWarning[0m for DAOConstantGas in contract 'CobinhoodBuyer':
    |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(92)

[33mWarning[0m for LockedEther in contract 'CobinhoodBuyer':
    |}
    |
  > |contract CobinhoodBuyer {
    |  // Store the amount of ETH deposited by each account.
    |  mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |contract CobinhoodBuyer {
    |  // Store the amount of ETH deposited by each account.
  > |  mapping (address => uint256) public balances;
    |  // Track whether the contract has received the tokens yet.
    |  bool public received_tokens;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(22)

[31mViolation[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |
    |  // Allows the developer to set the token address because we don't know it yet.
  > |  function set_address(address _token) {
    |    // Only allow the developer to set the token addresses.
    |    require(msg.sender == developer);
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |
    |  // Withdraws all ETH deposited or tokens purchased by the given user.
  > |  function withdraw(address user){
    |    // Only allow withdrawals after the contract has had a chance to buy in.
    |    require(received_tokens || now > latest_buy_time);
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(80)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |  bool public received_tokens;
    |  // Track whether the contract has sent ETH to the presale contract yet.
  > |  bool public purchased_tokens;
    |  // Record ETH value of tokens currently held by contract.
    |  uint256 public contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |  bool public purchased_tokens;
    |  // Record ETH value of tokens currently held by contract.
  > |  uint256 public contract_eth_value;
    |  // Emergency kill switch in case a critical bug is found.
    |  bool public kill_switch;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |  uint256 public contract_eth_value;
    |  // Emergency kill switch in case a critical bug is found.
  > |  bool public kill_switch;
    |
    |  // SHA3 hash of kill switch password.
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |  bytes32 password_hash = 0xe3ce8892378c33f21165c3fa9b1c106524b2352e16ea561d943008f11f0ecce0;
    |  // Latest time contract is allowed to buy into the crowdsale.
  > |  uint256 public latest_buy_time = 1505109600;
    |  // Maximum amount of user ETH contract will accept.  Reduces risk of hard cap related failure.
    |  uint256 public eth_cap = 299 ether;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |  uint256 public latest_buy_time = 1505109600;
    |  // Maximum amount of user ETH contract will accept.  Reduces risk of hard cap related failure.
  > |  uint256 public eth_cap = 299 ether;
    |  // Minimum amount of user ETH contract will accept.  Reduces risk of hard cap related failure.
    |  uint256 public eth_min = 149 ether;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |  uint256 public eth_cap = 299 ether;
    |  // Minimum amount of user ETH contract will accept.  Reduces risk of hard cap related failure.
  > |  uint256 public eth_min = 149 ether;
    |  // The developer address.
    |  address public developer = 0x0575C223f5b87Be4812926037912D45B31270d3B;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |  uint256 public eth_min = 149 ether;
    |  // The developer address.
  > |  address public developer = 0x0575C223f5b87Be4812926037912D45B31270d3B;
    |  // The fee claimer's address.
    |  address public fee_claimer = 0x9793661F48b61D0b8B6D39D53CAe694b101ff028;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |  address public developer = 0x0575C223f5b87Be4812926037912D45B31270d3B;
    |  // The fee claimer's address.
  > |  address public fee_claimer = 0x9793661F48b61D0b8B6D39D53CAe694b101ff028;
    |  // The crowdsale address.
    |  address public sale = 0x0bb9fc3ba7bcf6e5d6f6fc15123ff8d5f96cee00;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |  address public fee_claimer = 0x9793661F48b61D0b8B6D39D53CAe694b101ff028;
    |  // The crowdsale address.
  > |  address public sale = 0x0bb9fc3ba7bcf6e5d6f6fc15123ff8d5f96cee00;
    |  // The token address.  Settable by the developer once Cobinhood announces it.
    |  ERC20 public token;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |  address public sale = 0x0bb9fc3ba7bcf6e5d6f6fc15123ff8d5f96cee00;
    |  // The token address.  Settable by the developer once Cobinhood announces it.
  > |  ERC20 public token;
    |
    |  // Allows the developer to set the token address because we don't know it yet.
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(47)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |
    |  // Developer override of received_tokens to make sure tokens aren't stuck.
  > |  function force_received() {
    |      require(msg.sender == developer);
    |      received_tokens = true;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |
    |  // Anyone can call to see if tokens have been received, and then set the flag to let withdrawls happen.
  > |  function received_tokens() {
    |      if( token.balanceOf(address(this)) > 0){
    |          received_tokens = true;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |
    |  // Allows the developer or anyone with the password to shut down everything except withdrawals in emergencies.
  > |  function activate_kill_switch(string password) {
    |    // Only activate the kill switch if the sender is the developer or the password is correct.
    |    require(msg.sender == developer || sha3(password) == password_hash);
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'CobinhoodBuyer':
    |
    |  // Send all ETH to the presale contract once total is between [149,299], callable by anyone.
  > |  function purchase(){
    |    // Short circuit to save gas if the contract has already bought tokens.
    |    if (purchased_tokens) return;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(116)

[31mViolation[0m for TODAmount in contract 'CobinhoodBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    require(sale.call.value(this.balance)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(130)

[33mWarning[0m for TODReceiver in contract 'CobinhoodBuyer':
    |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(92)

[33mWarning[0m for UnhandledException in contract 'CobinhoodBuyer':
    |  // Anyone can call to see if tokens have been received, and then set the flag to let withdrawls happen.
    |  function received_tokens() {
  > |      if( token.balanceOf(address(this)) > 0){
    |          received_tokens = true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(65)

[33mWarning[0m for UnhandledException in contract 'CobinhoodBuyer':
    |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(92)

[33mWarning[0m for UnhandledException in contract 'CobinhoodBuyer':
    |    else {
    |      // Retrieve current token balance of contract.
  > |      uint256 contract_token_balance = token.balanceOf(address(this));
    |      // Disallow token withdrawals if there are no tokens to withdraw.
    |      require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(97)

[33mWarning[0m for UnhandledException in contract 'CobinhoodBuyer':
    |      uint256 fee = tokens_to_withdraw / 100;
    |      // Send the fee to the developer.
  > |      require(token.transfer(fee_claimer, fee));
    |      // Send the funds.  Throws on failure to prevent loss of funds.
    |      require(token.transfer(user, tokens_to_withdraw - fee));
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(109)

[33mWarning[0m for UnhandledException in contract 'CobinhoodBuyer':
    |      require(token.transfer(fee_claimer, fee));
    |      // Send the funds.  Throws on failure to prevent loss of funds.
  > |      require(token.transfer(user, tokens_to_withdraw - fee));
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(111)

[33mWarning[0m for UnhandledException in contract 'CobinhoodBuyer':
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
    |    // already completed, preventing loss of funds.
  > |    require(sale.call.value(this.balance)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(130)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CobinhoodBuyer':
    |  // Anyone can call to see if tokens have been received, and then set the flag to let withdrawls happen.
    |  function received_tokens() {
  > |      if( token.balanceOf(address(this)) > 0){
    |          received_tokens = true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(65)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CobinhoodBuyer':
    |    else {
    |      // Retrieve current token balance of contract.
  > |      uint256 contract_token_balance = token.balanceOf(address(this));
    |      // Disallow token withdrawals if there are no tokens to withdraw.
    |      require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(97)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CobinhoodBuyer':
    |      uint256 fee = tokens_to_withdraw / 100;
    |      // Send the fee to the developer.
  > |      require(token.transfer(fee_claimer, fee));
    |      // Send the funds.  Throws on failure to prevent loss of funds.
    |      require(token.transfer(user, tokens_to_withdraw - fee));
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(109)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CobinhoodBuyer':
    |      require(token.transfer(fee_claimer, fee));
    |      // Send the funds.  Throws on failure to prevent loss of funds.
  > |      require(token.transfer(user, tokens_to_withdraw - fee));
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'CobinhoodBuyer':
    |  function received_tokens() {
    |      if( token.balanceOf(address(this)) > 0){
  > |          received_tokens = true;
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'CobinhoodBuyer':
    |      uint256 eth_to_withdraw = balances[user];
    |      // Update the user's balance prior to sending ETH to prevent recursive call.
  > |      balances[user] = 0;
    |      // Return the user's funds.  Throws on failure to prevent loss of funds.
    |      user.transfer(eth_to_withdraw);
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(90)

[31mViolation[0m for UnrestrictedWrite in contract 'CobinhoodBuyer':
    |      uint256 tokens_to_withdraw = (balances[user] * contract_token_balance) / contract_eth_value;
    |      // Update the value of tokens currently held by the contract.
  > |      contract_eth_value -= balances[user];
    |      // Update the user's balance prior to sending to prevent recursive call.
    |      balances[user] = 0;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(103)

[31mViolation[0m for UnrestrictedWrite in contract 'CobinhoodBuyer':
    |      contract_eth_value -= balances[user];
    |      // Update the user's balance prior to sending to prevent recursive call.
  > |      balances[user] = 0;
    |      // 1% fee if contract successfully bought tokens.
    |      uint256 fee = tokens_to_withdraw / 100;
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(105)

[31mViolation[0m for UnrestrictedWrite in contract 'CobinhoodBuyer':
    |    if (this.balance < eth_min) return;
    |    // Record that the contract has bought the tokens.
  > |    purchased_tokens = true;
    |    // Transfer all the funds to the crowdsale address
    |    // to buy tokens.  Throws if the crowdsale hasn't started yet or has
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'CobinhoodBuyer':
    |    require(msg.sender == developer);
    |    // Set the token addresse.
  > |    token = ERC20(_token);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'CobinhoodBuyer':
    |  function force_received() {
    |      require(msg.sender == developer);
  > |      received_tokens = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'CobinhoodBuyer':
    |
    |    // Irreversibly activate the kill switch.
  > |    kill_switch = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x4473d7e836e473aba72af381536a979e5063f7f8.sol(76)


