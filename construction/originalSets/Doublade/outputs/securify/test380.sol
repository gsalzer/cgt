Processing contract: /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol:AccountLevels
Processing contract: /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol:Exch
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol:Token
[33mWarning[0m for DAO in contract 'Exch':
    |
    |        if (accountLevelsAddr != 0x0) {
  > |            uint accountLevel = AccountLevels(accountLevelsAddr).accountLevel(user);
    |            if (accountLevel==1) feeRebateXfer = safeMul(amount, feeRebate) / (1 ether);
    |            if (accountLevel==2) feeRebateXfer = feeTakeXfer;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(208)

[33mWarning[0m for DAOConstantGas in contract 'Exch':
    |        if (tokens[0][msg.sender] < amount) revert();
    |        tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |        msg.sender.transfer(amount);
    |        emit Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(163)

[33mWarning[0m for LockedEther in contract 'Exch':
    |
    |
  > |contract Exch is SafeMath {
    |
    |    address public admin; //the admin address
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    uint public feeTake; //percentage times (1 ether)
    |    uint public feeRebate; //percentage times (1 ether)
  > |    mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
    |    mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
    |    mapping (address => mapping (bytes32 => uint)) public orderFills; //mapping of user accounts to mapping of order hashes to uints (amount of order that has been filled)
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    uint public feeRebate; //percentage times (1 ether)
    |    mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
  > |    mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
    |    mapping (address => mapping (bytes32 => uint)) public orderFills; //mapping of user accounts to mapping of order hashes to uints (amount of order that has been filled)
    |
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(56)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
    |    mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
  > |    mapping (address => mapping (bytes32 => uint)) public orderFills; //mapping of user accounts to mapping of order hashes to uints (amount of order that has been filled)
    |
    |    mapping (address => bool) public whiteListERC20;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    mapping (address => mapping (bytes32 => uint)) public orderFills; //mapping of user accounts to mapping of order hashes to uints (amount of order that has been filled)
    |
  > |    mapping (address => bool) public whiteListERC20;
    |    mapping (address => bool) public whiteListERC223;
    |
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |
    |    mapping (address => bool) public whiteListERC20;
  > |    mapping (address => bool) public whiteListERC223;
    |
    |    event Order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(60)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    // Admin functions
    |
  > |    function changeAdmin(address admin_) public onlyAdmin {
    |        admin = admin_;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function changeAccountLevelsAddr(address accountLevelsAddr_) public onlyAdmin {
    |        accountLevelsAddr = accountLevelsAddr_;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function changeFeeAccount(address feeAccount_) public onlyAdmin {
    |        feeAccount = feeAccount_;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function changeFeeMake(uint feeMake_) public onlyAdmin {
    |        feeMake = feeMake_;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(109)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    // Whitelists for ERC20 or ERC223 tokens
    |
  > |    function setBlackListERC20(address _token) public onlyAdmin {
    |        whiteListERC20[_token] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(125)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |        whiteListERC20[_token] = false;
    |    }
  > |    function setWhiteListERC20(address _token) public onlyAdmin {
    |        whiteListERC20[_token] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(128)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |        whiteListERC20[_token] = true;
    |    }
  > |    function setBlackListERC223(address _token) public onlyAdmin {
    |        whiteListERC223[_token] = false;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(131)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |        whiteListERC223[_token] = false;
    |    }
  > |    function setWhiteListERC223(address _token) public onlyAdmin {
    |        whiteListERC223[_token] = true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(134)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) public { // Deposit ERC223 tokens
    |        if (_value==0) revert();
    |        require(whiteListERC223[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(145)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |     }
    |
  > |    function depositToken(address token, uint amount) public { // Deposit ERC20 tokens
    |        if (amount==0) revert();
    |        require(whiteListERC20[token]);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(152)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function withdrawToken(address token, uint amount) public { // Withdraw tokens
    |        require(whiteListERC20[token] || whiteListERC223[token]);
    |        if (tokens[token][msg.sender] < amount) revert();
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(167)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function balanceOf(address token, address user) public constant returns (uint) {
    |        return tokens[token][user];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(175)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    // Exchange specific functions
    |
  > |    function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) public {
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        orders[msg.sender][hash] = true;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(181)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function trade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount) public {
    |        //amount is in amountGet terms
    |        require(whiteListERC20[tokenGet] || whiteListERC223[tokenGet]);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(187)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function testTrade(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s, uint amount, address sender) public constant returns(bool) {
    |        if (!(
    |            tokens[tokenGet][sender] >= amount &&
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(220)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function availableVolume(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) public constant returns(uint) {
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(228)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function amountFilled(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user) public constant returns(uint) {
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        return orderFills[user][hash];
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(240)

[31mViolation[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) public {
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(orders[msg.sender][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) revert();
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(245)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |
    |contract SafeMath {
  > |    function safeMul(uint a, uint b) internal pure returns (uint) {
    |        uint c = a * b;
    |        require(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |        return c;
    |    }
  > |    function safeSub(uint a, uint b) internal pure returns (uint) {
    |        require(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |        return a - b;
    |    }
  > |    function safeAdd(uint a, uint b) internal pure returns (uint) {
    |        uint c = a + b;
    |        require(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |contract Exch is SafeMath {
    |
  > |    address public admin; //the admin address
    |    address public feeAccount; //the account that will receive fees
    |    address public accountLevelsAddr; //the address of the AccountLevels contract
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |
    |    address public admin; //the admin address
  > |    address public feeAccount; //the account that will receive fees
    |    address public accountLevelsAddr; //the address of the AccountLevels contract
    |    uint public feeMake; //percentage times (1 ether)
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |    address public admin; //the admin address
    |    address public feeAccount; //the account that will receive fees
  > |    address public accountLevelsAddr; //the address of the AccountLevels contract
    |    uint public feeMake; //percentage times (1 ether)
    |    uint public feeTake; //percentage times (1 ether)
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |    address public feeAccount; //the account that will receive fees
    |    address public accountLevelsAddr; //the address of the AccountLevels contract
  > |    uint public feeMake; //percentage times (1 ether)
    |    uint public feeTake; //percentage times (1 ether)
    |    uint public feeRebate; //percentage times (1 ether)
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |    address public accountLevelsAddr; //the address of the AccountLevels contract
    |    uint public feeMake; //percentage times (1 ether)
  > |    uint public feeTake; //percentage times (1 ether)
    |    uint public feeRebate; //percentage times (1 ether)
    |    mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(53)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |    uint public feeMake; //percentage times (1 ether)
    |    uint public feeTake; //percentage times (1 ether)
  > |    uint public feeRebate; //percentage times (1 ether)
    |    mapping (address => mapping (address => uint)) public tokens; //mapping of token addresses to mapping of account balances (token=0 means Ether)
    |    mapping (address => mapping (bytes32 => bool)) public orders; //mapping of user accounts to mapping of order hashes to booleans (true = submitted by user, equivalent to offchain signature)
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function changeFeeTake(uint feeTake_) public onlyAdmin {
    |        if (feeTake_ < feeRebate) revert();
    |        feeTake = feeTake_;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(113)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function changeFeeRebate(uint feeRebate_) public onlyAdmin {
    |        if (feeRebate_ > feeTake) revert();
    |        feeRebate = feeRebate_;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(118)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |    // Public functions
    |
  > |    function deposit() public payable { // Deposit Ethers
    |        tokens[0][msg.sender] = safeAdd(tokens[0][msg.sender], msg.value);
    |        emit Deposit(0, msg.sender, msg.value, tokens[0][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(140)

[33mWarning[0m for MissingInputValidation in contract 'Exch':
    |    }
    |
  > |    function tradeBalances(address tokenGet, uint amountGet, address tokenGive, uint amountGive, address user, uint amount) private {
    |        uint feeMakeXfer = safeMul(amount, feeMake) / (1 ether);
    |        uint feeTakeXfer = safeMul(amount, feeTake) / (1 ether);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(202)

[33mWarning[0m for TODAmount in contract 'Exch':
    |        if (tokens[0][msg.sender] < amount) revert();
    |        tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |        msg.sender.transfer(amount);
    |        emit Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(163)

[33mWarning[0m for TODReceiver in contract 'Exch':
    |        if (tokens[0][msg.sender] < amount) revert();
    |        tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |        msg.sender.transfer(amount);
    |        emit Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(163)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |        if (amount==0) revert();
    |        require(whiteListERC20[token]);
  > |        if (!Token(token).transferFrom(msg.sender, this, amount)) revert();
    |        tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |        emit Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(155)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |        if (tokens[0][msg.sender] < amount) revert();
    |        tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
  > |        msg.sender.transfer(amount);
    |        emit Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(163)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |        if (tokens[token][msg.sender] < amount) revert();
    |        tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
  > |        require (Token(token).transfer(msg.sender, amount));
    |        emit Withdraw(token, msg.sender, amount, tokens[token][msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(171)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |
    |    function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) public {
  > |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        orders[msg.sender][hash] = true;
    |        emit Order(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(182)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |        require(whiteListERC20[tokenGet] || whiteListERC223[tokenGet]);
    |        require(whiteListERC20[tokenGive] || whiteListERC223[tokenGive]);
  > |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(
    |            (orders[user][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(191)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(
  > |            (orders[user][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |            block.number <= expires &&
    |            safeAdd(orderFills[user][hash], amount) <= amountGet
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(193)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |
    |        if (accountLevelsAddr != 0x0) {
  > |            uint accountLevel = AccountLevels(accountLevelsAddr).accountLevel(user);
    |            if (accountLevel==1) feeRebateXfer = safeMul(amount, feeRebate) / (1 ether);
    |            if (accountLevel==2) feeRebateXfer = feeTakeXfer;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(208)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |
    |    function availableVolume(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) public constant returns(uint) {
  > |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(
    |            (orders[user][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(229)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(
  > |            (orders[user][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |            block.number <= expires
    |        )) return 0;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(231)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |
    |    function amountFilled(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user) public constant returns(uint) {
  > |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        return orderFills[user][hash];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(241)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |
    |    function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) public {
  > |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(orders[msg.sender][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) revert();
    |        orderFills[msg.sender][hash] = amountGet;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(246)

[33mWarning[0m for UnhandledException in contract 'Exch':
    |    function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) public {
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
  > |        if (!(orders[msg.sender][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) revert();
    |        orderFills[msg.sender][hash] = amountGet;
    |        emit Cancel(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender, v, r, s);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(247)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exch':
    |        if (amount==0) revert();
    |        require(whiteListERC20[token]);
  > |        if (!Token(token).transferFrom(msg.sender, this, amount)) revert();
    |        tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |        emit Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(155)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exch':
    |        if (tokens[token][msg.sender] < amount) revert();
    |        tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
  > |        require (Token(token).transfer(msg.sender, amount));
    |        emit Withdraw(token, msg.sender, amount, tokens[token][msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(171)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exch':
    |
    |    function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) public {
  > |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        orders[msg.sender][hash] = true;
    |        emit Order(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(182)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exch':
    |        require(whiteListERC20[tokenGet] || whiteListERC223[tokenGet]);
    |        require(whiteListERC20[tokenGive] || whiteListERC223[tokenGive]);
  > |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(
    |            (orders[user][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(191)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exch':
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(
  > |            (orders[user][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |            block.number <= expires &&
    |            safeAdd(orderFills[user][hash], amount) <= amountGet
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(193)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exch':
    |
    |    function availableVolume(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user, uint8 v, bytes32 r, bytes32 s) public constant returns(uint) {
  > |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(
    |            (orders[user][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(229)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exch':
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(
  > |            (orders[user][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == user) &&
    |            block.number <= expires
    |        )) return 0;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(231)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exch':
    |
    |    function amountFilled(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, address user) public constant returns(uint) {
  > |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        return orderFills[user][hash];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(241)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exch':
    |
    |    function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) public {
  > |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(orders[msg.sender][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) revert();
    |        orderFills[msg.sender][hash] = amountGet;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(246)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exch':
    |    function cancelOrder(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce, uint8 v, bytes32 r, bytes32 s) public {
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
  > |        if (!(orders[msg.sender][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) revert();
    |        orderFills[msg.sender][hash] = amountGet;
    |        emit Cancel(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender, v, r, s);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(247)

[31mViolation[0m for UnrestrictedWrite in contract 'Exch':
    |        )) revert();
    |        tradeBalances(tokenGet, amountGet, tokenGive, amountGive, user, amount);
  > |        orderFills[user][hash] = safeAdd(orderFills[user][hash], amount);
    |        emit Trade(tokenGet, amount, tokenGive, amountGive * amount / amountGet, user, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(198)

[31mViolation[0m for UnrestrictedWrite in contract 'Exch':
    |        }
    |
  > |        tokens[tokenGet][msg.sender] = safeSub(tokens[tokenGet][msg.sender], safeAdd(amount, feeTakeXfer));
    |        tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
    |        tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(213)

[31mViolation[0m for UnrestrictedWrite in contract 'Exch':
    |
    |        tokens[tokenGet][msg.sender] = safeSub(tokens[tokenGet][msg.sender], safeAdd(amount, feeTakeXfer));
  > |        tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
    |        tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
    |        tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(214)

[31mViolation[0m for UnrestrictedWrite in contract 'Exch':
    |        tokens[tokenGet][msg.sender] = safeSub(tokens[tokenGet][msg.sender], safeAdd(amount, feeTakeXfer));
    |        tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
  > |        tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
    |        tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
    |        tokens[tokenGive][msg.sender] = safeAdd(tokens[tokenGive][msg.sender], safeMul(amountGive, amount) / amountGet);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(215)

[31mViolation[0m for UnrestrictedWrite in contract 'Exch':
    |        tokens[tokenGet][user] = safeAdd(tokens[tokenGet][user], safeSub(safeAdd(amount, feeRebateXfer), feeMakeXfer));
    |        tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
  > |        tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
    |        tokens[tokenGive][msg.sender] = safeAdd(tokens[tokenGive][msg.sender], safeMul(amountGive, amount) / amountGet);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(216)

[31mViolation[0m for UnrestrictedWrite in contract 'Exch':
    |        tokens[tokenGet][feeAccount] = safeAdd(tokens[tokenGet][feeAccount], safeSub(safeAdd(feeMakeXfer, feeTakeXfer), feeRebateXfer));
    |        tokens[tokenGive][user] = safeSub(tokens[tokenGive][user], safeMul(amountGive, amount) / amountGet);
  > |        tokens[tokenGive][msg.sender] = safeAdd(tokens[tokenGive][msg.sender], safeMul(amountGive, amount) / amountGet);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(217)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |
    |    function deposit() public payable { // Deposit Ethers
  > |        tokens[0][msg.sender] = safeAdd(tokens[0][msg.sender], msg.value);
    |        emit Deposit(0, msg.sender, msg.value, tokens[0][msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |        if (_value==0) revert();
    |        require(whiteListERC223[msg.sender]);
  > |        tokens[msg.sender][_from] = safeAdd(tokens[msg.sender][_from], _value);
    |        emit Deposit(msg.sender, _from, _value, tokens[msg.sender][_from]);
    |     }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(148)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |        require(whiteListERC20[token]);
    |        if (!Token(token).transferFrom(msg.sender, this, amount)) revert();
  > |        tokens[token][msg.sender] = safeAdd(tokens[token][msg.sender], amount);
    |        emit Deposit(token, msg.sender, amount, tokens[token][msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(156)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |    function withdraw(uint amount) public { // Withdraw ethers
    |        if (tokens[0][msg.sender] < amount) revert();
  > |        tokens[0][msg.sender] = safeSub(tokens[0][msg.sender], amount);
    |        msg.sender.transfer(amount);
    |        emit Withdraw(0, msg.sender, amount, tokens[0][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |        require(whiteListERC20[token] || whiteListERC223[token]);
    |        if (tokens[token][msg.sender] < amount) revert();
  > |        tokens[token][msg.sender] = safeSub(tokens[token][msg.sender], amount);
    |        require (Token(token).transfer(msg.sender, amount));
    |        emit Withdraw(token, msg.sender, amount, tokens[token][msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |    function order(address tokenGet, uint amountGet, address tokenGive, uint amountGive, uint expires, uint nonce) public {
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
  > |        orders[msg.sender][hash] = true;
    |        emit Order(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(183)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |        bytes32 hash = sha256(this, tokenGet, amountGet, tokenGive, amountGive, expires, nonce);
    |        if (!(orders[msg.sender][hash] || ecrecover(keccak256("\x19Ethereum Signed Message:\n32", hash),v,r,s) == msg.sender)) revert();
  > |        orderFills[msg.sender][hash] = amountGet;
    |        emit Cancel(tokenGet, amountGet, tokenGive, amountGive, expires, nonce, msg.sender, v, r, s);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(248)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |
    |    function changeAdmin(address admin_) public onlyAdmin {
  > |        admin = admin_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |
    |    function changeAccountLevelsAddr(address accountLevelsAddr_) public onlyAdmin {
  > |        accountLevelsAddr = accountLevelsAddr_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |
    |    function changeFeeAccount(address feeAccount_) public onlyAdmin {
  > |        feeAccount = feeAccount_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |
    |    function changeFeeMake(uint feeMake_) public onlyAdmin {
  > |        feeMake = feeMake_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |    function changeFeeTake(uint feeTake_) public onlyAdmin {
    |        if (feeTake_ < feeRebate) revert();
  > |        feeTake = feeTake_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |    function changeFeeRebate(uint feeRebate_) public onlyAdmin {
    |        if (feeRebate_ > feeTake) revert();
  > |        feeRebate = feeRebate_;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |
    |    function setBlackListERC20(address _token) public onlyAdmin {
  > |        whiteListERC20[_token] = false;
    |    }
    |    function setWhiteListERC20(address _token) public onlyAdmin {
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |    }
    |    function setWhiteListERC20(address _token) public onlyAdmin {
  > |        whiteListERC20[_token] = true;
    |    }
    |    function setBlackListERC223(address _token) public onlyAdmin {
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(129)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |    }
    |    function setBlackListERC223(address _token) public onlyAdmin {
  > |        whiteListERC223[_token] = false;
    |    }
    |    function setWhiteListERC223(address _token) public onlyAdmin {
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(132)

[33mWarning[0m for UnrestrictedWrite in contract 'Exch':
    |    }
    |    function setWhiteListERC223(address _token) public onlyAdmin {
  > |        whiteListERC223[_token] = true;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(135)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |// Ethernity.live
    |
  > |contract SafeMath {
    |    function safeMul(uint a, uint b) internal pure returns (uint) {
    |        uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x18f0cd26c06449d967ca6aef8b5f9d8ee9fd7992.sol(6)


