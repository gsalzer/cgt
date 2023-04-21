Processing contract: /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol:Bursa
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAO in contract 'Bursa':
    |    }
    |    // Trade
  > |    if (!Bursa(token).transferFrom(seller, buyer, amount)) return false;
    |    funds[seller] = funds[seller] + pay;
    |    funds[buyer] = funds[buyer] - pay - fee;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(96)

[31mViolation[0m for DAO in contract 'Bursa':
    |    } // else fee = 0
    |    // Trade
  > |    if (!Bursa(token).transferFrom(seller, buyer, amount)) return false;
    |    funds[buyer] = funds[buyer] - pay;
    |    funds[seller] = funds[seller] + pay - fee;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(152)

[33mWarning[0m for DAO in contract 'Bursa':
    |    if (amount == 0) return 0;
    |    address user = willsellUser[token][ask_order];
  > |    uint256 balanceSeller = Bursa(token).balanceOf(user);
    |    if (balanceSeller == 0) return 0;
    |    uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(336)

[33mWarning[0m for DAO in contract 'Bursa':
    |    uint256 balanceSeller = Bursa(token).balanceOf(user);
    |    if (balanceSeller == 0) return 0;
  > |    uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
    |    if (allowanceSeller == 0) return 0;
    |    if (balanceSeller > allowanceSeller) balanceSeller = allowanceSeller;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(338)

[33mWarning[0m for DAOConstantGas in contract 'Bursa':
    |    if (funds[msg.sender] < amount || amount == 0) amount = funds[msg.sender];
    |    funds[msg.sender] -= amount;
  > |    msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(210)

[33mWarning[0m for LockedEther in contract 'Bursa':
    |*/
    |pragma solidity ^0.4.19;
  > |contract Bursa {
    |
    |  address private ceo;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |
    |
  > |  function buy(uint256 amount, address token, uint256 max_price_each, uint256 ask_order, address frontend_refund) public payable returns (bool) {
    |    if (msg.value != 0) funds[msg.sender] += msg.value;
    |    if ((willsellPrice[token][ask_order] > max_price_each && max_price_each != 0)
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |
    |
  > |  function sell(uint256 amount, address token, uint256 min_price_each, uint256 bid_order, address frontend_refund) public payable returns (bool) {
    |    if (msg.value != 0) funds[msg.sender] += msg.value;
    |    if (willbuyPrice[token][bid_order] < min_price_each
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(114)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |    return "BURSA DEX";
    |  }
  > |  function balanceOf(address user)
    |  constant public returns (uint256 balance) {
    |    return funds[user];
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(220)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |    return funds[user];
    |  }
  > |  function balanceApprovedForToken(address token, address user)
    |  constant public returns (uint256 amount) {
    |    if (token == 0 || token == address(this)) return funds[user];
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(224)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |// Get info on orders
    |
  > |  function willbuyInfo(address token, uint256 bid_order) public
    |  constant returns (address user, uint256 price, uint256 amount) {
    |    user = willbuyUser[token][bid_order];
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(294)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |  }
    |
  > |  function willsellInfo(address token, uint256 ask_order) public
    |  constant returns (address user, uint256 price, uint256 amount) {
    |    user = willsellUser[token][ask_order];
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(320)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |    return this.balance;
    |  }
  > |  function transfer(address _to, uint256 _value) public returns (bool success) {
    |    if (_value > funds[msg.sender]) _value = funds[msg.sender];
    |    funds[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(359)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |    return true;
    |  }
  > |  function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |    if (_value > funds[msg.sender]) _value = funds[msg.sender];
    |    if (_value > approved[_from][msg.sender]) _value = approved[_from][msg.sender];
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(366)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |    return true;
    |  }
  > |  function approve(address _spender, uint256 _value) public returns (bool success) {
    |    if (_spender == address(this)) return true;
    |    approved[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(375)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |    return true;
    |  }
  > |  function allowance(address _owner, address _spender) constant public returns (uint256 remaining) {
    |    if (_spender == address(this)) return balanceOf(_owner);
    |    return approved[_owner][_spender];
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(381)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |//  DO NOT EVER TRANSFER TOKENS TO BURSA OR YOU'LL BE BANNED FROM ETHEREUM
    |
  > |  function refundLostToken(address token, address user) public {
    |    if (msg.sender != admin && msg.sender != ceo) return;
    |    uint256 amount = Bursa(token).balanceOf(address(this));
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(395)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |    Bursa(token).transfer(user, amount);
    |  }
  > |  function rollUpdate(address _updateAvailable) public {
    |    if (msg.sender == admin || msg.sender == ceo) updateAvailable = _updateAvailable;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(400)

[31mViolation[0m for MissingInputValidation in contract 'Bursa':
    |    if (msg.sender == admin || msg.sender == ceo) updateAvailable = _updateAvailable;
    |  }
  > |  function assignCEO(address _ceo) public {
    |    if (msg.sender == admin) {
    |      ceo = _ceo;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(403)

[33mWarning[0m for MissingInputValidation in contract 'Bursa':
    |  address private ceo;
    |  address private admin;
  > |  address public updateAvailable;
    |  mapping (address => mapping (uint256 => address)) private willsellUser;
    |  mapping (address => mapping (uint256 => uint256)) private willsellPrice;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(27)

[33mWarning[0m for MissingInputValidation in contract 'Bursa':
    |    funds[msg.sender] += msg.value;
    |  }
  > |  function deposit() public payable returns (bool) {
    |    if (updateAvailable != 0) revert();
    |    funds[msg.sender] += msg.value;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(45)

[33mWarning[0m for MissingInputValidation in contract 'Bursa':
    |    return true;
    |  }
  > |  function withdraw(uint256 amount) public {
    |    if (funds[msg.sender] < amount || amount == 0) amount = funds[msg.sender];
    |    funds[msg.sender] -= amount;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(207)

[33mWarning[0m for MissingInputValidation in contract 'Bursa':
    |// Constant methods below
    |
  > |  function name() constant public returns (string) {
    |    if (updateAvailable != 0) return "BURSA DEX (deactivated)";
    |    return "BURSA DEX";
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(216)

[33mWarning[0m for MissingInputValidation in contract 'Bursa':
    |    return;
    |  }
  > |  function willbuyVolume(address token, uint256 bid_order) private
    |  constant returns (uint256) {
    |    uint256 amount = willbuyAmount[token][bid_order];
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(306)

[33mWarning[0m for MissingInputValidation in contract 'Bursa':
    |    return;
    |  }
  > |  function willsellVolume(address token, uint256 ask_order) private
    |  constant returns (uint256) {
    |    uint256 amount = willsellAmount[token][ask_order];
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(331)

[33mWarning[0m for MissingInputValidation in contract 'Bursa':
    |// Used to conveniently show user deposit in wallets
    |
  > |  function symbol() constant public returns (string) {
    |    if (updateAvailable != 0) return "exBURSA";
    |    return "BURSA";
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(349)

[33mWarning[0m for MissingInputValidation in contract 'Bursa':
    |    return "BURSA";
    |  }
  > |  function decimals() constant public returns (uint256) {
    |    return 18;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(353)

[33mWarning[0m for MissingInputValidation in contract 'Bursa':
    |    return 18;
    |  }
  > |  function totalSupply() constant public returns (uint256 supply) {
    |    return this.balance;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(356)

[33mWarning[0m for TODAmount in contract 'Bursa':
    |    if (funds[msg.sender] < amount || amount == 0) amount = funds[msg.sender];
    |    funds[msg.sender] -= amount;
  > |    msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(210)

[33mWarning[0m for TODReceiver in contract 'Bursa':
    |    if (funds[msg.sender] < amount || amount == 0) amount = funds[msg.sender];
    |    funds[msg.sender] -= amount;
  > |    msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(210)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |    }
    |    // Trade
  > |    if (!Bursa(token).transferFrom(seller, buyer, amount)) return false;
    |    funds[seller] = funds[seller] + pay;
    |    funds[buyer] = funds[buyer] - pay - fee;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(96)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |    } // else fee = 0
    |    // Trade
  > |    if (!Bursa(token).transferFrom(seller, buyer, amount)) return false;
    |    funds[buyer] = funds[buyer] - pay;
    |    funds[seller] = funds[seller] + pay - fee;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(152)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |    while (willsellAmount[token][ask_order_spot] != 0) {
    |      address user = willsellUser[token][ask_order_spot];
  > |      uint256 balanceSeller = Bursa(token).balanceOf(user);
    |      if (balanceSeller == 0) break;
    |      uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(196)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |      uint256 balanceSeller = Bursa(token).balanceOf(user);
    |      if (balanceSeller == 0) break;
  > |      uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
    |      if (allowanceSeller == 0) break;
    |      ++ask_order_spot;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(198)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |    if (funds[msg.sender] < amount || amount == 0) amount = funds[msg.sender];
    |    funds[msg.sender] -= amount;
  > |    msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(210)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |  constant public returns (uint256 amount) {
    |    if (token == 0 || token == address(this)) return funds[user];
  > |    amount = Bursa(token).balanceOf(user);
    |    uint256 allowance = Bursa(token).allowance(user, address(this));
    |    if (amount > allowance) amount = allowance;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(227)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |    if (token == 0 || token == address(this)) return funds[user];
    |    amount = Bursa(token).balanceOf(user);
  > |    uint256 allowance = Bursa(token).allowance(user, address(this));
    |    if (amount > allowance) amount = allowance;
    |    return amount;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(228)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |  constant returns (uint256 bid_order_spot) {
    |    // is ERC20?
  > |    Bursa(token).symbol();
    |    uint256 i=1;
    |    while (willbuyAmount[token][i] >= 1e15 * 1e18 / (willbuyPrice[token][i] + 1) && funds[willbuyUser[token][i]] != 0) ++i;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(271)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |  constant returns (uint256 ask_order_spot) {
    |    // is ERC20?
  > |    Bursa(token).symbol();
    |    uint256 i=1;
    |    while (willsellAmount[token][i] >= 1e15 * 1e18 / (willsellPrice[token][i] + 1)) {
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(279)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |    uint256 i=1;
    |    while (willsellAmount[token][i] >= 1e15 * 1e18 / (willsellPrice[token][i] + 1)) {
  > |      uint256 balanceSeller = Bursa(token).balanceOf(willsellUser[token][i]);
    |      if (balanceSeller == 0) return i;
    |      uint256 allowanceSeller = Bursa(token).allowance(willsellUser[token][i], address(this));
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(282)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |      uint256 balanceSeller = Bursa(token).balanceOf(willsellUser[token][i]);
    |      if (balanceSeller == 0) return i;
  > |      uint256 allowanceSeller = Bursa(token).allowance(willsellUser[token][i], address(this));
    |      if (allowanceSeller == 0) return i;
    |      ++i;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(284)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |    price = willsellPrice[token][ask_order];
    |    amount = willsellAmount[token][ask_order];
  > |    uint256 balanceSeller = Bursa(token).balanceOf(user);
    |    uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
    |    if (balanceSeller > allowanceSeller) balanceSeller = allowanceSeller;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(325)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |    amount = willsellAmount[token][ask_order];
    |    uint256 balanceSeller = Bursa(token).balanceOf(user);
  > |    uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
    |    if (balanceSeller > allowanceSeller) balanceSeller = allowanceSeller;
    |    if (amount > balanceSeller) amount = balanceSeller;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(326)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |    if (amount == 0) return 0;
    |    address user = willsellUser[token][ask_order];
  > |    uint256 balanceSeller = Bursa(token).balanceOf(user);
    |    if (balanceSeller == 0) return 0;
    |    uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(336)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |    uint256 balanceSeller = Bursa(token).balanceOf(user);
    |    if (balanceSeller == 0) return 0;
  > |    uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
    |    if (allowanceSeller == 0) return 0;
    |    if (balanceSeller > allowanceSeller) balanceSeller = allowanceSeller;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(338)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |  function refundLostToken(address token, address user) public {
    |    if (msg.sender != admin && msg.sender != ceo) return;
  > |    uint256 amount = Bursa(token).balanceOf(address(this));
    |    Bursa(token).transfer(user, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(397)

[33mWarning[0m for UnhandledException in contract 'Bursa':
    |    if (msg.sender != admin && msg.sender != ceo) return;
    |    uint256 amount = Bursa(token).balanceOf(address(this));
  > |    Bursa(token).transfer(user, amount);
    |  }
    |  function rollUpdate(address _updateAvailable) public {
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(398)

[31mViolation[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |    if (funds[msg.sender] < amount || amount == 0) amount = funds[msg.sender];
    |    funds[msg.sender] -= amount;
  > |    msg.sender.transfer(amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(210)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |    while (willsellAmount[token][ask_order_spot] != 0) {
    |      address user = willsellUser[token][ask_order_spot];
  > |      uint256 balanceSeller = Bursa(token).balanceOf(user);
    |      if (balanceSeller == 0) break;
    |      uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |      uint256 balanceSeller = Bursa(token).balanceOf(user);
    |      if (balanceSeller == 0) break;
  > |      uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
    |      if (allowanceSeller == 0) break;
    |      ++ask_order_spot;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(198)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |  constant public returns (uint256 amount) {
    |    if (token == 0 || token == address(this)) return funds[user];
  > |    amount = Bursa(token).balanceOf(user);
    |    uint256 allowance = Bursa(token).allowance(user, address(this));
    |    if (amount > allowance) amount = allowance;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(227)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |    if (token == 0 || token == address(this)) return funds[user];
    |    amount = Bursa(token).balanceOf(user);
  > |    uint256 allowance = Bursa(token).allowance(user, address(this));
    |    if (amount > allowance) amount = allowance;
    |    return amount;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(228)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |  constant returns (uint256 bid_order_spot) {
    |    // is ERC20?
  > |    Bursa(token).symbol();
    |    uint256 i=1;
    |    while (willbuyAmount[token][i] >= 1e15 * 1e18 / (willbuyPrice[token][i] + 1) && funds[willbuyUser[token][i]] != 0) ++i;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |  constant returns (uint256 ask_order_spot) {
    |    // is ERC20?
  > |    Bursa(token).symbol();
    |    uint256 i=1;
    |    while (willsellAmount[token][i] >= 1e15 * 1e18 / (willsellPrice[token][i] + 1)) {
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(279)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |    uint256 i=1;
    |    while (willsellAmount[token][i] >= 1e15 * 1e18 / (willsellPrice[token][i] + 1)) {
  > |      uint256 balanceSeller = Bursa(token).balanceOf(willsellUser[token][i]);
    |      if (balanceSeller == 0) return i;
    |      uint256 allowanceSeller = Bursa(token).allowance(willsellUser[token][i], address(this));
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(282)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |      uint256 balanceSeller = Bursa(token).balanceOf(willsellUser[token][i]);
    |      if (balanceSeller == 0) return i;
  > |      uint256 allowanceSeller = Bursa(token).allowance(willsellUser[token][i], address(this));
    |      if (allowanceSeller == 0) return i;
    |      ++i;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(284)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |    price = willsellPrice[token][ask_order];
    |    amount = willsellAmount[token][ask_order];
  > |    uint256 balanceSeller = Bursa(token).balanceOf(user);
    |    uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
    |    if (balanceSeller > allowanceSeller) balanceSeller = allowanceSeller;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(325)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |    amount = willsellAmount[token][ask_order];
    |    uint256 balanceSeller = Bursa(token).balanceOf(user);
  > |    uint256 allowanceSeller = Bursa(token).allowance(user, address(this));
    |    if (balanceSeller > allowanceSeller) balanceSeller = allowanceSeller;
    |    if (amount > balanceSeller) amount = balanceSeller;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(326)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |  function refundLostToken(address token, address user) public {
    |    if (msg.sender != admin && msg.sender != ceo) return;
  > |    uint256 amount = Bursa(token).balanceOf(address(this));
    |    Bursa(token).transfer(user, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(397)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Bursa':
    |    if (msg.sender != admin && msg.sender != ceo) return;
    |    uint256 amount = Bursa(token).balanceOf(address(this));
  > |    Bursa(token).transfer(user, amount);
    |  }
    |  function rollUpdate(address _updateAvailable) public {
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(398)

[31mViolation[0m for UnrestrictedWrite in contract 'Bursa':
    |    if (_value > funds[msg.sender]) _value = funds[msg.sender];
    |    funds[msg.sender] -= _value;
  > |    funds[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(362)

[31mViolation[0m for UnrestrictedWrite in contract 'Bursa':
    |    if (_value > funds[msg.sender]) _value = funds[msg.sender];
    |    if (_value > approved[_from][msg.sender]) _value = approved[_from][msg.sender];
  > |    funds[_from] -= _value;
    |    funds[_to] += _value;
    |    approved[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(369)

[31mViolation[0m for UnrestrictedWrite in contract 'Bursa':
    |    if (_value > approved[_from][msg.sender]) _value = approved[_from][msg.sender];
    |    funds[_from] -= _value;
  > |    funds[_to] += _value;
    |    approved[_from][msg.sender] -= _value;
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(370)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |  function deposit() public payable returns (bool) {
    |    if (updateAvailable != 0) revert();
  > |    funds[msg.sender] += msg.value;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |
    |  function buy(uint256 amount, address token, uint256 max_price_each, uint256 ask_order, address frontend_refund) public payable returns (bool) {
  > |    if (msg.value != 0) funds[msg.sender] += msg.value;
    |    if ((willsellPrice[token][ask_order] > max_price_each && max_price_each != 0)
    |      || amount == 0
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |    if (buyer == seller) {
    |      if (amount >= willsellAmount[token][ask_order]) {
  > |        willsellAmount[token][ask_order] = 0;
    |        return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |        return true;
    |      }
  > |      willsellAmount[token][ask_order] -= amount;
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |
    |  function sell(uint256 amount, address token, uint256 min_price_each, uint256 bid_order, address frontend_refund) public payable returns (bool) {
  > |    if (msg.value != 0) funds[msg.sender] += msg.value;
    |    if (willbuyPrice[token][bid_order] < min_price_each
    |      || amount == 0
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |    if (buyer == seller) {
    |      if (amount >= willbuyAmount[token][bid_order]) {
  > |        willbuyAmount[token][bid_order] = 0;
    |        return true;
    |      }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |        return true;
    |      }
  > |      willbuyAmount[token][bid_order] -= amount;
    |      return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(130)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |
    |  function willbuy(uint256 amount, address token, uint256 price_each, uint256 bid_order_spot) public payable returns (bool) {
  > |    if (msg.value != 0) funds[msg.sender] += msg.value;
    |    if (updateAvailable != 0
    |      || amount == 0
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(171)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |  }
    |  function willsell(uint256 amount, address token, uint256 price_each, uint256 ask_order_spot) public payable returns (bool) {
  > |    if (msg.value != 0) funds[msg.sender] += msg.value;
    |    if (updateAvailable != 0
    |      || amount == 0
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |  function withdraw(uint256 amount) public {
    |    if (funds[msg.sender] < amount || amount == 0) amount = funds[msg.sender];
  > |    funds[msg.sender] -= amount;
    |    msg.sender.transfer(amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |  function transfer(address _to, uint256 _value) public returns (bool success) {
    |    if (_value > funds[msg.sender]) _value = funds[msg.sender];
  > |    funds[msg.sender] -= _value;
    |    funds[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(361)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |    funds[_from] -= _value;
    |    funds[_to] += _value;
  > |    approved[_from][msg.sender] -= _value;
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(371)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |  function approve(address _spender, uint256 _value) public returns (bool success) {
    |    if (_spender == address(this)) return true;
  > |    approved[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(377)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |  }
    |  function rollUpdate(address _updateAvailable) public {
  > |    if (msg.sender == admin || msg.sender == ceo) updateAvailable = _updateAvailable;
    |  }
    |  function assignCEO(address _ceo) public {
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(401)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |  function assignCEO(address _ceo) public {
    |    if (msg.sender == admin) {
  > |      ceo = _ceo;
    |    }
    |    else if (msg.sender == ceo) {
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(405)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |    }
    |    else if (msg.sender == ceo) {
  > |      admin = ceo;
    |      ceo = _ceo;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(408)

[33mWarning[0m for UnrestrictedWrite in contract 'Bursa':
    |    else if (msg.sender == ceo) {
    |      admin = ceo;
  > |      ceo = _ceo;
    |    }
    |  }
  at /home/jiaming/mavs_srcs/contract@0xd3e64580cb5b4d079514dcf2996dea6095a57e30.sol(409)


