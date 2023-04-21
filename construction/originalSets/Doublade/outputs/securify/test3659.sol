Processing contract: /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol:QUANTFund
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'QUANTFund':
    |      
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(66)

[33mWarning[0m for DAOConstantGas in contract 'QUANTFund':
    |
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(82)

[33mWarning[0m for LockedEther in contract 'QUANTFund':
    |}
    |
  > |contract QUANTFund {
    |  // Store the amount of ETH deposited by each account.
    |  mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(9)

[31mViolation[0m for MissingInputValidation in contract 'QUANTFund':
    |contract QUANTFund {
    |  // Store the amount of ETH deposited by each account.
  > |  mapping (address => uint256) public balances;
    |  
    |  // Track whether the contract has bought the tokens yet.
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'QUANTFund':
    |  
    |  // Track whether the contract has bought the tokens yet.
  > |  bool public bought_tokens = false;
    |  
    |  // Record ETH value of tokens currently held by contract.
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'QUANTFund':
    |  
    |  // Record ETH value of tokens currently held by contract.
  > |  uint256 public contract_eth_value;
    |  
    |  // The maximum amount of ETH that can be deposited into the contract.
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'QUANTFund':
    |  
    |  // The maximum amount of ETH that can be deposited into the contract.
  > |  uint256 constant public max_raised_amount = 200 ether;
    |  
    |  bytes32 hash_pwd = 0xe1ccf0005757f598f4ff97410bc0d3ff7248f92b17ed522a0f649dbde89dfc02;
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'QUANTFund':
    |  
    |  // The crowdsale address.
  > |  address public sale = 0x0;
    |
    |  address constant public creator = 0xEE06BdDafFA56a303718DE53A5bc347EfbE4C68f;
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'QUANTFund':
    |  address public sale = 0x0;
    |
  > |  address constant public creator = 0xEE06BdDafFA56a303718DE53A5bc347EfbE4C68f;
    |  
    |  // Allows any user to withdraw his tokens.
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'QUANTFund':
    |  // Allows any user to withdraw his tokens.
    |  // Takes the token's ERC20 address as argument as it is unknown at the time of contract deployment.
  > |  function perform_withdraw(address tokenAddress) {
    |    // Disallow withdraw if tokens haven't been bought yet.
    |    require(bought_tokens);
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(31)

[33mWarning[0m for MissingInputValidation in contract 'QUANTFund':
    |  
    |  // Allows any user to get his eth refunded before the purchase is made or after approx. 20 days in case the devs refund the eth.
  > |  function refund_me() {
    |    require(!bought_tokens);
    |    
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'QUANTFund':
    |  
    |  // Buy the tokens. Sends ETH to the presale wallet and records the ETH amount held in the contract.
  > |  function buy_the_tokens(string _password) {
    |    require(!bought_tokens);
    |    require(sale != 0x0);
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(70)

[31mViolation[0m for TODAmount in contract 'QUANTFund':
    |
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(82)

[31mViolation[0m for TODReceiver in contract 'QUANTFund':
    |
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(82)

[33mWarning[0m for TODReceiver in contract 'QUANTFund':
    |      
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(66)

[33mWarning[0m for UnhandledException in contract 'QUANTFund':
    |    // Retrieve current token balance of contract.
    |    ERC20 token = ERC20(tokenAddress);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |      
    |    // Disallow token withdrawals if there are no tokens to withdraw.
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(37)

[33mWarning[0m for UnhandledException in contract 'QUANTFund':
    |
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  > |    require(!token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(52)

[33mWarning[0m for UnhandledException in contract 'QUANTFund':
    |      
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |    msg.sender.transfer(eth_to_withdraw);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(66)

[33mWarning[0m for UnhandledException in contract 'QUANTFund':
    |
    |    // Transfer all the funds to the crowdsale address.
  > |    sale.transfer(contract_eth_value);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(82)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QUANTFund':
    |    // Retrieve current token balance of contract.
    |    ERC20 token = ERC20(tokenAddress);
  > |    uint256 contract_token_balance = token.balanceOf(address(this));
    |      
    |    // Disallow token withdrawals if there are no tokens to withdraw.
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(37)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'QUANTFund':
    |
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  > |    require(!token.transfer(msg.sender, tokens_to_withdraw));
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'QUANTFund':
    |      
    |    // Update the value of tokens currently held by the contract.
  > |    contract_eth_value -= balances[msg.sender];
    |      
    |    // Update the user's balance prior to sending to prevent recursive call.
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'QUANTFund':
    |    
    |    // Record that the contract has bought the tokens.
  > |    bought_tokens = true;
    |    
    |    // Record the amount of ETH sent as the contract's current value.
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(76)

[31mViolation[0m for UnrestrictedWrite in contract 'QUANTFund':
    |    
    |    // Record the amount of ETH sent as the contract's current value.
  > |    contract_eth_value = this.balance;
    |
    |    // Transfer all the funds to the crowdsale address.
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(79)

[31mViolation[0m for UnrestrictedWrite in contract 'QUANTFund':
    |    require(sale == 0x0);
    |    require(!bought_tokens);
  > |    sale = _sale;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(89)

[33mWarning[0m for UnrestrictedWrite in contract 'QUANTFund':
    |      
    |    // Update the user's balance prior to sending to prevent recursive call.
  > |    balances[msg.sender] = 0;
    |
    |    // Send the funds.  Throws on failure to prevent loss of funds.
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'QUANTFund':
    |      
    |    // Update the user's balance prior to sending ETH to prevent recursive call.
  > |    balances[msg.sender] = 0;
    |      
    |    // Return the user's funds.  Throws on failure to prevent loss of funds.
  at /home/jiaming/mavs_srcs/contract@0xefc9815c824ce9cad76d9af87ae8480b7635079b.sol(63)


