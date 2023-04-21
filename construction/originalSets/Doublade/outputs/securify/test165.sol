Processing contract: /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol:Exchange
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol:Token
[31mViolation[0m for DAOConstantGas in contract 'Exchange':
    |    amount = safeMul((1 ether - feeWithdrawal), amount) / 1 ether;
    |    if (token == address(0)) {
  > |      if (!user.send(amount)) throw;
    |    } else {
    |      if (!Token(token).transfer(user, amount)) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(133)

[33mWarning[0m for DAOConstantGas in contract 'Exchange':
    |    tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
    |    if (token == address(0)) {
  > |      if (!msg.sender.send(amount)) throw;
    |    } else {
    |      if (!Token(token).transfer(msg.sender, amount)) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(115)

[33mWarning[0m for LockedEther in contract 'Exchange':
    |}
    |
  > |contract Exchange {
    |  function assert(bool assertion) {
    |    if (!assertion) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(18)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |  }
    |  address public owner;
  > |  mapping (address => uint256) public invalidOrder;
    |  event SetOwner(address indexed previousOwner, address indexed newOwner);
    |  modifier onlyOwner {
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(39)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |    _;
    |  }
  > |  function setOwner(address newOwner) onlyOwner {
    |    SetOwner(owner, newOwner);
    |    owner = newOwner;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |    return owner;
    |  }
  > |  function invalidateOrdersBefore(address user, uint256 nonce) onlyAdmin {
    |    if (nonce < invalidOrder[user]) throw;
    |    invalidOrder[user] = nonce;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |  }
    |
  > |  mapping (address => mapping (address => uint256)) public tokens; //mapping of token addresses to mapping of account balances
    |
    |  mapping (address => bool) public admins;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |  mapping (address => mapping (address => uint256)) public tokens; //mapping of token addresses to mapping of account balances
    |
  > |  mapping (address => bool) public admins;
    |  mapping (address => uint256) public lastActiveTransaction;
    |  mapping (bytes32 => uint256) public orderFills;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |
    |  mapping (address => bool) public admins;
  > |  mapping (address => uint256) public lastActiveTransaction;
    |  mapping (bytes32 => uint256) public orderFills;
    |  address public feeAccount;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |  mapping (address => bool) public admins;
    |  mapping (address => uint256) public lastActiveTransaction;
  > |  mapping (bytes32 => uint256) public orderFills;
    |  address public feeAccount;
    |  uint256 public inactivityReleasePeriod;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |  address public feeAccount;
    |  uint256 public inactivityReleasePeriod;
  > |  mapping (bytes32 => bool) public traded;
    |  mapping (bytes32 => bool) public withdrawn;
    |  event Order(address tokenBuy, uint256 amountBuy, address tokenSell, uint256 amountSell, uint256 expires, uint256 nonce, address user, uint8 v, bytes32 r, bytes32 s);
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(64)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |  uint256 public inactivityReleasePeriod;
    |  mapping (bytes32 => bool) public traded;
  > |  mapping (bytes32 => bool) public withdrawn;
    |  event Order(address tokenBuy, uint256 amountBuy, address tokenSell, uint256 amountSell, uint256 expires, uint256 nonce, address user, uint8 v, bytes32 r, bytes32 s);
    |  event Cancel(address tokenBuy, uint256 amountBuy, address tokenSell, uint256 amountSell, uint256 expires, uint256 nonce, address user, uint8 v, bytes32 r, bytes32 s);
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |  }
    |
  > |  function setAdmin(address admin, bool isAdmin) onlyOwner {
    |    admins[admin] = isAdmin;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(84)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |  }
    |
  > |  function depositToken(address token, uint256 amount) {
    |    tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |    lastActiveTransaction[msg.sender] = block.number;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |  }
    |
  > |  function withdraw(address token, uint256 amount) returns (bool success) {
    |    if (safeSub(block.number, lastActiveTransaction[msg.sender]) < inactivityReleasePeriod) throw;
    |    if (tokens[token][msg.sender] < amount) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(110)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |  }
    |
  > |  function adminWithdraw(address token, uint256 amount, address user, uint256 nonce, uint8 v, bytes32 r, bytes32 s, uint256 feeWithdrawal) onlyAdmin returns (bool success) {
    |    bytes32 hash = keccak256(this, token, amount, user, nonce);
    |    if (withdrawn[hash]) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(122)

[31mViolation[0m for MissingInputValidation in contract 'Exchange':
    |  }
    |
  > |  function balanceOf(address token, address user) constant returns (uint256) {
    |    return tokens[token][user];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(141)

[33mWarning[0m for MissingInputValidation in contract 'Exchange':
    |
    |contract Exchange {
  > |  function assert(bool assertion) {
    |    if (!assertion) throw;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'Exchange':
    |    if (!assertion) throw;
    |  }
  > |  function safeMul(uint a, uint b) returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'Exchange':
    |  }
    |
  > |  function safeSub(uint a, uint b) returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'Exchange':
    |  }
    |
  > |  function safeAdd(uint a, uint b) returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Exchange':
    |    return c;
    |  }
  > |  address public owner;
    |  mapping (address => uint256) public invalidOrder;
    |  event SetOwner(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'Exchange':
    |    owner = newOwner;
    |  }
  > |  function getOwner() returns (address out) {
    |    return owner;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Exchange':
    |  mapping (address => uint256) public lastActiveTransaction;
    |  mapping (bytes32 => uint256) public orderFills;
  > |  address public feeAccount;
    |  uint256 public inactivityReleasePeriod;
    |  mapping (bytes32 => bool) public traded;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(62)

[33mWarning[0m for MissingInputValidation in contract 'Exchange':
    |  mapping (bytes32 => uint256) public orderFills;
    |  address public feeAccount;
  > |  uint256 public inactivityReleasePeriod;
    |  mapping (bytes32 => bool) public traded;
    |  mapping (bytes32 => bool) public withdrawn;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(63)

[33mWarning[0m for MissingInputValidation in contract 'Exchange':
    |  event Withdraw(address token, address user, uint256 amount, uint256 balance);
    |
  > |  function setInactivityReleasePeriod(uint256 expiry) onlyAdmin returns (bool success) {
    |    if (expiry > 1000000) throw;
    |    inactivityReleasePeriod = expiry;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'Exchange':
    |  }
    |
  > |  function deposit() payable {
    |    tokens[address(0)][msg.sender] = safeAdd(tokens[address(0)][msg.sender], msg.value);
    |    lastActiveTransaction[msg.sender] = block.number;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(104)

[33mWarning[0m for MissingInputValidation in contract 'Exchange':
    |  }
    |
  > |  function trade(uint256[8] tradeValues, address[4] tradeAddresses, uint8[2] v, bytes32[4] rs) onlyAdmin returns (bool success) {
    |    /* amount is in amountBuy terms */
    |    /* tradeValues
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(145)

[33mWarning[0m for TODAmount in contract 'Exchange':
    |    tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
    |    if (token == address(0)) {
  > |      if (!msg.sender.send(amount)) throw;
    |    } else {
    |      if (!Token(token).transfer(msg.sender, amount)) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(115)

[33mWarning[0m for TODReceiver in contract 'Exchange':
    |    tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
    |    if (token == address(0)) {
  > |      if (!msg.sender.send(amount)) throw;
    |    } else {
    |      if (!Token(token).transfer(msg.sender, amount)) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(115)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |    tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |    lastActiveTransaction[msg.sender] = block.number;
  > |    if (!Token(token).transferFrom(msg.sender, this, amount)) throw;
    |    Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(100)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |    tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
    |    if (token == address(0)) {
  > |      if (!msg.sender.send(amount)) throw;
    |    } else {
    |      if (!Token(token).transfer(msg.sender, amount)) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(115)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |      if (!msg.sender.send(amount)) throw;
    |    } else {
  > |      if (!Token(token).transfer(msg.sender, amount)) throw;
    |    }
    |    Withdraw(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(117)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |    if (withdrawn[hash]) throw;
    |    withdrawn[hash] = true;
  > |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash), v, r, s) != user) throw;
    |    if (feeWithdrawal > 50 finney) feeWithdrawal = 50 finney;
    |    if (tokens[token][user] < amount) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(126)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |    amount = safeMul((1 ether - feeWithdrawal), amount) / 1 ether;
    |    if (token == address(0)) {
  > |      if (!user.send(amount)) throw;
    |    } else {
    |      if (!Token(token).transfer(user, amount)) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(133)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |      if (!user.send(amount)) throw;
    |    } else {
  > |      if (!Token(token).transfer(user, amount)) throw;
    |    }
    |    lastActiveTransaction[user] = block.number;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(135)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |    if (invalidOrder[tradeAddresses[2]] > tradeValues[3]) throw;
    |    bytes32 orderHash = keccak256(this, tradeAddresses[0], tradeValues[0], tradeAddresses[1], tradeValues[1], tradeValues[2], tradeValues[3], tradeAddresses[2]);
  > |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", orderHash), v[0], rs[0], rs[1]) != tradeAddresses[2]) throw;
    |    bytes32 tradeHash = keccak256(orderHash, tradeValues[4], tradeAddresses[3], tradeValues[5]); 
    |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", tradeHash), v[1], rs[2], rs[3]) != tradeAddresses[3]) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(164)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", orderHash), v[0], rs[0], rs[1]) != tradeAddresses[2]) throw;
    |    bytes32 tradeHash = keccak256(orderHash, tradeValues[4], tradeAddresses[3], tradeValues[5]); 
  > |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", tradeHash), v[1], rs[2], rs[3]) != tradeAddresses[3]) throw;
    |    if (traded[tradeHash]) throw;
    |    traded[tradeHash] = true;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(166)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |    tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |    lastActiveTransaction[msg.sender] = block.number;
  > |    if (!Token(token).transferFrom(msg.sender, this, amount)) throw;
    |    Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(100)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |      if (!msg.sender.send(amount)) throw;
    |    } else {
  > |      if (!Token(token).transfer(msg.sender, amount)) throw;
    |    }
    |    Withdraw(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(117)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |    if (withdrawn[hash]) throw;
    |    withdrawn[hash] = true;
  > |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash), v, r, s) != user) throw;
    |    if (feeWithdrawal > 50 finney) feeWithdrawal = 50 finney;
    |    if (tokens[token][user] < amount) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |    if (invalidOrder[tradeAddresses[2]] > tradeValues[3]) throw;
    |    bytes32 orderHash = keccak256(this, tradeAddresses[0], tradeValues[0], tradeAddresses[1], tradeValues[1], tradeValues[2], tradeValues[3], tradeAddresses[2]);
  > |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", orderHash), v[0], rs[0], rs[1]) != tradeAddresses[2]) throw;
    |    bytes32 tradeHash = keccak256(orderHash, tradeValues[4], tradeAddresses[3], tradeValues[5]); 
    |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", tradeHash), v[1], rs[2], rs[3]) != tradeAddresses[3]) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(164)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", orderHash), v[0], rs[0], rs[1]) != tradeAddresses[2]) throw;
    |    bytes32 tradeHash = keccak256(orderHash, tradeValues[4], tradeAddresses[3], tradeValues[5]); 
  > |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", tradeHash), v[1], rs[2], rs[3]) != tradeAddresses[3]) throw;
    |    if (traded[tradeHash]) throw;
    |    traded[tradeHash] = true;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(166)

[31mViolation[0m for UnrestrictedWrite in contract 'Exchange':
    |    if (feeWithdrawal > 50 finney) feeWithdrawal = 50 finney;
    |    if (tokens[token][user] < amount) throw;
  > |    tokens[token][user] = safeSub(tokens[token][user], amount);
    |    tokens[token][feeAccount] = safeAdd(tokens[token][feeAccount], safeMul(feeWithdrawal, amount) / 1 ether);
    |    amount = safeMul((1 ether - feeWithdrawal), amount) / 1 ether;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(129)

[31mViolation[0m for UnrestrictedWrite in contract 'Exchange':
    |    if (tokens[token][user] < amount) throw;
    |    tokens[token][user] = safeSub(tokens[token][user], amount);
  > |    tokens[token][feeAccount] = safeAdd(tokens[token][feeAccount], safeMul(feeWithdrawal, amount) / 1 ether);
    |    amount = safeMul((1 ether - feeWithdrawal), amount) / 1 ether;
    |    if (token == address(0)) {
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'Exchange':
    |      if (!Token(token).transfer(user, amount)) throw;
    |    }
  > |    lastActiveTransaction[user] = block.number;
    |    Withdraw(token, user, amount, tokens[token][user]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(137)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |
    |  function depositToken(address token, uint256 amount) {
  > |    tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |    lastActiveTransaction[msg.sender] = block.number;
    |    if (!Token(token).transferFrom(msg.sender, this, amount)) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |  function depositToken(address token, uint256 amount) {
    |    tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
  > |    lastActiveTransaction[msg.sender] = block.number;
    |    if (!Token(token).transferFrom(msg.sender, this, amount)) throw;
    |    Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(99)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |
    |  function deposit() payable {
  > |    tokens[address(0)][msg.sender] = safeAdd(tokens[address(0)][msg.sender], msg.value);
    |    lastActiveTransaction[msg.sender] = block.number;
    |    Deposit(address(0), msg.sender, msg.value, tokens[address(0)][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(105)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |  function deposit() payable {
    |    tokens[address(0)][msg.sender] = safeAdd(tokens[address(0)][msg.sender], msg.value);
  > |    lastActiveTransaction[msg.sender] = block.number;
    |    Deposit(address(0), msg.sender, msg.value, tokens[address(0)][msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |    if (safeSub(block.number, lastActiveTransaction[msg.sender]) < inactivityReleasePeriod) throw;
    |    if (tokens[token][msg.sender] < amount) throw;
  > |    tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
    |    if (token == address(0)) {
    |      if (!msg.sender.send(amount)) throw;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", tradeHash), v[1], rs[2], rs[3]) != tradeAddresses[3]) throw;
    |    if (traded[tradeHash]) throw;
  > |    traded[tradeHash] = true;
    |    if (tradeValues[6] > 100 finney) tradeValues[6] = 100 finney;
    |    if (tradeValues[7] > 100 finney) tradeValues[7] = 100 finney;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(168)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |  function invalidateOrdersBefore(address user, uint256 nonce) onlyAdmin {
    |    if (nonce < invalidOrder[user]) throw;
  > |    invalidOrder[user] = nonce;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(54)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |  function setInactivityReleasePeriod(uint256 expiry) onlyAdmin returns (bool success) {
    |    if (expiry > 1000000) throw;
  > |    inactivityReleasePeriod = expiry;
    |    return true;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |    bytes32 hash = keccak256(this, token, amount, user, nonce);
    |    if (withdrawn[hash]) throw;
  > |    withdrawn[hash] = true;
    |    if (ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash), v, r, s) != user) throw;
    |    if (feeWithdrawal > 50 finney) feeWithdrawal = 50 finney;
  at /home/jiaming/mavs_srcs/contract@0x0b35dd0696ee6c6338f2f08967891feb04183805.sol(125)


