Processing contract: /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol:OraclesPresale
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'OraclesPresale':
    |    contract_eth_value = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    require(sale.call.value(contract_eth_value)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(88)

[33mWarning[0m for DAOConstantGas in contract 'OraclesPresale':
    |    balances[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(70)

[33mWarning[0m for LockedEther in contract 'OraclesPresale':
    |}
    |
  > |contract OraclesPresale {
    |  // Store the amount of ETH deposited by each account.
    |  mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'OraclesPresale':
    |contract OraclesPresale {
    |  // Store the amount of ETH deposited by each account.
  > |  mapping (address => uint256) public balances;
    |  // Track whether the contract has bought the tokens yet.
    |  bool public bought_tokens;
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'OraclesPresale':
    |  
    |  // Allows the developer to set the crowdsale address.
  > |  function set_saleAddress(address _sale) public{
    |    // Only allow the developer to set the sale and token addresses.
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'OraclesPresale':
    |  mapping (address => uint256) public balances;
    |  // Track whether the contract has bought the tokens yet.
  > |  bool public bought_tokens;
    |  // Record ETH value of tokens currently held by contract.
    |  uint256 public contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'OraclesPresale':
    |  bool public bought_tokens;
    |  // Record ETH value of tokens currently held by contract.
  > |  uint256 public contract_eth_value;
    |  // Maximum amount of user ETH contract will accept.
    |  uint256 public eth_cap = 500 ether;
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'OraclesPresale':
    |  uint256 public contract_eth_value;
    |  // Maximum amount of user ETH contract will accept.
  > |  uint256 public eth_cap = 500 ether;
    |  // The minimum amount of ETH that must be deposited before the buy-in can be performed.
    |  uint256 constant public min_required_amount = 100 ether;
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'OraclesPresale':
    |  uint256 public eth_cap = 500 ether;
    |  // The minimum amount of ETH that must be deposited before the buy-in can be performed.
  > |  uint256 constant public min_required_amount = 100 ether;
    |  // The owner's address.
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'OraclesPresale':
    |  uint256 constant public min_required_amount = 100 ether;
    |  // The owner's address.
  > |  address public owner;
    |  // The crowdsale address. Will be set once it's known.
    |  address public sale;
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'OraclesPresale':
    |  address public owner;
    |  // The crowdsale address. Will be set once it's known.
  > |  address public sale;
    |  
    |  //Constructor. Sets the sender as the owner of the contract.
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(26)

[33mWarning[0m for MissingInputValidation in contract 'OraclesPresale':
    |  // Allows any user to withdraw his tokens.
    |  // Token's ERC20 address as argument as it is unknow at the time of deployement.
  > |  function perform_withdrawal(address tokenAddress) public{
    |    // Tokens must be bought
    |    require(bought_tokens);
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'OraclesPresale':
    |  
    |  // Allows any caller to get his eth refunded.
  > |  function refund_me() public{
    |    // Store the user's balance prior to withdrawal in a temporary variable.
    |    uint256 eth_to_withdraw = balances[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'OraclesPresale':
    |  
    |  // Buy the tokens. Sends ETH to the presale wallet and records the ETH amount held in the contract.
  > |  function buy_the_tokens() public{
    |    // Only allow the owner to perform the buy in.
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'OraclesPresale':
    |  }
    |
  > |  function upgrade_cap() public{
    |    // Only the owner can raise the cap.
    |    require(msg.sender == owner);
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(91)

[31mViolation[0m for TODAmount in contract 'OraclesPresale':
    |    contract_eth_value = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    require(sale.call.value(contract_eth_value)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(88)

[31mViolation[0m for TODReceiver in contract 'OraclesPresale':
    |    contract_eth_value = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    require(sale.call.value(contract_eth_value)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(88)

[33mWarning[0m for TODReceiver in contract 'OraclesPresale':
    |    balances[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(70)

[33mWarning[0m for UnhandledException in contract 'OraclesPresale':
    |    // Retrieve current token balance of contract
    |    ERC20 token = ERC20(tokenAddress);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |    // Disallow token withdrawals if there are no tokens to withdraw.
    |    require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(50)

[33mWarning[0m for UnhandledException in contract 'OraclesPresale':
    |    balances[msg.sender] = 0;
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  > |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(60)

[33mWarning[0m for UnhandledException in contract 'OraclesPresale':
    |    balances[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(70)

[33mWarning[0m for UnhandledException in contract 'OraclesPresale':
    |    contract_eth_value = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    require(sale.call.value(contract_eth_value)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(88)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OraclesPresale':
    |    // Retrieve current token balance of contract
    |    ERC20 token = ERC20(tokenAddress);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |    // Disallow token withdrawals if there are no tokens to withdraw.
    |    require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(50)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OraclesPresale':
    |    balances[msg.sender] = 0;
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  > |    require(token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(60)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OraclesPresale':
    |    contract_eth_value = this.balance;
    |    // Transfer all the funds to the crowdsale address.
  > |    require(sale.call.value(contract_eth_value)());
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(88)

[31mViolation[0m for UnrestrictedWrite in contract 'OraclesPresale':
    |    uint256 tokens_to_withdraw = (balances[msg.sender] * contract_token_balance) / contract_eth_value;
    |    // Update the value of tokens currently held by the contract.
  > |    contract_eth_value -= balances[msg.sender];
    |    // Update the user's balance prior to sending to prevent recursive call.
    |    balances[msg.sender] = 0;
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclesPresale':
    |    contract_eth_value -= balances[msg.sender];
    |    // Update the user's balance prior to sending to prevent recursive call.
  > |    balances[msg.sender] = 0;
    |    // Send the funds.  Throws on failure to prevent loss of funds.
    |    require(token.transfer(msg.sender, tokens_to_withdraw));
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(58)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclesPresale':
    |    uint256 eth_to_withdraw = balances[msg.sender];
    |    // Update the user's balance prior to sending ETH to prevent recursive call.
  > |    balances[msg.sender] = 0;
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
    |    msg.sender.transfer(eth_to_withdraw);
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(68)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclesPresale':
    |    require(sale == 0x0);
    |    // Set the crowdsale and token addresses.
  > |    sale = _sale;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclesPresale':
    |    require(this.balance >= min_required_amount);
    |    // Record that the contract has bought the tokens.
  > |    bought_tokens = true;
    |    // Record the amount of ETH sent as the contract's current value.
    |    contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclesPresale':
    |    bought_tokens = true;
    |    // Record the amount of ETH sent as the contract's current value.
  > |    contract_eth_value = this.balance;
    |    // Transfer all the funds to the crowdsale address.
    |    require(sale.call.value(contract_eth_value)());
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'OraclesPresale':
    |    require(msg.sender == owner);
    |    // Raise the cap.
  > |    eth_cap = 1000 ether;
    |    
    |  }
  at /home/jiaming/mavs_srcs/contract@0x098af9afa803e2598bda464ea2fa0e144649f3f9.sol(95)


