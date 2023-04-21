Processing contract: /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol:SECRETSanity
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'SECRETSanity':
    |    bought_tokens = true;
    |    //Sent before so the contract_eth_value contains the correct balance
  > |    developer.transfer(fees);
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(91)

[33mWarning[0m for DAOConstantGas in contract 'SECRETSanity':
    |    balances_bonus[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(81)

[33mWarning[0m for DAOConstantGas in contract 'SECRETSanity':
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(96)

[33mWarning[0m for LockedEther in contract 'SECRETSanity':
    |*/
    |
  > |contract SECRETSanity {
    |
    |  modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'SECRETSanity':
    |
    |  //Store the amount of ETH deposited by each account.
  > |  mapping (address => uint256) public balances;
    |  mapping (address => uint256) public balances_bonus;
    |  // Track whether the contract has bought the tokens yet.
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(24)

[31mViolation[0m for MissingInputValidation in contract 'SECRETSanity':
    |  //Store the amount of ETH deposited by each account.
    |  mapping (address => uint256) public balances;
  > |  mapping (address => uint256) public balances_bonus;
    |  // Track whether the contract has bought the tokens yet.
    |  bool public bought_tokens = false;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  mapping (address => uint256) public balances_bonus;
    |  // Track whether the contract has bought the tokens yet.
  > |  bool public bought_tokens = false;
    |  // Record ETH value of tokens currently held by contract.
    |  uint256 public contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  bool public bought_tokens = false;
    |  // Record ETH value of tokens currently held by contract.
  > |  uint256 public contract_eth_value;
    |  uint256 public contract_eth_value_bonus;
    |  //Set by the owner in order to allow the withdrawal of bonus tokens.
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  // Record ETH value of tokens currently held by contract.
    |  uint256 public contract_eth_value;
  > |  uint256 public contract_eth_value_bonus;
    |  //Set by the owner in order to allow the withdrawal of bonus tokens.
    |  bool bonus_received;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  bool bonus_received;
    |  //The address of the contact.
  > |  address public sale = 0x6997f780521E233130249fc00bD7e0a7F2ddbbCF;
    |  // Token address
    |  ERC20 public token;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  address public sale = 0x6997f780521E233130249fc00bD7e0a7F2ddbbCF;
    |  // Token address
  > |  ERC20 public token;
    |  address constant public developer = 0xEE06BdDafFA56a303718DE53A5bc347EfbE4C68f;
    |  uint256 fees;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  // Token address
    |  ERC20 public token;
  > |  address constant public developer = 0xEE06BdDafFA56a303718DE53A5bc347EfbE4C68f;
    |  uint256 fees;
    |  
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  
    |  // Allows any user to withdraw his tokens.
  > |  function withdraw() {
    |    // Disallow withdraw if tokens haven't been bought yet.
    |    require(bought_tokens);
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(41)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  }
    |
  > |  function withdraw_bonus() {
    |  /*
    |    Special function to withdraw the bonus tokens after the 6 months lockup.
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  
    |  // Allows any user to get his eth refunded before the purchase is made.
  > |  function refund_me() {
    |    require(!bought_tokens);
    |    // Store the user's balance prior to withdrawal in a temporary variable.
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  
    |  // Buy the tokens. Sends ETH to the presale wallet and records the ETH amount held in the contract.
  > |  function buy_the_tokens() onlyOwner {
    |    require(!bought_tokens);
    |    require(sale != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(85)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  }
    |  
  > |  function set_token_address(address _token) onlyOwner {
    |    require(_token != 0x0);
    |    token = ERC20(_token);
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(99)

[33mWarning[0m for MissingInputValidation in contract 'SECRETSanity':
    |  }
    |
  > |  function set_bonus_received() onlyOwner {
    |    bonus_received = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(104)

[31mViolation[0m for TODAmount in contract 'SECRETSanity':
    |    bought_tokens = true;
    |    //Sent before so the contract_eth_value contains the correct balance
  > |    developer.transfer(fees);
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(91)

[31mViolation[0m for TODAmount in contract 'SECRETSanity':
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(96)

[31mViolation[0m for TODReceiver in contract 'SECRETSanity':
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(96)

[33mWarning[0m for TODReceiver in contract 'SECRETSanity':
    |    balances_bonus[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(81)

[33mWarning[0m for TODReceiver in contract 'SECRETSanity':
    |    bought_tokens = true;
    |    //Sent before so the contract_eth_value contains the correct balance
  > |    developer.transfer(fees);
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(91)

[33mWarning[0m for UnhandledException in contract 'SECRETSanity':
    |    // Disallow withdraw if tokens haven't been bought yet.
    |    require(bought_tokens);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |    // Disallow token withdrawals if there are no tokens to withdraw.
    |    require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(44)

[33mWarning[0m for UnhandledException in contract 'SECRETSanity':
    |    balances[msg.sender] = 0;
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  > |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(53)

[33mWarning[0m for UnhandledException in contract 'SECRETSanity':
    |    require(bought_tokens);
    |    require(bonus_received);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |    require(contract_token_balance != 0);
    |    uint256 tokens_to_withdraw = (balances_bonus[msg.sender] * contract_token_balance) / contract_eth_value_bonus;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(63)

[33mWarning[0m for UnhandledException in contract 'SECRETSanity':
    |    contract_eth_value_bonus -= balances_bonus[msg.sender];
    |    balances_bonus[msg.sender] = 0;
  > |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(68)

[33mWarning[0m for UnhandledException in contract 'SECRETSanity':
    |    balances_bonus[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(81)

[33mWarning[0m for UnhandledException in contract 'SECRETSanity':
    |    bought_tokens = true;
    |    //Sent before so the contract_eth_value contains the correct balance
  > |    developer.transfer(fees);
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(91)

[33mWarning[0m for UnhandledException in contract 'SECRETSanity':
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(96)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SECRETSanity':
    |    // Disallow withdraw if tokens haven't been bought yet.
    |    require(bought_tokens);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |    // Disallow token withdrawals if there are no tokens to withdraw.
    |    require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(44)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SECRETSanity':
    |    balances[msg.sender] = 0;
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  > |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(53)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SECRETSanity':
    |    require(bought_tokens);
    |    require(bonus_received);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |    require(contract_token_balance != 0);
    |    uint256 tokens_to_withdraw = (balances_bonus[msg.sender] * contract_token_balance) / contract_eth_value_bonus;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(63)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SECRETSanity':
    |    contract_eth_value_bonus -= balances_bonus[msg.sender];
    |    balances_bonus[msg.sender] = 0;
  > |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(68)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SECRETSanity':
    |    bought_tokens = true;
    |    //Sent before so the contract_eth_value contains the correct balance
  > |    developer.transfer(fees);
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(91)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SECRETSanity':
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'SECRETSanity':
    |    uint256 tokens_to_withdraw = (balances[msg.sender] * contract_token_balance) / contract_eth_value;
    |    // Update the value of tokens currently held by the contract.
  > |    contract_eth_value -= balances[msg.sender];
    |    // Update the user's balance prior to sending to prevent recursive call.
    |    balances[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(49)

[31mViolation[0m for UnrestrictedWrite in contract 'SECRETSanity':
    |    require(contract_token_balance != 0);
    |    uint256 tokens_to_withdraw = (balances_bonus[msg.sender] * contract_token_balance) / contract_eth_value_bonus;
  > |    contract_eth_value_bonus -= balances_bonus[msg.sender];
    |    balances_bonus[msg.sender] = 0;
    |    require(token.transfer(msg.sender, tokens_to_withdraw));
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'SECRETSanity':
    |    contract_eth_value -= balances[msg.sender];
    |    // Update the user's balance prior to sending to prevent recursive call.
  > |    balances[msg.sender] = 0;
    |    // Send the funds.  Throws on failure to prevent loss of funds.
    |    require(token.transfer(msg.sender, tokens_to_withdraw));
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(51)

[33mWarning[0m for UnrestrictedWrite in contract 'SECRETSanity':
    |    uint256 tokens_to_withdraw = (balances_bonus[msg.sender] * contract_token_balance) / contract_eth_value_bonus;
    |    contract_eth_value_bonus -= balances_bonus[msg.sender];
  > |    balances_bonus[msg.sender] = 0;
    |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(67)

[33mWarning[0m for UnrestrictedWrite in contract 'SECRETSanity':
    |    uint256 eth_to_withdraw = balances[msg.sender];
    |    // Update the user's balance prior to sending ETH to prevent recursive call.
  > |    balances[msg.sender] = 0;
    |    //Updates the balances_bonus too
    |    balances_bonus[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(77)

[33mWarning[0m for UnrestrictedWrite in contract 'SECRETSanity':
    |    balances[msg.sender] = 0;
    |    //Updates the balances_bonus too
  > |    balances_bonus[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
    |    msg.sender.transfer(eth_to_withdraw);
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(79)

[33mWarning[0m for UnrestrictedWrite in contract 'SECRETSanity':
    |    require(sale != 0x0);
    |    //Record that the contract has bought the tokens.
  > |    bought_tokens = true;
    |    //Sent before so the contract_eth_value contains the correct balance
    |    developer.transfer(fees);
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'SECRETSanity':
    |    developer.transfer(fees);
    |    //Record the amount of ETH sent as the contract's current value.
  > |    contract_eth_value = this.balance;
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'SECRETSanity':
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  > |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
    |    sale.transfer(contract_eth_value);
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'SECRETSanity':
    |  function set_token_address(address _token) onlyOwner {
    |    require(_token != 0x0);
  > |    token = ERC20(_token);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'SECRETSanity':
    |
    |  function set_bonus_received() onlyOwner {
  > |    bonus_received = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xa1ea6670edf54d0cf557491cc9be249dc25dc20b.sol(105)


