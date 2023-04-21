Processing contract: /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol:EnjinBuyer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'EnjinBuyer':
    |    bought_tokens = true;
    |    contract_eth_value = this.balance;
  > |    require(sale.call.value(contract_eth_value)());
    |    require(this.balance==0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(104)

[33mWarning[0m for DAOConstantGas in contract 'EnjinBuyer':
    |      uint256 eth_to_withdraw = balances[msg.sender];
    |      balances[msg.sender] = 0;
  > |      msg.sender.transfer(eth_to_withdraw);
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(54)

[33mWarning[0m for DAOConstantGas in contract 'EnjinBuyer':
    |      uint256 eth_to_withdraw = balances[user];
    |      balances[user] = 0;
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(82)

[33mWarning[0m for LockedEther in contract 'EnjinBuyer':
    |}
    |
  > |contract EnjinBuyer {
    |  mapping (address => uint256) public balances;
    |  mapping (address => uint256) public balances_after_buy;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'EnjinBuyer':
    |
    |contract EnjinBuyer {
  > |  mapping (address => uint256) public balances;
    |  mapping (address => uint256) public balances_after_buy;
    |  bool public bought_tokens;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'EnjinBuyer':
    |contract EnjinBuyer {
    |  mapping (address => uint256) public balances;
  > |  mapping (address => uint256) public balances_after_buy;
    |  bool public bought_tokens;
    |  bool public token_set;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  uint256 public eth_minimum = 3235 ether;
    |
  > |  function set_token(address _token) {
    |    require(msg.sender == developer);
    |    token = ERC20(_token);
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(26)

[31mViolation[0m for MissingInputValidation in contract 'EnjinBuyer':
    |
    |  // This function should only be called in the unfortunate case that Enjin should refund from a different address.
  > |  function set_refunded(bool _refunded) {
    |    require(msg.sender == developer);
    |    refunded = _refunded;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  mapping (address => uint256) public balances;
    |  mapping (address => uint256) public balances_after_buy;
  > |  bool public bought_tokens;
    |  bool public token_set;
    |  bool public refunded;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  mapping (address => uint256) public balances_after_buy;
    |  bool public bought_tokens;
  > |  bool public token_set;
    |  bool public refunded;
    |  uint256 public contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  bool public bought_tokens;
    |  bool public token_set;
  > |  bool public refunded;
    |  uint256 public contract_eth_value;
    |  bool public kill_switch;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  bool public token_set;
    |  bool public refunded;
  > |  uint256 public contract_eth_value;
    |  bool public kill_switch;
    |  bytes32 password_hash = 0x8bf0720c6e610aace867eba51b03ab8ca908b665898b10faddc95a96e829539d;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  bool public refunded;
    |  uint256 public contract_eth_value;
  > |  bool public kill_switch;
    |  bytes32 password_hash = 0x8bf0720c6e610aace867eba51b03ab8ca908b665898b10faddc95a96e829539d;
    |  address public developer = 0x0639C169D9265Ca4B4DEce693764CdA8ea5F3882;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  bool public kill_switch;
    |  bytes32 password_hash = 0x8bf0720c6e610aace867eba51b03ab8ca908b665898b10faddc95a96e829539d;
  > |  address public developer = 0x0639C169D9265Ca4B4DEce693764CdA8ea5F3882;
    |  address public sale = 0xc4740f71323129669424d1Ae06c42AEE99da30e2;
    |  ERC20 public token;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  bytes32 password_hash = 0x8bf0720c6e610aace867eba51b03ab8ca908b665898b10faddc95a96e829539d;
    |  address public developer = 0x0639C169D9265Ca4B4DEce693764CdA8ea5F3882;
  > |  address public sale = 0xc4740f71323129669424d1Ae06c42AEE99da30e2;
    |  ERC20 public token;
    |  uint256 public eth_minimum = 3235 ether;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  address public developer = 0x0639C169D9265Ca4B4DEce693764CdA8ea5F3882;
    |  address public sale = 0xc4740f71323129669424d1Ae06c42AEE99da30e2;
  > |  ERC20 public token;
    |  uint256 public eth_minimum = 3235 ether;
    |
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  address public sale = 0xc4740f71323129669424d1Ae06c42AEE99da30e2;
    |  ERC20 public token;
  > |  uint256 public eth_minimum = 3235 ether;
    |
    |  function set_token(address _token) {
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(24)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  }
    |  
  > |  function activate_kill_switch(string password) {
    |    require(msg.sender == developer || sha3(password) == password_hash);
    |    kill_switch = true;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  }
    |  
  > |  function personal_withdraw(){
    |    if (balances_after_buy[msg.sender]>0 && msg.sender != sale) {
    |        uint256 eth_to_withdraw_after_buy = balances_after_buy[msg.sender];
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  }
    |
  > |  function withdraw(address user){
    |    require(bought_tokens || kill_switch);
    |    // We don't allow the crowdsale to withdraw its funds back (or anyone to do that on their behalf).
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'EnjinBuyer':
    |  }
    |
  > |  function purchase_tokens() {
    |    require(msg.sender == developer);
    |    if (this.balance < eth_minimum) return;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(97)

[31mViolation[0m for TODAmount in contract 'EnjinBuyer':
    |    bought_tokens = true;
    |    contract_eth_value = this.balance;
  > |    require(sale.call.value(contract_eth_value)());
    |    require(this.balance==0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(104)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |        uint256 eth_to_withdraw_after_buy = balances_after_buy[msg.sender];
    |        balances_after_buy[msg.sender] = 0;
  > |        msg.sender.transfer(eth_to_withdraw_after_buy);
    |    }
    |    if (balances[msg.sender] == 0) return;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(47)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |      uint256 eth_to_withdraw = balances[msg.sender];
    |      balances[msg.sender] = 0;
  > |      msg.sender.transfer(eth_to_withdraw);
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(54)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |        uint256 eth_to_withdraw_after_buy = balances_after_buy[user];
    |        balances_after_buy[user] = 0;
  > |        user.transfer(eth_to_withdraw_after_buy);
    |    }
    |    if (balances[user] == 0) return;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(76)

[33mWarning[0m for TODReceiver in contract 'EnjinBuyer':
    |      uint256 eth_to_withdraw = balances[user];
    |      balances[user] = 0;
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(82)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |        uint256 eth_to_withdraw_after_buy = balances_after_buy[msg.sender];
    |        balances_after_buy[msg.sender] = 0;
  > |        msg.sender.transfer(eth_to_withdraw_after_buy);
    |    }
    |    if (balances[msg.sender] == 0) return;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(47)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |      uint256 eth_to_withdraw = balances[msg.sender];
    |      balances[msg.sender] = 0;
  > |      msg.sender.transfer(eth_to_withdraw);
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(54)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    else {
    |      require(token_set);
  > |      uint256 contract_token_balance = token.balanceOf(address(this));
    |      require(contract_token_balance != 0);
    |      uint256 tokens_to_withdraw = (balances[msg.sender] * contract_token_balance) / contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(58)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |      balances[msg.sender] = 0;
    |      uint256 fee = tokens_to_withdraw / 100;
  > |      require(token.transfer(developer, fee));
    |      require(token.transfer(msg.sender, tokens_to_withdraw - fee));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(64)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |      uint256 fee = tokens_to_withdraw / 100;
    |      require(token.transfer(developer, fee));
  > |      require(token.transfer(msg.sender, tokens_to_withdraw - fee));
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(65)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |        uint256 eth_to_withdraw_after_buy = balances_after_buy[user];
    |        balances_after_buy[user] = 0;
  > |        user.transfer(eth_to_withdraw_after_buy);
    |    }
    |    if (balances[user] == 0) return;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(76)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |      uint256 eth_to_withdraw = balances[user];
    |      balances[user] = 0;
  > |      user.transfer(eth_to_withdraw);
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(82)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    else {
    |      require(token_set);
  > |      uint256 contract_token_balance = token.balanceOf(address(this));
    |      require(contract_token_balance != 0);
    |      uint256 tokens_to_withdraw = (balances[user] * contract_token_balance) / contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(86)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |      balances[user] = 0;
    |      uint256 fee = tokens_to_withdraw / 100;
  > |      require(token.transfer(developer, fee));
    |      require(token.transfer(user, tokens_to_withdraw - fee));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(92)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |      uint256 fee = tokens_to_withdraw / 100;
    |      require(token.transfer(developer, fee));
  > |      require(token.transfer(user, tokens_to_withdraw - fee));
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(93)

[33mWarning[0m for UnhandledException in contract 'EnjinBuyer':
    |    bought_tokens = true;
    |    contract_eth_value = this.balance;
  > |    require(sale.call.value(contract_eth_value)());
    |    require(this.balance==0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |      uint256 eth_to_withdraw = balances[msg.sender];
    |      balances[msg.sender] = 0;
  > |      msg.sender.transfer(eth_to_withdraw);
    |    }
    |    else {
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(54)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |    else {
    |      require(token_set);
  > |      uint256 contract_token_balance = token.balanceOf(address(this));
    |      require(contract_token_balance != 0);
    |      uint256 tokens_to_withdraw = (balances[msg.sender] * contract_token_balance) / contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(58)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |      balances[msg.sender] = 0;
    |      uint256 fee = tokens_to_withdraw / 100;
  > |      require(token.transfer(developer, fee));
    |      require(token.transfer(msg.sender, tokens_to_withdraw - fee));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(64)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |      uint256 fee = tokens_to_withdraw / 100;
    |      require(token.transfer(developer, fee));
  > |      require(token.transfer(msg.sender, tokens_to_withdraw - fee));
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(65)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |    else {
    |      require(token_set);
  > |      uint256 contract_token_balance = token.balanceOf(address(this));
    |      require(contract_token_balance != 0);
    |      uint256 tokens_to_withdraw = (balances[user] * contract_token_balance) / contract_eth_value;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |      balances[user] = 0;
    |      uint256 fee = tokens_to_withdraw / 100;
  > |      require(token.transfer(developer, fee));
    |      require(token.transfer(user, tokens_to_withdraw - fee));
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(92)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |      uint256 fee = tokens_to_withdraw / 100;
    |      require(token.transfer(developer, fee));
  > |      require(token.transfer(user, tokens_to_withdraw - fee));
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(93)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EnjinBuyer':
    |    bought_tokens = true;
    |    contract_eth_value = this.balance;
  > |    require(sale.call.value(contract_eth_value)());
    |    require(this.balance==0);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(104)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    if (balances_after_buy[user]>0 && user != sale) {
    |        uint256 eth_to_withdraw_after_buy = balances_after_buy[user];
  > |        balances_after_buy[user] = 0;
    |        user.transfer(eth_to_withdraw_after_buy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(75)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    if (!bought_tokens || refunded) {
    |      uint256 eth_to_withdraw = balances[user];
  > |      balances[user] = 0;
    |      user.transfer(eth_to_withdraw);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(81)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |      require(contract_token_balance != 0);
    |      uint256 tokens_to_withdraw = (balances[user] * contract_token_balance) / contract_eth_value;
  > |      contract_eth_value -= balances[user];
    |      balances[user] = 0;
    |      uint256 fee = tokens_to_withdraw / 100;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(89)

[31mViolation[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |      uint256 tokens_to_withdraw = (balances[user] * contract_token_balance) / contract_eth_value;
    |      contract_eth_value -= balances[user];
  > |      balances[user] = 0;
    |      uint256 fee = tokens_to_withdraw / 100;
    |      require(token.transfer(developer, fee));
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(90)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    if (balances_after_buy[msg.sender]>0 && msg.sender != sale) {
    |        uint256 eth_to_withdraw_after_buy = balances_after_buy[msg.sender];
  > |        balances_after_buy[msg.sender] = 0;
    |        msg.sender.transfer(eth_to_withdraw_after_buy);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(46)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    if (!bought_tokens || refunded) {
    |      uint256 eth_to_withdraw = balances[msg.sender];
  > |      balances[msg.sender] = 0;
    |      msg.sender.transfer(eth_to_withdraw);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |      require(contract_token_balance != 0);
    |      uint256 tokens_to_withdraw = (balances[msg.sender] * contract_token_balance) / contract_eth_value;
  > |      contract_eth_value -= balances[msg.sender];
    |      balances[msg.sender] = 0;
    |      uint256 fee = tokens_to_withdraw / 100;
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |      uint256 tokens_to_withdraw = (balances[msg.sender] * contract_token_balance) / contract_eth_value;
    |      contract_eth_value -= balances[msg.sender];
  > |      balances[msg.sender] = 0;
    |      uint256 fee = tokens_to_withdraw / 100;
    |      require(token.transfer(developer, fee));
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(62)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |  function set_token(address _token) {
    |    require(msg.sender == developer);
  > |    token = ERC20(_token);
    |    token_set = true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    require(msg.sender == developer);
    |    token = ERC20(_token);
  > |    token_set = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |  function set_refunded(bool _refunded) {
    |    require(msg.sender == developer);
  > |    refunded = _refunded;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |  function activate_kill_switch(string password) {
    |    require(msg.sender == developer || sha3(password) == password_hash);
  > |    kill_switch = true;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    if (kill_switch) return;
    |    require(sale != 0x0);
  > |    bought_tokens = true;
    |    contract_eth_value = this.balance;
    |    require(sale.call.value(contract_eth_value)());
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'EnjinBuyer':
    |    require(sale != 0x0);
    |    bought_tokens = true;
  > |    contract_eth_value = this.balance;
    |    require(sale.call.value(contract_eth_value)());
    |    require(this.balance==0);
  at /home/jiaming/mavs_srcs/contract@0x6c1bcb34142bffd35f57db626e0ac427af616a4d.sol(103)


