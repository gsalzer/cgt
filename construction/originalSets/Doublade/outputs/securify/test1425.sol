Processing contract: /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol:BuyerFund
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol:ERC20
[33mWarning[0m for DAOConstantGas in contract 'BuyerFund':
    | 
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(78)

[33mWarning[0m for DAOConstantGas in contract 'BuyerFund':
    | 
    |        // Transfer all the funds to the crowdsale address.
  > |        sale.transfer(contract_eth_value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(99)

[33mWarning[0m for LockedEther in contract 'BuyerFund':
    |}
    | 
  > |contract BuyerFund {
    |  // Store the amount of ETH deposited by each account.
    |  mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(7)

[31mViolation[0m for MissingInputValidation in contract 'BuyerFund':
    |contract BuyerFund {
    |  // Store the amount of ETH deposited by each account.
  > |  mapping (address => uint256) public balances;
    | 
    |  // Track whether the contract has bought the tokens yet.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    | 
    |  // Track whether the contract has bought the tokens yet.
  > |  bool public bought_tokens;
    | 
    |  // Whether contract is enabled.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    | 
    |  // Whether contract is enabled.
  > |  bool public contract_enabled;
    | 
    |  // Record ETH value of tokens currently held by contract.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    | 
    |  // Record ETH value of tokens currently held by contract.
  > |  uint256 public contract_eth_value;
    | 
    |  // The minimum amount of ETH that must be deposited before the buy-in can be performed.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    | 
    |  // The minimum amount of ETH that must be deposited before the buy-in can be performed.
  > |  uint256 constant public min_required_amount = 100 ether;
    | 
    |  // The maximum amount of ETH that can be deposited into the contract.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    | 
    |  // The maximum amount of ETH that can be deposited into the contract.
  > |  uint256 public max_raised_amount = 300 ether;
    | 
    |  // The first block after which a refund is allowed. Set in the contract constructor.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    | 
    |  // The first block after which a refund is allowed. Set in the contract constructor.
  > |  uint256 public min_refund_block;
    | 
    |  // The crowdsale address.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    | 
    |  // The crowdsale address.
  > |  address constant public sale = 0x09AE9886C971279E771030aD5Da37f227fb1e7f9;
    | 
    |  // Constructor.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    |  // Allows any user to withdraw his tokens.
    |  // Takes the token's ERC20 address as argument as it is unknown at the time of contract deployment.
  > |  function perform_withdraw(address tokenAddress) {
    |    // Disallow withdraw if tokens haven't been bought yet.
    |    if (!bought_tokens) throw;
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(40)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    | 
    |  // Allows any user to get his eth refunded before the purchase is made or after approx. 20 days in case the devs refund the eth.
  > |  function refund_me() {
    |    if (bought_tokens) {
    |      // Only allow refunds when the tokens have been bought if the minimum refund block has been reached.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    | 
    |  // Buy the tokens. Sends ETH to the presale wallet and records the ETH amount held in the contract.
  > |  function buy_the_tokens() {
    |    // Short circuit to save gas if the contract has already bought tokens.
    | 
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(82)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    | 
    |  // Raise total cap.
  > | function upgrade_cap() {
    |      if (msg.sender == 0xC68bb418ee2B566E4a3786F0fA838aEa85aE1186) {
    |          max_raised_amount = 500 ether;
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    | 
    |  // A helper function for the default function, allowing contracts to interact.
  > |  function default_helper() payable {
    |    // Only allow deposits if the contract hasn't already purchased the tokens.
    |    require(!bought_tokens);
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(111)

[33mWarning[0m for MissingInputValidation in contract 'BuyerFund':
    |  }
    | 
  > |  function enable_sale(){
    |    if (msg.sender == 0xC68bb418ee2B566E4a3786F0fA838aEa85aE1186) {
    |        contract_enabled = true;
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(125)

[31mViolation[0m for TODAmount in contract 'BuyerFund':
    | 
    |        // Transfer all the funds to the crowdsale address.
  > |        sale.transfer(contract_eth_value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(99)

[33mWarning[0m for TODReceiver in contract 'BuyerFund':
    | 
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(78)

[33mWarning[0m for TODReceiver in contract 'BuyerFund':
    | 
    |        // Transfer all the funds to the crowdsale address.
  > |        sale.transfer(contract_eth_value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(99)

[33mWarning[0m for UnhandledException in contract 'BuyerFund':
    |    // Retrieve current token balance of contract.
    |    ERC20 token = ERC20(tokenAddress);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    | 
    |    // Disallow token withdrawals if there are no tokens to withdraw.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(46)

[33mWarning[0m for UnhandledException in contract 'BuyerFund':
    | 
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  > |    if(!token.transfer(msg.sender, tokens_to_withdraw)) throw;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(61)

[33mWarning[0m for UnhandledException in contract 'BuyerFund':
    | 
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(78)

[33mWarning[0m for UnhandledException in contract 'BuyerFund':
    | 
    |        // Transfer all the funds to the crowdsale address.
  > |        sale.transfer(contract_eth_value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(99)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BuyerFund':
    |    // Retrieve current token balance of contract.
    |    ERC20 token = ERC20(tokenAddress);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    | 
    |    // Disallow token withdrawals if there are no tokens to withdraw.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(46)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BuyerFund':
    | 
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  > |    if(!token.transfer(msg.sender, tokens_to_withdraw)) throw;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(61)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BuyerFund':
    | 
    |        // Transfer all the funds to the crowdsale address.
  > |        sale.transfer(contract_eth_value);
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(99)

[31mViolation[0m for UnrestrictedWrite in contract 'BuyerFund':
    | 
    |    // Update the value of tokens currently held by the contract.
  > |    contract_eth_value -= balances[msg.sender];
    | 
    |    // Update the user's balance prior to sending to prevent recursive call.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'BuyerFund':
    | 
    |    // Update the user's balance prior to sending to prevent recursive call.
  > |    balances[msg.sender] = 0;
    | 
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'BuyerFund':
    | 
    |    // Update the user's balance prior to sending ETH to prevent recursive call.
  > |    balances[msg.sender] = 0;
    | 
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'BuyerFund':
    | 
    |        // Record that the contract has bought the tokens.
  > |        bought_tokens = true;
    | 
    |        // Record the amount of ETH sent as the contract's current value.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BuyerFund':
    | 
    |        // Record the amount of ETH sent as the contract's current value.
  > |        contract_eth_value = this.balance;
    | 
    |        // Transfer all the funds to the crowdsale address.
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(96)

[33mWarning[0m for UnrestrictedWrite in contract 'BuyerFund':
    | function upgrade_cap() {
    |      if (msg.sender == 0xC68bb418ee2B566E4a3786F0fA838aEa85aE1186) {
  > |          max_raised_amount = 500 ether;
    |      }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'BuyerFund':
    | 
    |    // Update records of deposited ETH to include the received amount.
  > |    balances[msg.sender] += msg.value;
    |  }
    | 
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(122)

[33mWarning[0m for UnrestrictedWrite in contract 'BuyerFund':
    |  function enable_sale(){
    |    if (msg.sender == 0xC68bb418ee2B566E4a3786F0fA838aEa85aE1186) {
  > |        contract_enabled = true;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5ab2e3f693e6961beea08c1db8a3602fcea6b36f.sol(127)


