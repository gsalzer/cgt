Processing contract: /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol:ICOSyndicate
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'ICOSyndicate':
    |        // Transfer all the funds to the crowdsale address to buy tokens.
    |        // Throws if the crowdsale hasn't started yet or has already completed, preventing loss of funds.
  > |        require(sale.call.value(contract_eth_value)());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(105)

[33mWarning[0m for DAOConstantGas in contract 'ICOSyndicate':
    |            balances[user] = 0;
    |            // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |            user.transfer(eth_to_withdraw);
    |        }
    |        // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(70)

[33mWarning[0m for LockedEther in contract 'ICOSyndicate':
    |}
    |
  > |contract ICOSyndicate {
    |    // Store the amount of ETH deposited by each account.
    |    mapping (address => uint256) public balances;
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(19)

[31mViolation[0m for MissingInputValidation in contract 'ICOSyndicate':
    |contract ICOSyndicate {
    |    // Store the amount of ETH deposited by each account.
  > |    mapping (address => uint256) public balances;
    |    // Track whether the contract has bought the tokens yet.
    |    bool public bought_tokens;
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'ICOSyndicate':
    |
    |    // Allows the developer to set the crowdsale and token addresses.
  > |    function set_addresses(address _sale, address _token) public {
    |        // Only allow the developer to set the sale and token addresses.
    |        require(msg.sender == developer);
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'ICOSyndicate':
    |
    |    // Withdraws all ETH deposited or tokens purchased by the given user and rewards the caller.
  > |    function withdraw(address user) public {
    |        // Only allow withdrawals after the contract has had a chance to buy in.
    |        require(bought_tokens);
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(58)

[33mWarning[0m for MissingInputValidation in contract 'ICOSyndicate':
    |    mapping (address => uint256) public balances;
    |    // Track whether the contract has bought the tokens yet.
  > |    bool public bought_tokens;
    |    // Record ETH value of tokens currently held by contract.
    |    uint256 public contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'ICOSyndicate':
    |    bool public bought_tokens;
    |    // Record ETH value of tokens currently held by contract.
  > |    uint256 public contract_eth_value;
    |    // Emergency kill switch in case a critical bug is found.
    |    bool public kill_switch;
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'ICOSyndicate':
    |    uint256 public contract_eth_value;
    |    // Emergency kill switch in case a critical bug is found.
  > |    bool public kill_switch;
    |
    |    // Maximum amount of user ETH contract will accept.  Reduces risk of hard cap related failure.
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'ICOSyndicate':
    |
    |    // Maximum amount of user ETH contract will accept.  Reduces risk of hard cap related failure.
  > |    uint256 public eth_cap = 30000 ether;
    |    // The developer address.
    |    address public developer = 0x91d97da49d3cD71B475F46d719241BD8bb6Af18f;
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'ICOSyndicate':
    |    uint256 public eth_cap = 30000 ether;
    |    // The developer address.
  > |    address public developer = 0x91d97da49d3cD71B475F46d719241BD8bb6Af18f;
    |    // The crowdsale address.  Settable by the developer.
    |    address public sale;
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'ICOSyndicate':
    |    address public developer = 0x91d97da49d3cD71B475F46d719241BD8bb6Af18f;
    |    // The crowdsale address.  Settable by the developer.
  > |    address public sale;
    |    // The token address.  Settable by the developer.
    |    ERC20 public token;
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'ICOSyndicate':
    |    address public sale;
    |    // The token address.  Settable by the developer.
  > |    ERC20 public token;
    |
    |    // Allows the developer to set the crowdsale and token addresses.
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'ICOSyndicate':
    |
    |    // Allows the developer or anyone with the password to shut down everything except withdrawals in emergencies.
  > |    function activate_kill_switch() public {
    |        // Only activate the kill switch if the sender is the developer or the password is correct.
    |        require(msg.sender == developer);
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'ICOSyndicate':
    |
    |    // Buys tokens in the crowdsale and rewards the caller, callable by anyone.
  > |    function buy() public {
    |        // Short circuit to save gas if the contract has already bought tokens.
    |        if (bought_tokens) return;
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(92)

[31mViolation[0m for TODAmount in contract 'ICOSyndicate':
    |        // Transfer all the funds to the crowdsale address to buy tokens.
    |        // Throws if the crowdsale hasn't started yet or has already completed, preventing loss of funds.
  > |        require(sale.call.value(contract_eth_value)());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(105)

[31mViolation[0m for TODReceiver in contract 'ICOSyndicate':
    |        // Transfer all the funds to the crowdsale address to buy tokens.
    |        // Throws if the crowdsale hasn't started yet or has already completed, preventing loss of funds.
  > |        require(sale.call.value(contract_eth_value)());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(105)

[33mWarning[0m for TODReceiver in contract 'ICOSyndicate':
    |            balances[user] = 0;
    |            // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |            user.transfer(eth_to_withdraw);
    |        }
    |        // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(70)

[33mWarning[0m for UnhandledException in contract 'ICOSyndicate':
    |            balances[user] = 0;
    |            // Return the user's funds.  Throws on failure to prevent loss of funds.
  > |            user.transfer(eth_to_withdraw);
    |        }
    |        // Withdraw the user's tokens if the contract has purchased them.
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(70)

[33mWarning[0m for UnhandledException in contract 'ICOSyndicate':
    |        else {
    |            // Retrieve current token balance of contract.
  > |            uint256 contract_token_balance = token.balanceOf(address(this));
    |            // Disallow token withdrawals if there are no tokens to withdraw.
    |            require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(75)

[33mWarning[0m for UnhandledException in contract 'ICOSyndicate':
    |            balances[user] = 0;
    |            // Send the funds.  Throws on failure to prevent loss of funds.
  > |            require(token.transfer(user, tokens_to_withdraw));
    |
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(85)

[33mWarning[0m for UnhandledException in contract 'ICOSyndicate':
    |        // Transfer all the funds to the crowdsale address to buy tokens.
    |        // Throws if the crowdsale hasn't started yet or has already completed, preventing loss of funds.
  > |        require(sale.call.value(contract_eth_value)());
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(105)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOSyndicate':
    |        else {
    |            // Retrieve current token balance of contract.
  > |            uint256 contract_token_balance = token.balanceOf(address(this));
    |            // Disallow token withdrawals if there are no tokens to withdraw.
    |            require(contract_token_balance != 0);
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(75)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ICOSyndicate':
    |            balances[user] = 0;
    |            // Send the funds.  Throws on failure to prevent loss of funds.
  > |            require(token.transfer(user, tokens_to_withdraw));
    |
    |        }
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(85)

[31mViolation[0m for UnrestrictedWrite in contract 'ICOSyndicate':
    |            uint256 eth_to_withdraw = balances[user];
    |            // Update the user's balance prior to sending ETH to prevent recursive call.
  > |            balances[user] = 0;
    |            // Return the user's funds.  Throws on failure to prevent loss of funds.
    |            user.transfer(eth_to_withdraw);
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(68)

[31mViolation[0m for UnrestrictedWrite in contract 'ICOSyndicate':
    |            uint256 tokens_to_withdraw = (balances[user] * contract_token_balance) / contract_eth_value;
    |            // Update the value of tokens currently held by the contract.
  > |            contract_eth_value -= balances[user];
    |            // Update the user's balance prior to sending to prevent recursive call.
    |            balances[user] = 0;
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'ICOSyndicate':
    |            contract_eth_value -= balances[user];
    |            // Update the user's balance prior to sending to prevent recursive call.
  > |            balances[user] = 0;
    |            // Send the funds.  Throws on failure to prevent loss of funds.
    |            require(token.transfer(user, tokens_to_withdraw));
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(83)

[31mViolation[0m for UnrestrictedWrite in contract 'ICOSyndicate':
    |        require(sale != 0x0);
    |        // Record that the contract has bought the tokens.
  > |        bought_tokens = true;
    |        // Record the amount of ETH sent as the contract's current value.
    |        contract_eth_value = this.balance;
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(100)

[31mViolation[0m for UnrestrictedWrite in contract 'ICOSyndicate':
    |        bought_tokens = true;
    |        // Record the amount of ETH sent as the contract's current value.
  > |        contract_eth_value = this.balance;
    |        // Transfer all the funds to the crowdsale address to buy tokens.
    |        // Throws if the crowdsale hasn't started yet or has already completed, preventing loss of funds.
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOSyndicate':
    |        require(sale == 0x0);
    |        // Set the crowdsale and token addresses.
  > |        sale = _sale;
    |        token = ERC20(_token);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(45)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOSyndicate':
    |        // Set the crowdsale and token addresses.
    |        sale = _sale;
  > |        token = ERC20(_token);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'ICOSyndicate':
    |        require(msg.sender == developer);
    |        // Irreversibly activate the kill switch.
  > |        kill_switch = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8c6f3d75873c66cf0300c9d6dfe8d607d1824204.sol(54)


