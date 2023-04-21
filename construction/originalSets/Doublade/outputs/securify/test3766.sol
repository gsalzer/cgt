Processing contract: /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol:AccountLevels
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol:AccountLevelsTest
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol:EtherDelta
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol:ReserveToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AccountLevels':
    |}
    |
  > |contract AccountLevels {
    |  //given a user, returns an account level
    |  //0 = regular user (pays take fee and make fee)
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(131)

[33mWarning[0m for LockedEther in contract 'AccountLevelsTest':
    |}
    |
  > |contract AccountLevelsTest is AccountLevels {
    |  mapping (address => uint) public accountLevels;
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(139)

[31mViolation[0m for MissingInputValidation in contract 'AccountLevelsTest':
    |
    |contract AccountLevelsTest is AccountLevels {
  > |  mapping (address => uint) public accountLevels;
    |
    |  function setAccountLevel(address user, uint level) {
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(140)

[31mViolation[0m for MissingInputValidation in contract 'AccountLevelsTest':
    |  mapping (address => uint) public accountLevels;
    |
  > |  function setAccountLevel(address user, uint level) {
    |    accountLevels[user] = level;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(142)

[31mViolation[0m for MissingInputValidation in contract 'AccountLevelsTest':
    |  }
    |
  > |  function accountLevel(address user) constant returns(uint) {
    |    return accountLevels[user];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(146)

[31mViolation[0m for UnrestrictedWrite in contract 'AccountLevelsTest':
    |
    |  function setAccountLevel(address user, uint level) {
  > |    accountLevels[user] = level;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(143)

[33mWarning[0m for DAO in contract 'EtherDelta':
    |    if (tokens[0][msg.sender] < amount) throw;
    |    tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |    if (!msg.sender.call.value(amount)()) throw;
    |    Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(222)

[33mWarning[0m for DAO in contract 'EtherDelta':
    |    uint feeRebateXfer = 0;
    |    if (accountLevelsAddr != 0x0) {
  > |      uint accountLevel = AccountLevels(accountLevelsAddr).accountLevel(user);
    |      if (accountLevel==1) feeRebateXfer = safeMul(amount, feeRebate) / (1 ether);
    |      if (accountLevel==2) feeRebateXfer = feeTakeXfer;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(270)

[33mWarning[0m for LockedEther in contract 'EtherDelta':
    |}
    |
  > |contract EtherDelta is SafeMath {
    |  address public admin; //the admin address
    |  address public feeAccount; //the account that will receive fees
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(151)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  uint public feeTake; //percentage times (1 ether)
    |  uint public feeRebate; //percentage times (1 ether)
  > |  mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
    |  mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
    |  mapping (address => mapping (bytes32 => uint)) public orderFills; //mapping of user accounts to mapping of order hashes to uints (amount of order that has been filled)
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(158)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  uint public feeRebate; //percentage times (1 ether)
    |  mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
  > |  mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
    |  mapping (address => mapping (bytes32 => uint)) public orderFills; //mapping of user accounts to mapping of order hashes to uints (amount of order that has been filled)
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(159)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
    |  mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
  > |  mapping (address => mapping (bytes32 => uint)) public orderFills; //mapping of user accounts to mapping of order hashes to uints (amount of order that has been filled)
    |
    |  event Order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(160)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function changeAdmin(address admin_) {
    |    if (msg.sender != admin) throw;
    |    admin = admin_;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function changeAccountLevelsAddr(address accountLevelsAddr_) {
    |    if (msg.sender != admin) throw;
    |    accountLevelsAddr = accountLevelsAddr_;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(186)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function changeFeeAccount(address feeAccount_) {
    |    if (msg.sender != admin) throw;
    |    feeAccount = feeAccount_;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(191)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function depositToken(address token, uint amount) {
    |    //remember to call Token(address).approve(this, amount) or this contract will not be able to do the transfer on your behalf.
    |    if (token==0) throw;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(226)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function balanceOf(address token, address user) constant returns (uint) {
    |    return tokens[token][user];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(242)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    orders[msg.sender][hash] = true;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(246)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function trade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount) {
    |    //amount is in amountGet terms
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(252)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function testTrade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount, address sender) constant returns(bool) {
    |    if (!(
    |      tokens[tokenGet][sender] >= amount &&
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(281)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function availableVolume(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(289)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function amountFilled(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    return orderFills[user][hash];
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(301)

[31mViolation[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(306)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |
    |contract SafeMath {
  > |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |
    |contract EtherDelta is SafeMath {
  > |  address public admin; //the admin address
    |  address public feeAccount; //the account that will receive fees
    |  address public accountLevelsAddr; //the address of the AccountLevels contract
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |contract EtherDelta is SafeMath {
    |  address public admin; //the admin address
  > |  address public feeAccount; //the account that will receive fees
    |  address public accountLevelsAddr; //the address of the AccountLevels contract
    |  uint public feeMake; //percentage times (1 ether)
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(153)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  address public admin; //the admin address
    |  address public feeAccount; //the account that will receive fees
  > |  address public accountLevelsAddr; //the address of the AccountLevels contract
    |  uint public feeMake; //percentage times (1 ether)
    |  uint public feeTake; //percentage times (1 ether)
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(154)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  address public feeAccount; //the account that will receive fees
    |  address public accountLevelsAddr; //the address of the AccountLevels contract
  > |  uint public feeMake; //percentage times (1 ether)
    |  uint public feeTake; //percentage times (1 ether)
    |  uint public feeRebate; //percentage times (1 ether)
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(155)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  address public accountLevelsAddr; //the address of the AccountLevels contract
    |  uint public feeMake; //percentage times (1 ether)
  > |  uint public feeTake; //percentage times (1 ether)
    |  uint public feeRebate; //percentage times (1 ether)
    |  mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(156)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  uint public feeMake; //percentage times (1 ether)
    |  uint public feeTake; //percentage times (1 ether)
  > |  uint public feeRebate; //percentage times (1 ether)
    |  mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
    |  mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(157)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function changeFeeMake(uint feeMake_) {
    |    if (msg.sender != admin) throw;
    |    if (feeMake_ > feeMake) throw;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(196)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function changeFeeTake(uint feeTake_) {
    |    if (msg.sender != admin) throw;
    |    if (feeTake_ > feeTake || feeTake_ < feeRebate) throw;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(202)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function changeFeeRebate(uint feeRebate_) {
    |    if (msg.sender != admin) throw;
    |    if (feeRebate_ < feeRebate || feeRebate_ > feeTake) throw;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(208)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function deposit() payable {
    |    tokens[0][msg.sender] = safeAdd(tokens[0][msg.sender], msg.value);
    |    Deposit(0, msg.sender, msg.value, tokens[0][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(214)

[33mWarning[0m for MissingInputValidation in contract 'EtherDelta':
    |  }
    |
  > |  function tradeBalances(address tokenGet, uint amountGet, address tokenGive, uint amountGive, address user, uint amount) private {
    |    uint feeMakeXfer = safeMul(amount, feeMake) / (1 ether);
    |    uint feeTakeXfer = safeMul(amount, feeTake) / (1 ether);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(265)

[33mWarning[0m for TODAmount in contract 'EtherDelta':
    |    if (tokens[0][msg.sender] < amount) throw;
    |    tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |    if (!msg.sender.call.value(amount)()) throw;
    |    Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(222)

[33mWarning[0m for TODReceiver in contract 'EtherDelta':
    |    if (tokens[0][msg.sender] < amount) throw;
    |    tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |    if (!msg.sender.call.value(amount)()) throw;
    |    Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(222)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |    if (tokens[0][msg.sender] < amount) throw;
    |    tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |    if (!msg.sender.call.value(amount)()) throw;
    |    Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(222)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |    //remember to call Token(address).approve(this, amount) or this contract will not be able to do the transfer on your behalf.
    |    if (token==0) throw;
  > |    if (!Token(token).transferFrom(msg.sender, this, amount)) throw;
    |    tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |    Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(229)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |    if (tokens[token][msg.sender] < amount) throw;
    |    tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
  > |    if (!Token(token).transfer(msg.sender, amount)) throw;
    |    Withdraw(token, msg.sender, amount, tokens[token][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(238)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |
    |  function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    orders[msg.sender][hash] = true;
    |    Order(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(247)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |  function trade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount) {
    |    //amount is in amountGet terms
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
    |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(254)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
  > |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |      block.number <= expires &&
    |      safeAdd(orderFills[user][hash], amount) <= amountGet
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(256)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |    uint feeRebateXfer = 0;
    |    if (accountLevelsAddr != 0x0) {
  > |      uint accountLevel = AccountLevels(accountLevelsAddr).accountLevel(user);
    |      if (accountLevel==1) feeRebateXfer = safeMul(amount, feeRebate) / (1 ether);
    |      if (accountLevel==2) feeRebateXfer = feeTakeXfer;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(270)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |
    |  function availableVolume(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
    |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(290)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
  > |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |      block.number <= expires
    |    )) return 0;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(292)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |
    |  function amountFilled(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    return orderFills[user][hash];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(302)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |
    |  function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
    |    orderFills[msg.sender][hash] = amountGet;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(307)

[33mWarning[0m for UnhandledException in contract 'EtherDelta':
    |  function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
  > |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
    |    orderFills[msg.sender][hash] = amountGet;
    |    Cancel(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender, v, r, s);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(308)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherDelta':
    |    //remember to call Token(address).approve(this, amount) or this contract will not be able to do the transfer on your behalf.
    |    if (token==0) throw;
  > |    if (!Token(token).transferFrom(msg.sender, this, amount)) throw;
    |    tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |    Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherDelta':
    |    if (tokens[token][msg.sender] < amount) throw;
    |    tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
  > |    if (!Token(token).transfer(msg.sender, amount)) throw;
    |    Withdraw(token, msg.sender, amount, tokens[token][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(238)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherDelta':
    |
    |  function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    orders[msg.sender][hash] = true;
    |    Order(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherDelta':
    |  function trade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount) {
    |    //amount is in amountGet terms
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
    |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(254)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherDelta':
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
  > |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |      block.number <= expires &&
    |      safeAdd(orderFills[user][hash], amount) <= amountGet
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(256)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherDelta':
    |
    |  function availableVolume(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
    |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(290)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherDelta':
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
  > |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |      block.number <= expires
    |    )) return 0;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(292)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherDelta':
    |
    |  function amountFilled(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    return orderFills[user][hash];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(302)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherDelta':
    |
    |  function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
    |    orderFills[msg.sender][hash] = amountGet;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherDelta':
    |  function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
  > |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
    |    orderFills[msg.sender][hash] = amountGet;
    |    Cancel(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender, v, r, s);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(308)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherDelta':
    |    )) throw;
    |    tradeBalances(tokenGet, amountGet, tokenGive, amountGive, user, amount);
  > |    orderFills[user][hash] = safeAdd(orderFills[user][hash], amount);
    |    Trade(tokenGet, amount, tokenGive, amountGive * amount / amountGet, user, msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(261)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherDelta':
    |      if (accountLevel==2) feeRebateXfer = feeTakeXfer;
    |    }
  > |    tokens[tokenGet][msg.sender] = safeSub(tokens[tokenGet][msg.sender], safeAdd(amount, feeTakeXfer));
    |    tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
    |    tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(274)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherDelta':
    |    }
    |    tokens[tokenGet][msg.sender] = safeSub(tokens[tokenGet][msg.sender], safeAdd(amount, feeTakeXfer));
  > |    tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
    |    tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
    |    tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(275)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherDelta':
    |    tokens[tokenGet][msg.sender] = safeSub(tokens[tokenGet][msg.sender], safeAdd(amount, feeTakeXfer));
    |    tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
  > |    tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
    |    tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
    |    tokens[tokenGive][msg.sender] = safeAdd(tokens[tokenGive][msg.sender], safeMul(amountGive, amount) / amountGet);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(276)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherDelta':
    |    tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
    |    tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
  > |    tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
    |    tokens[tokenGive][msg.sender] = safeAdd(tokens[tokenGive][msg.sender], safeMul(amountGive, amount) / amountGet);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(277)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherDelta':
    |    tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
    |    tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
  > |    tokens[tokenGive][msg.sender] = safeAdd(tokens[tokenGive][msg.sender], safeMul(amountGive, amount) / amountGet);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(278)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |
    |  function deposit() payable {
  > |    tokens[0][msg.sender] = safeAdd(tokens[0][msg.sender], msg.value);
    |    Deposit(0, msg.sender, msg.value, tokens[0][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(215)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |  function withdraw(uint amount) {
    |    if (tokens[0][msg.sender] < amount) throw;
  > |    tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
    |    if (!msg.sender.call.value(amount)()) throw;
    |    Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(221)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |    if (token==0) throw;
    |    if (!Token(token).transferFrom(msg.sender, this, amount)) throw;
  > |    tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |    Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |    if (token==0) throw;
    |    if (tokens[token][msg.sender] < amount) throw;
  > |    tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
    |    if (!Token(token).transfer(msg.sender, amount)) throw;
    |    Withdraw(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(237)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |  function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
  > |    orders[msg.sender][hash] = true;
    |    Order(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
  > |    orderFills[msg.sender][hash] = amountGet;
    |    Cancel(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender, v, r, s);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(309)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |  function changeAdmin(address admin_) {
    |    if (msg.sender != admin) throw;
  > |    admin = admin_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |  function changeAccountLevelsAddr(address accountLevelsAddr_) {
    |    if (msg.sender != admin) throw;
  > |    accountLevelsAddr = accountLevelsAddr_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(188)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |  function changeFeeAccount(address feeAccount_) {
    |    if (msg.sender != admin) throw;
  > |    feeAccount = feeAccount_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(193)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |    if (msg.sender != admin) throw;
    |    if (feeMake_ > feeMake) throw;
  > |    feeMake = feeMake_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(199)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |    if (msg.sender != admin) throw;
    |    if (feeTake_ > feeTake || feeTake_ < feeRebate) throw;
  > |    feeTake = feeTake_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherDelta':
    |    if (msg.sender != admin) throw;
    |    if (feeRebate_ < feeRebate || feeRebate_ > feeTake) throw;
  > |    feeRebate = feeRebate_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(211)

[33mWarning[0m for LockedEther in contract 'ReserveToken':
    |}
    |
  > |contract ReserveToken is StandardToken, SafeMath {
    |  address public minter;
    |  function ReserveToken() {
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(113)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |    //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |    if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint256 balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function approve(address _spender, uint256 _value) returns (bool success) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |    minter = msg.sender;
    |  }
  > |  function create(address account, uint amount) {
    |    if (msg.sender != minter) throw;
    |    balances[account] = safeAdd(balances[account], amount);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |    totalSupply = safeAdd(totalSupply, amount);
    |  }
  > |  function destroy(address account, uint amount) {
    |    if (msg.sender != minter) throw;
    |    if (balances[account] < amount) throw;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(123)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(15)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(21)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    |
  > |  uint public decimals;
    |  string public name;
    |}
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |
    |  uint public decimals;
  > |  string public name;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |  mapping (address => mapping (address => uint256)) allowed;
    |
  > |  uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(110)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |
    |contract ReserveToken is StandardToken, SafeMath {
  > |  address public minter;
    |  function ReserveToken() {
    |    minter = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(114)

[31mViolation[0m for UnrestrictedWrite in contract 'ReserveToken':
    |  function create(address account, uint amount) {
    |    if (msg.sender != minter) throw;
  > |    balances[account] = safeAdd(balances[account], amount);
    |    totalSupply = safeAdd(totalSupply, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(120)

[31mViolation[0m for UnrestrictedWrite in contract 'ReserveToken':
    |    if (msg.sender != minter) throw;
    |    balances[account] = safeAdd(balances[account], amount);
  > |    totalSupply = safeAdd(totalSupply, amount);
    |  }
    |  function destroy(address account, uint amount) {
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'ReserveToken':
    |    if (msg.sender != minter) throw;
    |    if (balances[account] < amount) throw;
  > |    balances[account] = safeSub(balances[account], amount);
    |    totalSupply = safeSub(totalSupply, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(126)

[31mViolation[0m for UnrestrictedWrite in contract 'ReserveToken':
    |    if (balances[account] < amount) throw;
    |    balances[account] = safeSub(balances[account], amount);
  > |    totalSupply = safeSub(totalSupply, amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(127)

[33mWarning[0m for UnrestrictedWrite in contract 'ReserveToken':
    |    if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |    //if (balances[msg.sender] >= _value && _value > 0) {
  > |      balances[msg.sender] -= _value;
    |      balances[_to] += _value;
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'ReserveToken':
    |      balances[_to] += _value;
    |      balances[_from] -= _value;
  > |      allowed[_from][msg.sender] -= _value;
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'ReserveToken':
    |
    |  function approve(address _spender, uint256 _value) returns (bool success) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(97)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.9;
    |
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(3)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |  function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |    //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |    if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint256 balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function approve(address _spender, uint256 _value) returns (bool success) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(96)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(102)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    |
  > |  uint public decimals;
    |  string public name;
    |}
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(61)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  uint public decimals;
  > |  string public name;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  mapping (address => mapping (address => uint256)) allowed;
    |
  > |  uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |    //if (balances[msg.sender] >= _value && _value > 0) {
  > |      balances[msg.sender] -= _value;
    |      balances[_to] += _value;
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      balances[_to] += _value;
    |      balances[_from] -= _value;
  > |      allowed[_from][msg.sender] -= _value;
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(86)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) returns (bool success) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(97)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token {
    |  /// @return total amount of tokens
    |  function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0xf728da36340b61cdea55bc4ea5cbb7762b413893.sol(26)


