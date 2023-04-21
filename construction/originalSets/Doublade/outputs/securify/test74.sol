Processing contract: /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol:AccountLevels
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol:AccountLevelsTest
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol:ExToke
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol:ReserveToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol:Token
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
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(146)

[33mWarning[0m for LockedEther in contract 'AccountLevelsTest':
    |}
    |
  > |contract AccountLevelsTest is AccountLevels {
    |  mapping (address => uint) public accountLevels;
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(154)

[31mViolation[0m for MissingInputValidation in contract 'AccountLevelsTest':
    |
    |contract AccountLevelsTest is AccountLevels {
  > |  mapping (address => uint) public accountLevels;
    |
    |  function setAccountLevel(address user, uint level) {
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(155)

[31mViolation[0m for MissingInputValidation in contract 'AccountLevelsTest':
    |  mapping (address => uint) public accountLevels;
    |
  > |  function setAccountLevel(address user, uint level) {
    |    accountLevels[user] = level;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(157)

[31mViolation[0m for MissingInputValidation in contract 'AccountLevelsTest':
    |  }
    |
  > |  function accountLevel(address user) constant returns(uint) {
    |    return accountLevels[user];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'AccountLevelsTest':
    |
    |  function setAccountLevel(address user, uint level) {
  > |    accountLevels[user] = level;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(158)

[33mWarning[0m for DAO in contract 'ExToke':
    |    if (tokens[0][msg.sender] < amount) throw;
    |    tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |    if (!msg.sender.call.value(amount)()) throw;
    |    Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(237)

[33mWarning[0m for DAO in contract 'ExToke':
    |    uint feeRebateXfer = 0;
    |    if (accountLevelsAddr != 0x0) {
  > |      uint accountLevel = AccountLevels(accountLevelsAddr).accountLevel(user);
    |      if (accountLevel==1) feeRebateXfer = safeMul(amount, feeRebate) / (1 ether);
    |      if (accountLevel==2) feeRebateXfer = feeTakeXfer;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(285)

[33mWarning[0m for LockedEther in contract 'ExToke':
    |}
    |
  > |contract ExToke is SafeMath {
    |  address public admin; //the admin address
    |  address public feeAccount; //the account that will receive fees
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(166)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  uint public feeTake; //percentage times (1 ether)
    |  uint public feeRebate; //percentage times (1 ether)
  > |  mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
    |  mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
    |  mapping (address => mapping (bytes32 => uint)) public orderFills; //mapping of user accounts to mapping of order hashes to uints (amount of order that has been filled)
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(173)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  uint public feeRebate; //percentage times (1 ether)
    |  mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
  > |  mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
    |  mapping (address => mapping (bytes32 => uint)) public orderFills; //mapping of user accounts to mapping of order hashes to uints (amount of order that has been filled)
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(174)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
    |  mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
  > |  mapping (address => mapping (bytes32 => uint)) public orderFills; //mapping of user accounts to mapping of order hashes to uints (amount of order that has been filled)
    |
    |  event Order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function changeAdmin(address admin_) {
    |    if (msg.sender != admin) throw;
    |    admin = admin_;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(196)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function changeAccountLevelsAddr(address accountLevelsAddr_) {
    |    if (msg.sender != admin) throw;
    |    accountLevelsAddr = accountLevelsAddr_;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(201)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function changeFeeAccount(address feeAccount_) {
    |    if (msg.sender != admin) throw;
    |    feeAccount = feeAccount_;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(206)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function depositToken(address token, uint amount) {
    |    //remember to call Token(address).approve(this, amount) or this contract will not be able to do the transfer on your behalf.
    |    if (token==0) throw;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(241)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function balanceOf(address token, address user) constant returns (uint) {
    |    return tokens[token][user];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(257)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    orders[msg.sender][hash] = true;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(261)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function trade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount) {
    |    //amount is in amountGet terms
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(267)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function testTrade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount, address sender) constant returns(bool) {
    |    if (!(
    |      tokens[tokenGet][sender] >= amount &&
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(296)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function availableVolume(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(304)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function amountFilled(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    return orderFills[user][hash];
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(316)

[31mViolation[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(321)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |// ----------------------------------------------------------------------------
    |contract SafeMath {
  > |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |
    |contract ExToke is SafeMath {
  > |  address public admin; //the admin address
    |  address public feeAccount; //the account that will receive fees
    |  address public accountLevelsAddr; //the address of the AccountLevels contract
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(167)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |contract ExToke is SafeMath {
    |  address public admin; //the admin address
  > |  address public feeAccount; //the account that will receive fees
    |  address public accountLevelsAddr; //the address of the AccountLevels contract
    |  uint public feeMake; //percentage times (1 ether)
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(168)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  address public admin; //the admin address
    |  address public feeAccount; //the account that will receive fees
  > |  address public accountLevelsAddr; //the address of the AccountLevels contract
    |  uint public feeMake; //percentage times (1 ether)
    |  uint public feeTake; //percentage times (1 ether)
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(169)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  address public feeAccount; //the account that will receive fees
    |  address public accountLevelsAddr; //the address of the AccountLevels contract
  > |  uint public feeMake; //percentage times (1 ether)
    |  uint public feeTake; //percentage times (1 ether)
    |  uint public feeRebate; //percentage times (1 ether)
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(170)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  address public accountLevelsAddr; //the address of the AccountLevels contract
    |  uint public feeMake; //percentage times (1 ether)
  > |  uint public feeTake; //percentage times (1 ether)
    |  uint public feeRebate; //percentage times (1 ether)
    |  mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(171)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  uint public feeMake; //percentage times (1 ether)
    |  uint public feeTake; //percentage times (1 ether)
  > |  uint public feeRebate; //percentage times (1 ether)
    |  mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
    |  mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(172)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function changeFeeMake(uint feeMake_) {
    |    if (msg.sender != admin) throw;
    |    if (feeMake_ > feeMake) throw;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(211)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function changeFeeTake(uint feeTake_) {
    |    if (msg.sender != admin) throw;
    |    if (feeTake_ > feeTake || feeTake_ < feeRebate) throw;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(217)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function changeFeeRebate(uint feeRebate_) {
    |    if (msg.sender != admin) throw;
    |    if (feeRebate_ < feeRebate || feeRebate_ > feeTake) throw;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(223)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function deposit() payable {
    |    tokens[0][msg.sender] = safeAdd(tokens[0][msg.sender], msg.value);
    |    Deposit(0, msg.sender, msg.value, tokens[0][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(229)

[33mWarning[0m for MissingInputValidation in contract 'ExToke':
    |  }
    |
  > |  function tradeBalances(address tokenGet, uint amountGet, address tokenGive, uint amountGive, address user, uint amount) private {
    |    uint feeMakeXfer = safeMul(amount, feeMake) / (1 ether);
    |    uint feeTakeXfer = safeMul(amount, feeTake) / (1 ether);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(280)

[33mWarning[0m for TODAmount in contract 'ExToke':
    |    if (tokens[0][msg.sender] < amount) throw;
    |    tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |    if (!msg.sender.call.value(amount)()) throw;
    |    Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(237)

[33mWarning[0m for TODReceiver in contract 'ExToke':
    |    if (tokens[0][msg.sender] < amount) throw;
    |    tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |    if (!msg.sender.call.value(amount)()) throw;
    |    Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(237)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |    if (tokens[0][msg.sender] < amount) throw;
    |    tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |    if (!msg.sender.call.value(amount)()) throw;
    |    Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(237)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |    //remember to call Token(address).approve(this, amount) or this contract will not be able to do the transfer on your behalf.
    |    if (token==0) throw;
  > |    if (!Token(token).transferFrom(msg.sender, this, amount)) throw;
    |    tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |    Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(244)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |    if (tokens[token][msg.sender] < amount) throw;
    |    tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
  > |    if (!Token(token).transfer(msg.sender, amount)) throw;
    |    Withdraw(token, msg.sender, amount, tokens[token][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(253)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |
    |  function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    orders[msg.sender][hash] = true;
    |    Order(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(262)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |  function trade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount) {
    |    //amount is in amountGet terms
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
    |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(269)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
  > |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |      block.number <= expires &&
    |      safeAdd(orderFills[user][hash], amount) <= amountGet
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(271)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |    uint feeRebateXfer = 0;
    |    if (accountLevelsAddr != 0x0) {
  > |      uint accountLevel = AccountLevels(accountLevelsAddr).accountLevel(user);
    |      if (accountLevel==1) feeRebateXfer = safeMul(amount, feeRebate) / (1 ether);
    |      if (accountLevel==2) feeRebateXfer = feeTakeXfer;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(285)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |
    |  function availableVolume(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
    |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(305)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
  > |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |      block.number <= expires
    |    )) return 0;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(307)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |
    |  function amountFilled(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    return orderFills[user][hash];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(317)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |
    |  function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
    |    orderFills[msg.sender][hash] = amountGet;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(322)

[33mWarning[0m for UnhandledException in contract 'ExToke':
    |  function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
  > |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
    |    orderFills[msg.sender][hash] = amountGet;
    |    Cancel(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender, v, r, s);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(323)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExToke':
    |    //remember to call Token(address).approve(this, amount) or this contract will not be able to do the transfer on your behalf.
    |    if (token==0) throw;
  > |    if (!Token(token).transferFrom(msg.sender, this, amount)) throw;
    |    tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |    Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(244)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExToke':
    |    if (tokens[token][msg.sender] < amount) throw;
    |    tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
  > |    if (!Token(token).transfer(msg.sender, amount)) throw;
    |    Withdraw(token, msg.sender, amount, tokens[token][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(253)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExToke':
    |
    |  function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    orders[msg.sender][hash] = true;
    |    Order(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(262)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExToke':
    |  function trade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount) {
    |    //amount is in amountGet terms
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
    |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(269)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExToke':
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
  > |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |      block.number <= expires &&
    |      safeAdd(orderFills[user][hash], amount) <= amountGet
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(271)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExToke':
    |
    |  function availableVolume(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
    |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(305)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExToke':
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(
  > |      (orders[user][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |      block.number <= expires
    |    )) return 0;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(307)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExToke':
    |
    |  function amountFilled(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) constant returns(uint) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    return orderFills[user][hash];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(317)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExToke':
    |
    |  function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) {
  > |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
    |    orderFills[msg.sender][hash] = amountGet;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(322)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ExToke':
    |  function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
  > |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
    |    orderFills[msg.sender][hash] = amountGet;
    |    Cancel(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender, v, r, s);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(323)

[31mViolation[0m for UnrestrictedWrite in contract 'ExToke':
    |    )) throw;
    |    tradeBalances(tokenGet, amountGet, tokenGive, amountGive, user, amount);
  > |    orderFills[user][hash] = safeAdd(orderFills[user][hash], amount);
    |    Trade(tokenGet, amount, tokenGive, amountGive * amount / amountGet, user, msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(276)

[31mViolation[0m for UnrestrictedWrite in contract 'ExToke':
    |      if (accountLevel==2) feeRebateXfer = feeTakeXfer;
    |    }
  > |    tokens[tokenGet][msg.sender] = safeSub(tokens[tokenGet][msg.sender], safeAdd(amount, feeTakeXfer));
    |    tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
    |    tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(289)

[31mViolation[0m for UnrestrictedWrite in contract 'ExToke':
    |    }
    |    tokens[tokenGet][msg.sender] = safeSub(tokens[tokenGet][msg.sender], safeAdd(amount, feeTakeXfer));
  > |    tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
    |    tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
    |    tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(290)

[31mViolation[0m for UnrestrictedWrite in contract 'ExToke':
    |    tokens[tokenGet][msg.sender] = safeSub(tokens[tokenGet][msg.sender], safeAdd(amount, feeTakeXfer));
    |    tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
  > |    tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
    |    tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
    |    tokens[tokenGive][msg.sender] = safeAdd(tokens[tokenGive][msg.sender], safeMul(amountGive, amount) / amountGet);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(291)

[31mViolation[0m for UnrestrictedWrite in contract 'ExToke':
    |    tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
    |    tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
  > |    tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
    |    tokens[tokenGive][msg.sender] = safeAdd(tokens[tokenGive][msg.sender], safeMul(amountGive, amount) / amountGet);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(292)

[31mViolation[0m for UnrestrictedWrite in contract 'ExToke':
    |    tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
    |    tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
  > |    tokens[tokenGive][msg.sender] = safeAdd(tokens[tokenGive][msg.sender], safeMul(amountGive, amount) / amountGet);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(293)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |
    |  function deposit() payable {
  > |    tokens[0][msg.sender] = safeAdd(tokens[0][msg.sender], msg.value);
    |    Deposit(0, msg.sender, msg.value, tokens[0][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(230)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |  function withdraw(uint amount) {
    |    if (tokens[0][msg.sender] < amount) throw;
  > |    tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
    |    if (!msg.sender.call.value(amount)()) throw;
    |    Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(236)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |    if (token==0) throw;
    |    if (!Token(token).transferFrom(msg.sender, this, amount)) throw;
  > |    tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |    Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(245)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |    if (token==0) throw;
    |    if (tokens[token][msg.sender] < amount) throw;
  > |    tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
    |    if (!Token(token).transfer(msg.sender, amount)) throw;
    |    Withdraw(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(252)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |  function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) {
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
  > |    orders[msg.sender][hash] = true;
    |    Order(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(263)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |    bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |    if (!(orders[msg.sender][hash] || ecrecover(sha3("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) throw;
  > |    orderFills[msg.sender][hash] = amountGet;
    |    Cancel(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender, v, r, s);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(324)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |  function changeAdmin(address admin_) {
    |    if (msg.sender != admin) throw;
  > |    admin = admin_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(198)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |  function changeAccountLevelsAddr(address accountLevelsAddr_) {
    |    if (msg.sender != admin) throw;
  > |    accountLevelsAddr = accountLevelsAddr_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(203)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |  function changeFeeAccount(address feeAccount_) {
    |    if (msg.sender != admin) throw;
  > |    feeAccount = feeAccount_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(208)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |    if (msg.sender != admin) throw;
    |    if (feeMake_ > feeMake) throw;
  > |    feeMake = feeMake_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(214)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |    if (msg.sender != admin) throw;
    |    if (feeTake_ > feeTake || feeTake_ < feeRebate) throw;
  > |    feeTake = feeTake_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'ExToke':
    |    if (msg.sender != admin) throw;
    |    if (feeRebate_ < feeRebate || feeRebate_ > feeTake) throw;
  > |    feeRebate = feeRebate_;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(226)

[33mWarning[0m for LockedEther in contract 'ReserveToken':
    |}
    |
  > |contract ReserveToken is StandardToken, SafeMath {
    |  address public minter;
    |  function ReserveToken() {
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |    //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |    if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint256 balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function approve(address _spender, uint256 _value) returns (bool success) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(117)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |    minter = msg.sender;
    |  }
  > |  function create(address account, uint amount) {
    |    if (msg.sender != minter) throw;
    |    balances[account] = safeAdd(balances[account], amount);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(133)

[31mViolation[0m for MissingInputValidation in contract 'ReserveToken':
    |    totalSupply = safeAdd(totalSupply, amount);
    |  }
  > |  function destroy(address account, uint amount) {
    |    if (msg.sender != minter) throw;
    |    if (balances[account] < amount) throw;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(138)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function safeSub(uint a, uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(25)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function safeAdd(uint a, uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |  }
    |
  > |  function assert(bool assertion) internal {
    |    if (!assertion) throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    |
  > |  uint public decimals;
    |  string public name;
    |}
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |
    |  uint public decimals;
  > |  string public name;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |  mapping (address => mapping (address => uint256)) allowed;
    |
  > |  uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(125)

[33mWarning[0m for MissingInputValidation in contract 'ReserveToken':
    |
    |contract ReserveToken is StandardToken, SafeMath {
  > |  address public minter;
    |  function ReserveToken() {
    |    minter = msg.sender;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'ReserveToken':
    |  function create(address account, uint amount) {
    |    if (msg.sender != minter) throw;
  > |    balances[account] = safeAdd(balances[account], amount);
    |    totalSupply = safeAdd(totalSupply, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(135)

[31mViolation[0m for UnrestrictedWrite in contract 'ReserveToken':
    |    if (msg.sender != minter) throw;
    |    balances[account] = safeAdd(balances[account], amount);
  > |    totalSupply = safeAdd(totalSupply, amount);
    |  }
    |  function destroy(address account, uint amount) {
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(136)

[31mViolation[0m for UnrestrictedWrite in contract 'ReserveToken':
    |    if (msg.sender != minter) throw;
    |    if (balances[account] < amount) throw;
  > |    balances[account] = safeSub(balances[account], amount);
    |    totalSupply = safeSub(totalSupply, amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(141)

[31mViolation[0m for UnrestrictedWrite in contract 'ReserveToken':
    |    if (balances[account] < amount) throw;
    |    balances[account] = safeSub(balances[account], amount);
  > |    totalSupply = safeSub(totalSupply, amount);
    |  }
    |}
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'ReserveToken':
    |    if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |    //if (balances[msg.sender] >= _value && _value > 0) {
  > |      balances[msg.sender] -= _value;
    |      balances[_to] += _value;
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'ReserveToken':
    |      balances[_to] += _value;
    |      balances[_from] -= _value;
  > |      allowed[_from][msg.sender] -= _value;
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'ReserveToken':
    |
    |  function approve(address _spender, uint256 _value) returns (bool success) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(112)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Safe maths
    |// ----------------------------------------------------------------------------
  > |contract SafeMath {
    |  function safeMul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(18)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |
    |  function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |    //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |    if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint256 balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function approve(address _spender, uint256 _value) returns (bool success) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(111)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(117)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    |
  > |  uint public decimals;
    |  string public name;
    |}
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |
    |  uint public decimals;
  > |  string public name;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |  mapping (address => mapping (address => uint256)) allowed;
    |
  > |  uint256 public totalSupply;
    |}
    |
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |    //if (balances[msg.sender] >= _value && _value > 0) {
  > |      balances[msg.sender] -= _value;
    |      balances[_to] += _value;
    |      Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      balances[_to] += _value;
    |      balances[_from] -= _value;
  > |      allowed[_from][msg.sender] -= _value;
    |      Transfer(_from, _to, _value);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(101)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |  function approve(address _spender, uint256 _value) returns (bool success) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(112)

[33mWarning[0m for LockedEther in contract 'Token':
    |}
    |
  > |contract Token {
    |  /// @return total amount of tokens
    |  function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0x0528c39ef9f1fd7a05ef18f64408108fae156ab1.sol(41)


