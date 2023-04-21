Processing contract: /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol:SuperbContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'SuperbContract':
    |    //Sends before so the contract_eth_value contains the correct balance
    |    uint256 dev_fee = fees/FEE_DEV;
  > |    owner.transfer(fees-dev_fee);
    |    developer.transfer(dev_fee);
    |    //Record the amount of ETH sent as the contract's current value.
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(72)

[31mViolation[0m for DAOConstantGas in contract 'SuperbContract':
    |    uint256 dev_fee = fees/FEE_DEV;
    |    owner.transfer(fees-dev_fee);
  > |    developer.transfer(dev_fee);
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(73)

[33mWarning[0m for DAOConstantGas in contract 'SuperbContract':
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(78)

[33mWarning[0m for DAOConstantGas in contract 'SuperbContract':
    |    balances_bonus[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(145)

[33mWarning[0m for LockedEther in contract 'SuperbContract':
    |*/
    |
  > |contract SuperbContract {
    |
    |  modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(16)

[31mViolation[0m for MissingInputValidation in contract 'SuperbContract':
    |
    |  //Store the amount of ETH deposited by each account.
  > |  mapping (address => uint256) public balances;
    |  mapping (address => uint256) public balances_bonus;
    |  // Track whether the contract has bought the tokens yet.
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'SuperbContract':
    |  //Store the amount of ETH deposited by each account.
    |  mapping (address => uint256) public balances;
  > |  mapping (address => uint256) public balances_bonus;
    |  // Track whether the contract has bought the tokens yet.
    |  bool public bought_tokens = false;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  uint256 FEE = 100;    //1% fee
    |  uint256 FEE_DEV = 10; //10% on the 1% fee
  > |  address public owner;
    |  address constant public developer = 0xEE06BdDafFA56a303718DE53A5bc347EfbE4C68f;
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  uint256 FEE_DEV = 10; //10% on the 1% fee
    |  address public owner;
  > |  address constant public developer = 0xEE06BdDafFA56a303718DE53A5bc347EfbE4C68f;
    |
    |  //Variables subject to changes
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |
    |  //Variables subject to changes
  > |  uint256 public max_amount = 0 ether;  //0 means there is no limit
    |  uint256 public min_amount = 0 ether;
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  //Variables subject to changes
    |  uint256 public max_amount = 0 ether;  //0 means there is no limit
  > |  uint256 public min_amount = 0 ether;
    |
    |  //Store the amount of ETH deposited by each account.
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  mapping (address => uint256) public balances_bonus;
    |  // Track whether the contract has bought the tokens yet.
  > |  bool public bought_tokens = false;
    |  // Record ETH value of tokens currently held by contract.
    |  uint256 public contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  bool public bought_tokens = false;
    |  // Record ETH value of tokens currently held by contract.
  > |  uint256 public contract_eth_value;
    |  uint256 public contract_eth_value_bonus;
    |  //Set by the owner in order to allow the withdrawal of bonus tokens.
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(39)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  // Record ETH value of tokens currently held by contract.
    |  uint256 public contract_eth_value;
  > |  uint256 public contract_eth_value_bonus;
    |  //Set by the owner in order to allow the withdrawal of bonus tokens.
    |  bool bonus_received;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  bool bonus_received;
    |  //The address of the contact.
  > |  address public sale = 0x98Ba698Fc04e79DCE066873106424252e6aabc31;
    |  //Token address
    |  ERC20 public token;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  address public sale = 0x98Ba698Fc04e79DCE066873106424252e6aabc31;
    |  //Token address
  > |  ERC20 public token;
    |  //Records the fees that have to be sent
    |  uint256 fees;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(46)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |
    |  // Buy the tokens. Sends ETH to the presale wallet and records the ETH amount held in the contract.
  > |  function buy_the_tokens() onlyOwner {
    |    require(!bought_tokens);
    |    //Avoids burning the funds
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  }
    |
  > |  function set_token_address(address _token) onlyOwner {
    |    require(_token != 0x0);
    |    token = ERC20(_token);
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(81)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  }
    |
  > |  function set_bonus_received() onlyOwner {
    |    bonus_received = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  }
    |
  > |  function set_got_refunded() onlyOwner {
    |    /*
    |    In case, for some reasons, the project refunds the money
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  }
    |
  > |  function changeOwner(address new_owner) onlyOwner {
    |    require(new_owner != 0x0);
    |    owner = new_owner;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(97)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |
    |  // Allows any user to withdraw his tokens.
  > |  function withdraw() {
    |    // Disallow withdraw if tokens haven't been bought yet.
    |    require(bought_tokens);
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  }
    |
  > |  function withdraw_bonus() {
    |  /*
    |    Special function to withdraw the bonus tokens after the 6 months lockup.
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(120)

[33mWarning[0m for MissingInputValidation in contract 'SuperbContract':
    |  
    |  // Allows any user to get his eth refunded before the purchase is made.
  > |  function refund_me() {
    |    require(!bought_tokens || got_refunded);
    |    // Store the user's balance prior to withdrawal in a temporary variable.
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(136)

[31mViolation[0m for TODAmount in contract 'SuperbContract':
    |    //Sends before so the contract_eth_value contains the correct balance
    |    uint256 dev_fee = fees/FEE_DEV;
  > |    owner.transfer(fees-dev_fee);
    |    developer.transfer(dev_fee);
    |    //Record the amount of ETH sent as the contract's current value.
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(72)

[31mViolation[0m for TODAmount in contract 'SuperbContract':
    |    uint256 dev_fee = fees/FEE_DEV;
    |    owner.transfer(fees-dev_fee);
  > |    developer.transfer(dev_fee);
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(73)

[31mViolation[0m for TODAmount in contract 'SuperbContract':
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(78)

[31mViolation[0m for TODReceiver in contract 'SuperbContract':
    |    //Sends before so the contract_eth_value contains the correct balance
    |    uint256 dev_fee = fees/FEE_DEV;
  > |    owner.transfer(fees-dev_fee);
    |    developer.transfer(dev_fee);
    |    //Record the amount of ETH sent as the contract's current value.
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(72)

[31mViolation[0m for TODReceiver in contract 'SuperbContract':
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(78)

[33mWarning[0m for TODReceiver in contract 'SuperbContract':
    |    uint256 dev_fee = fees/FEE_DEV;
    |    owner.transfer(fees-dev_fee);
  > |    developer.transfer(dev_fee);
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(73)

[33mWarning[0m for TODReceiver in contract 'SuperbContract':
    |    balances_bonus[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(145)

[33mWarning[0m for UnhandledException in contract 'SuperbContract':
    |    //Sends before so the contract_eth_value contains the correct balance
    |    uint256 dev_fee = fees/FEE_DEV;
  > |    owner.transfer(fees-dev_fee);
    |    developer.transfer(dev_fee);
    |    //Record the amount of ETH sent as the contract's current value.
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(72)

[33mWarning[0m for UnhandledException in contract 'SuperbContract':
    |    uint256 dev_fee = fees/FEE_DEV;
    |    owner.transfer(fees-dev_fee);
  > |    developer.transfer(dev_fee);
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(73)

[33mWarning[0m for UnhandledException in contract 'SuperbContract':
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(78)

[33mWarning[0m for UnhandledException in contract 'SuperbContract':
    |    // Disallow withdraw if tokens haven't been bought yet.
    |    require(bought_tokens);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |    // Disallow token withdrawals if there are no tokens to withdraw.
    |    require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(108)

[33mWarning[0m for UnhandledException in contract 'SuperbContract':
    |    balances[msg.sender] = 0;
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  > |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(117)

[33mWarning[0m for UnhandledException in contract 'SuperbContract':
    |    require(bought_tokens);
    |    require(bonus_received);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |    require(contract_token_balance != 0);
    |    uint256 tokens_to_withdraw = (balances_bonus[msg.sender] * contract_token_balance) / contract_eth_value_bonus;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(127)

[33mWarning[0m for UnhandledException in contract 'SuperbContract':
    |    contract_eth_value_bonus -= balances_bonus[msg.sender];
    |    balances_bonus[msg.sender] = 0;
  > |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(132)

[33mWarning[0m for UnhandledException in contract 'SuperbContract':
    |    balances_bonus[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(145)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SuperbContract':
    |    //Sends before so the contract_eth_value contains the correct balance
    |    uint256 dev_fee = fees/FEE_DEV;
  > |    owner.transfer(fees-dev_fee);
    |    developer.transfer(dev_fee);
    |    //Record the amount of ETH sent as the contract's current value.
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(72)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SuperbContract':
    |    uint256 dev_fee = fees/FEE_DEV;
    |    owner.transfer(fees-dev_fee);
  > |    developer.transfer(dev_fee);
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(73)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SuperbContract':
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(78)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SuperbContract':
    |    // Disallow withdraw if tokens haven't been bought yet.
    |    require(bought_tokens);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |    // Disallow token withdrawals if there are no tokens to withdraw.
    |    require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SuperbContract':
    |    balances[msg.sender] = 0;
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  > |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(117)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SuperbContract':
    |    require(bought_tokens);
    |    require(bonus_received);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |    require(contract_token_balance != 0);
    |    uint256 tokens_to_withdraw = (balances_bonus[msg.sender] * contract_token_balance) / contract_eth_value_bonus;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'SuperbContract':
    |    contract_eth_value_bonus -= balances_bonus[msg.sender];
    |    balances_bonus[msg.sender] = 0;
  > |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(132)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperbContract':
    |    uint256 tokens_to_withdraw = (balances[msg.sender] * contract_token_balance) / contract_eth_value;
    |    // Update the value of tokens currently held by the contract.
  > |    contract_eth_value -= balances[msg.sender];
    |    // Update the user's balance prior to sending to prevent recursive call.
    |    balances[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'SuperbContract':
    |    require(contract_token_balance != 0);
    |    uint256 tokens_to_withdraw = (balances_bonus[msg.sender] * contract_token_balance) / contract_eth_value_bonus;
  > |    contract_eth_value_bonus -= balances_bonus[msg.sender];
    |    balances_bonus[msg.sender] = 0;
    |    require(token.transfer(msg.sender, tokens_to_withdraw));
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperbContract':
    |    contract_eth_value -= balances[msg.sender];
    |    // Update the user's balance prior to sending to prevent recursive call.
  > |    balances[msg.sender] = 0;
    |    // Send the funds.  Throws on failure to prevent loss of funds.
    |    require(token.transfer(msg.sender, tokens_to_withdraw));
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperbContract':
    |    uint256 tokens_to_withdraw = (balances_bonus[msg.sender] * contract_token_balance) / contract_eth_value_bonus;
    |    contract_eth_value_bonus -= balances_bonus[msg.sender];
  > |    balances_bonus[msg.sender] = 0;
    |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperbContract':
    |    uint256 eth_to_withdraw = balances[msg.sender];
    |    // Update the user's balance prior to sending ETH to prevent recursive call.
  > |    balances[msg.sender] = 0;
    |    //Updates the balances_bonus too
    |    balances_bonus[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperbContract':
    |    balances[msg.sender] = 0;
    |    //Updates the balances_bonus too
  > |    balances_bonus[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
    |    msg.sender.transfer(eth_to_withdraw);
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(143)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperbContract':
    |    require(this.balance >= min_amount);
    |    //Record that the contract has bought the tokens.
  > |    bought_tokens = true;
    |    //Sends before so the contract_eth_value contains the correct balance
    |    uint256 dev_fee = fees/FEE_DEV;
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperbContract':
    |    developer.transfer(dev_fee);
    |    //Record the amount of ETH sent as the contract's current value.
  > |    contract_eth_value = this.balance;
    |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperbContract':
    |    //Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  > |    contract_eth_value_bonus = this.balance;
    |    // Transfer all the funds to the crowdsale address.
    |    sale.transfer(contract_eth_value);
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperbContract':
    |  function set_token_address(address _token) onlyOwner {
    |    require(_token != 0x0);
  > |    token = ERC20(_token);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(83)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperbContract':
    |
    |  function set_bonus_received() onlyOwner {
  > |    bonus_received = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperbContract':
    |    In case, for some reasons, the project refunds the money
    |    */
  > |    got_refunded = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(94)

[33mWarning[0m for UnrestrictedWrite in contract 'SuperbContract':
    |  function changeOwner(address new_owner) onlyOwner {
    |    require(new_owner != 0x0);
  > |    owner = new_owner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xffb0d04ec8e7207339b83d6ac17e075db3b85d8a.sol(99)


