Processing contract: /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol:ShortOrder
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SafeMath':
    |}
    |
  > |contract SafeMath {
    |  function safeMul(uint a,uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(42)

[31mViolation[0m for DAO in contract 'ShortOrder':
    |    );
    |    admin.transfer(safeAdd(orderRecord[tokenUser[1]][orderHash].coupon,orderRecord[tokenUser[1]][orderHash].balance));
  > |    Token(tokenUser[0]).transfer(admin,orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]]);
    |    orderRecord[tokenUser[1]][orderHash].balance = uint(0);
    |    orderRecord[tokenUser[1]][orderHash].coupon = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(249)

[33mWarning[0m for DAO in contract 'ShortOrder':
    |      uint amount = safeMul(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender],minMaxDMWCPNonce[6]);
    |      msg.sender.transfer(couponAmount);
  > |      Token(tokenUser[0]).transfer(msg.sender,amount);
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
    |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(214)

[31mViolation[0m for DAOConstantGas in contract 'ShortOrder':
    |      msg.value >= amountNonceExpiry[0] 
    |    );
  > |    sellerShort[0].transfer(msg.value);
    |    orderRecord[sellerShort[1]][hashRS[0]].longBalance[msg.sender] = orderRecord[sellerShort[1]][hashRS[0]].longBalance[sellerShort[0]];
    |    orderRecord[sellerShort[1]][hashRS[0]].longBalance[sellerShort[0]] = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(183)

[31mViolation[0m for DAOConstantGas in contract 'ShortOrder':
    |      block.number > minMaxDMWCPNonce[4]
    |    );
  > |    admin.transfer(safeAdd(orderRecord[tokenUser[1]][orderHash].coupon,orderRecord[tokenUser[1]][orderHash].balance));
    |    Token(tokenUser[0]).transfer(admin,orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]]);
    |    orderRecord[tokenUser[1]][orderHash].balance = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(248)

[31mViolation[0m for DAOConstantGas in contract 'ShortOrder':
    |      orderRecord[tokenUser[1]][orderHash].balance < minMaxDMWCPNonce[0]
    |    );
  > |    msg.sender.transfer(orderRecord[msg.sender][orderHash].coupon);
    |    orderRecord[msg.sender][orderHash].coupon = uint(0);
    |    NonActivationWithdrawal(tokenUser,minMaxDMWCPNonce,v,rs,orderRecord[msg.sender][orderHash].coupon);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(275)

[33mWarning[0m for DAOConstantGas in contract 'ShortOrder':
    |      couponAmount = safeMul(orderRecord[tokenUser[1]][orderHash].coupon,couponProportion);
    |      uint amount = safeMul(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender],minMaxDMWCPNonce[6]);
  > |      msg.sender.transfer(couponAmount);
    |      Token(tokenUser[0]).transfer(msg.sender,amount);
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(213)

[33mWarning[0m for DAOConstantGas in contract 'ShortOrder':
    |    else {
    |      couponAmount = safeMul(orderRecord[tokenUser[1]][orderHash].coupon,couponProportion);
  > |      msg.sender.transfer(safeAdd(couponAmount,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]));
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
    |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(223)

[33mWarning[0m for DAOConstantGas in contract 'ShortOrder':
    |      orderRecord[tokenUser[1]][orderHash].balance < minMaxDMWCPNonce[0]
    |    );
  > |    msg.sender.transfer(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |    orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |    orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(299)

[33mWarning[0m for LockedEther in contract 'ShortOrder':
    |}
    |
  > |contract ShortOrder is SafeMath {
    |
    |  address admin;
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(68)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function changeAdmin(address _admin) external onlyAdmin {
    |    admin = _admin;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(101)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function tokenFulfillmentDeposit(address[2] tokenUser,uint amount,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(105)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    | 
  > |  function depositCoupon(address[2] tokenUser,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external payable {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(132)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function placeLong(address[2] tokenUser,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external payable {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(153)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |  
  > |  function buyLong(address[2] sellerShort,uint[3] amountNonceExpiry,uint8 v,bytes32[3] hashRS) external payable {
    |    bytes32 longTransferHash = keccak256(sellerShort[0],amountNonceExpiry);
    |    require(
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(177)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function exerciseLong(address[2] tokenUser,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(189)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function claimDonations(address[2] tokenUser,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external onlyAdmin {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(231)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function nonActivationShortWithdrawal(address[2] tokenUser,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(256)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function nonActivationWithdrawal(address[2] tokenUser,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(280)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function returnBalance(address[2] tokenUser,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external constant returns (uint) {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(305)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function returnTokenBalance(address[2] tokenUser,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external constant returns (uint) {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(322)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function returnUserBalance(address _user,address[2] tokenUser,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external constant returns (uint) {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(339)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function returnCoupon(address[2] tokenUser,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external constant returns (uint) {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(356)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function returnTokenDepositState(address[2] tokenUser,uint[8] minMaxDMWCPNonce,uint8 v,bytes32[2] rs) external constant returns (bool) {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(373)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function returnAddress(bytes32 orderHash,uint8 v,bytes32[2] rs) external pure returns (address) {
    |    return ecrecover(orderHash,v,rs[0],rs[1]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(406)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function returnHashLong(address seller,uint[3] amountNonceExpiry)  external pure returns (bytes32) {
    |    bytes32 orderHash =  keccak256(seller,amountNonceExpiry[0],amountNonceExpiry[1],amountNonceExpiry[2]);
    |    return keccak256("\x19Ethereum Signed Message:\n32",orderHash);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(410)

[31mViolation[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function returnLongAddress(bytes32 orderHash,uint8 v,bytes32[2] rs) external pure returns (address) {
    |    return ecrecover(orderHash,v,rs[0],rs[1]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(415)

[33mWarning[0m for MissingInputValidation in contract 'ShortOrder':
    |
    |contract SafeMath {
  > |  function safeMul(uint a,uint b) internal returns (uint) {
    |    uint c = a * b;
    |    assert(a == 0 || c / a == b);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(43)

[33mWarning[0m for MissingInputValidation in contract 'ShortOrder':
    |
    |
  > |  function safeDiv(uint a,uint b) internal returns (uint) {
    |    uint c = a / b;
    |    return c;
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function safeSub(uint a,uint b) internal returns (uint) {
    |    assert(b <= a);
    |    return a - b;
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(55)

[33mWarning[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    |
  > |  function safeAdd(uint a,uint b) internal returns (uint) {
    |    uint c = a + b;
    |    assert(c>=a && c>=b);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'ShortOrder':
    |  }
    | 
  > |  function returnHash(address[2] tokenUser,uint[8] minMaxDMWCPNonce) external pure returns (bytes32) {
    |    bytes32 orderHash = keccak256 (
    |        tokenUser[0],
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(390)

[33mWarning[0m for TODReceiver in contract 'ShortOrder':
    |      msg.value >= amountNonceExpiry[0] 
    |    );
  > |    sellerShort[0].transfer(msg.value);
    |    orderRecord[sellerShort[1]][hashRS[0]].longBalance[msg.sender] = orderRecord[sellerShort[1]][hashRS[0]].longBalance[sellerShort[0]];
    |    orderRecord[sellerShort[1]][hashRS[0]].longBalance[sellerShort[0]] = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(183)

[33mWarning[0m for TODReceiver in contract 'ShortOrder':
    |      couponAmount = safeMul(orderRecord[tokenUser[1]][orderHash].coupon,couponProportion);
    |      uint amount = safeMul(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender],minMaxDMWCPNonce[6]);
  > |      msg.sender.transfer(couponAmount);
    |      Token(tokenUser[0]).transfer(msg.sender,amount);
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(213)

[33mWarning[0m for TODReceiver in contract 'ShortOrder':
    |      uint amount = safeMul(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender],minMaxDMWCPNonce[6]);
    |      msg.sender.transfer(couponAmount);
  > |      Token(tokenUser[0]).transfer(msg.sender,amount);
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
    |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(214)

[33mWarning[0m for TODReceiver in contract 'ShortOrder':
    |    );
    |    admin.transfer(safeAdd(orderRecord[tokenUser[1]][orderHash].coupon,orderRecord[tokenUser[1]][orderHash].balance));
  > |    Token(tokenUser[0]).transfer(admin,orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]]);
    |    orderRecord[tokenUser[1]][orderHash].balance = uint(0);
    |    orderRecord[tokenUser[1]][orderHash].coupon = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(249)

[33mWarning[0m for TODReceiver in contract 'ShortOrder':
    |      orderRecord[tokenUser[1]][orderHash].balance < minMaxDMWCPNonce[0]
    |    );
  > |    msg.sender.transfer(orderRecord[msg.sender][orderHash].coupon);
    |    orderRecord[msg.sender][orderHash].coupon = uint(0);
    |    NonActivationWithdrawal(tokenUser,minMaxDMWCPNonce,v,rs,orderRecord[msg.sender][orderHash].coupon);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(275)

[33mWarning[0m for TODReceiver in contract 'ShortOrder':
    |      orderRecord[tokenUser[1]][orderHash].balance < minMaxDMWCPNonce[0]
    |    );
  > |    msg.sender.transfer(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |    orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |    orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(299)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == msg.sender &&
    |      block.number > minMaxDMWCPNonce[2] &&
    |      block.number <= minMaxDMWCPNonce[3] && 
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(119)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      !orderRecord[msg.sender][orderHash].tokenDeposit
    |    );
  > |    Token(tokenUser[0]).transferFrom(msg.sender,this,amount);
    |    orderRecord[msg.sender][orderHash].shortBalance[tokenUser[0]] = safeAdd(orderRecord[msg.sender][orderHash].shortBalance[tokenUser[0]],amount);
    |    orderRecord[msg.sender][orderHash].tokenDeposit = true;
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(126)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == msg.sender &&
    |      msg.value >= minMaxDMWCPNonce[5]
    |    );
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(146)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1] &&
    |      block.number <= minMaxDMWCPNonce[2] &&
    |      orderRecord[tokenUser[1]][orderHash].coupon >= minMaxDMWCPNonce[5]&&
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(167)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |    bytes32 longTransferHash = keccak256(sellerShort[0],amountNonceExpiry);
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",longTransferHash[0]),v,hashRS[1],hashRS[2]) == sellerShort[1] &&
    |      msg.value >= amountNonceExpiry[0] 
    |    );
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(180)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      msg.value >= amountNonceExpiry[0] 
    |    );
  > |    sellerShort[0].transfer(msg.value);
    |    orderRecord[sellerShort[1]][hashRS[0]].longBalance[msg.sender] = orderRecord[sellerShort[1]][hashRS[0]].longBalance[sellerShort[0]];
    |    orderRecord[sellerShort[1]][hashRS[0]].longBalance[sellerShort[0]] = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(183)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1] &&
    |      block.number > minMaxDMWCPNonce[3] &&
    |      block.number <= minMaxDMWCPNonce[4] &&
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(203)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      couponAmount = safeMul(orderRecord[tokenUser[1]][orderHash].coupon,couponProportion);
    |      uint amount = safeMul(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender],minMaxDMWCPNonce[6]);
  > |      msg.sender.transfer(couponAmount);
    |      Token(tokenUser[0]).transfer(msg.sender,amount);
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(213)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      uint amount = safeMul(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender],minMaxDMWCPNonce[6]);
    |      msg.sender.transfer(couponAmount);
  > |      Token(tokenUser[0]).transfer(msg.sender,amount);
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
    |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(214)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |    else {
    |      couponAmount = safeMul(orderRecord[tokenUser[1]][orderHash].coupon,couponProportion);
  > |      msg.sender.transfer(safeAdd(couponAmount,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]));
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
    |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(223)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1] &&
    |      block.number > minMaxDMWCPNonce[4]
    |    );
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(245)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      block.number > minMaxDMWCPNonce[4]
    |    );
  > |    admin.transfer(safeAdd(orderRecord[tokenUser[1]][orderHash].coupon,orderRecord[tokenUser[1]][orderHash].balance));
    |    Token(tokenUser[0]).transfer(admin,orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]]);
    |    orderRecord[tokenUser[1]][orderHash].balance = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(248)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |    );
    |    admin.transfer(safeAdd(orderRecord[tokenUser[1]][orderHash].coupon,orderRecord[tokenUser[1]][orderHash].balance));
  > |    Token(tokenUser[0]).transfer(admin,orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]]);
    |    orderRecord[tokenUser[1]][orderHash].balance = uint(0);
    |    orderRecord[tokenUser[1]][orderHash].coupon = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(249)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == msg.sender &&
    |      block.number > minMaxDMWCPNonce[3] &&
    |      block.number <= minMaxDMWCPNonce[4] &&
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(270)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      orderRecord[tokenUser[1]][orderHash].balance < minMaxDMWCPNonce[0]
    |    );
  > |    msg.sender.transfer(orderRecord[msg.sender][orderHash].coupon);
    |    orderRecord[msg.sender][orderHash].coupon = uint(0);
    |    NonActivationWithdrawal(tokenUser,minMaxDMWCPNonce,v,rs,orderRecord[msg.sender][orderHash].coupon);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(275)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1] &&
    |      block.number > minMaxDMWCPNonce[3] &&
    |      block.number <= minMaxDMWCPNonce[4] &&
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(294)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |      orderRecord[tokenUser[1]][orderHash].balance < minMaxDMWCPNonce[0]
    |    );
  > |    msg.sender.transfer(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |    orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |    orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(299)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |        minMaxDMWCPNonce[7]
    |      );
  > |    require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1]);
    |    return orderRecord[tokenUser[1]][orderHash].balance;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(318)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |        minMaxDMWCPNonce[7]
    |      );
  > |    require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1]);
    |    return orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[1]];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(335)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |        minMaxDMWCPNonce[7]
    |      );
  > |    require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1]);
    |    return orderRecord[tokenUser[1]][orderHash].longBalance[_user];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(352)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |        minMaxDMWCPNonce[7]
    |      );
  > |    require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1]);
    |    return orderRecord[tokenUser[1]][orderHash].coupon;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(369)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |        minMaxDMWCPNonce[7]
    |      );
  > |    require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1]);
    |    return orderRecord[tokenUser[1]][orderHash].tokenDeposit;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(386)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |
    |  function returnAddress(bytes32 orderHash,uint8 v,bytes32[2] rs) external pure returns (address) {
  > |    return ecrecover(orderHash,v,rs[0],rs[1]);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(407)

[33mWarning[0m for UnhandledException in contract 'ShortOrder':
    |
    |  function returnLongAddress(bytes32 orderHash,uint8 v,bytes32[2] rs) external pure returns (address) {
  > |    return ecrecover(orderHash,v,rs[0],rs[1]);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(416)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == msg.sender &&
    |      block.number > minMaxDMWCPNonce[2] &&
    |      block.number <= minMaxDMWCPNonce[3] && 
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(119)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |      !orderRecord[msg.sender][orderHash].tokenDeposit
    |    );
  > |    Token(tokenUser[0]).transferFrom(msg.sender,this,amount);
    |    orderRecord[msg.sender][orderHash].shortBalance[tokenUser[0]] = safeAdd(orderRecord[msg.sender][orderHash].shortBalance[tokenUser[0]],amount);
    |    orderRecord[msg.sender][orderHash].tokenDeposit = true;
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(126)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == msg.sender &&
    |      msg.value >= minMaxDMWCPNonce[5]
    |    );
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(146)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1] &&
    |      block.number <= minMaxDMWCPNonce[2] &&
    |      orderRecord[tokenUser[1]][orderHash].coupon >= minMaxDMWCPNonce[5]&&
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(167)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |    bytes32 longTransferHash = keccak256(sellerShort[0],amountNonceExpiry);
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",longTransferHash[0]),v,hashRS[1],hashRS[2]) == sellerShort[1] &&
    |      msg.value >= amountNonceExpiry[0] 
    |    );
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(180)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1] &&
    |      block.number > minMaxDMWCPNonce[3] &&
    |      block.number <= minMaxDMWCPNonce[4] &&
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(203)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1] &&
    |      block.number > minMaxDMWCPNonce[4]
    |    );
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(245)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == msg.sender &&
    |      block.number > minMaxDMWCPNonce[3] &&
    |      block.number <= minMaxDMWCPNonce[4] &&
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(270)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |      orderRecord[tokenUser[1]][orderHash].balance < minMaxDMWCPNonce[0]
    |    );
  > |    msg.sender.transfer(orderRecord[msg.sender][orderHash].coupon);
    |    orderRecord[msg.sender][orderHash].coupon = uint(0);
    |    NonActivationWithdrawal(tokenUser,minMaxDMWCPNonce,v,rs,orderRecord[msg.sender][orderHash].coupon);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(275)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |      );
    |    require(
  > |      ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1] &&
    |      block.number > minMaxDMWCPNonce[3] &&
    |      block.number <= minMaxDMWCPNonce[4] &&
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(294)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |        minMaxDMWCPNonce[7]
    |      );
  > |    require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1]);
    |    return orderRecord[tokenUser[1]][orderHash].balance;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(318)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |        minMaxDMWCPNonce[7]
    |      );
  > |    require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1]);
    |    return orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[1]];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(335)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |        minMaxDMWCPNonce[7]
    |      );
  > |    require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1]);
    |    return orderRecord[tokenUser[1]][orderHash].longBalance[_user];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(352)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |        minMaxDMWCPNonce[7]
    |      );
  > |    require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1]);
    |    return orderRecord[tokenUser[1]][orderHash].coupon;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(369)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |        minMaxDMWCPNonce[7]
    |      );
  > |    require(ecrecover(keccak256("\x19Ethereum Signed Message:\n32",orderHash),v,rs[0],rs[1]) == tokenUser[1]);
    |    return orderRecord[tokenUser[1]][orderHash].tokenDeposit;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(386)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |
    |  function returnAddress(bytes32 orderHash,uint8 v,bytes32[2] rs) external pure returns (address) {
  > |    return ecrecover(orderHash,v,rs[0],rs[1]);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(407)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ShortOrder':
    |
    |  function returnLongAddress(bytes32 orderHash,uint8 v,bytes32[2] rs) external pure returns (address) {
  > |    return ecrecover(orderHash,v,rs[0],rs[1]);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(416)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |    );
    |    Token(tokenUser[0]).transferFrom(msg.sender,this,amount);
  > |    orderRecord[msg.sender][orderHash].shortBalance[tokenUser[0]] = safeAdd(orderRecord[msg.sender][orderHash].shortBalance[tokenUser[0]],amount);
    |    orderRecord[msg.sender][orderHash].tokenDeposit = true;
    |    TokenFulfillment(tokenUser,minMaxDMWCPNonce,v,rs,amount);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(127)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |    Token(tokenUser[0]).transferFrom(msg.sender,this,amount);
    |    orderRecord[msg.sender][orderHash].shortBalance[tokenUser[0]] = safeAdd(orderRecord[msg.sender][orderHash].shortBalance[tokenUser[0]],amount);
  > |    orderRecord[msg.sender][orderHash].tokenDeposit = true;
    |    TokenFulfillment(tokenUser,minMaxDMWCPNonce,v,rs,amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(128)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |      msg.value >= minMaxDMWCPNonce[5]
    |    );
  > |    orderRecord[msg.sender][orderHash].coupon = safeAdd(orderRecord[msg.sender][orderHash].coupon,msg.value);
    |    CouponDeposit(tokenUser,minMaxDMWCPNonce,v,rs,msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(149)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |      orderRecord[tokenUser[1]][orderHash].balance <= minMaxDMWCPNonce[1]
    |    );
  > |    orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = safeAdd(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender],msg.value);
    |    orderRecord[tokenUser[1]][orderHash].balance = safeAdd(orderRecord[tokenUser[1]][orderHash].balance,msg.value);
    |    LongPlace(tokenUser,minMaxDMWCPNonce,v,rs,msg.value);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(172)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |    );
    |    orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = safeAdd(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender],msg.value);
  > |    orderRecord[tokenUser[1]][orderHash].balance = safeAdd(orderRecord[tokenUser[1]][orderHash].balance,msg.value);
    |    LongPlace(tokenUser,minMaxDMWCPNonce,v,rs,msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(173)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |    sellerShort[0].transfer(msg.value);
    |    orderRecord[sellerShort[1]][hashRS[0]].longBalance[msg.sender] = orderRecord[sellerShort[1]][hashRS[0]].longBalance[sellerShort[0]];
  > |    orderRecord[sellerShort[1]][hashRS[0]].longBalance[sellerShort[0]] = uint(0);
    |    LongBought(sellerShort,amountNonceExpiry,v,hashRS,msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |      msg.sender.transfer(couponAmount);
    |      Token(tokenUser[0]).transfer(msg.sender,amount);
  > |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
    |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |      orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]] = safeSub(orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]],amount);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(215)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |      Token(tokenUser[0]).transfer(msg.sender,amount);
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
  > |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |      orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]] = safeSub(orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]],amount);
    |      orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(216)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
    |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
  > |      orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]] = safeSub(orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]],amount);
    |      orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = uint(0);
    |      TokenLongExercised(tokenUser,minMaxDMWCPNonce,v,rs,couponAmount,amount);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(217)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |      orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]] = safeSub(orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]],amount);
  > |      orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = uint(0);
    |      TokenLongExercised(tokenUser,minMaxDMWCPNonce,v,rs,couponAmount,amount);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |      couponAmount = safeMul(orderRecord[tokenUser[1]][orderHash].coupon,couponProportion);
    |      msg.sender.transfer(safeAdd(couponAmount,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]));
  > |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
    |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |      orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = uint(0); 
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(224)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |      msg.sender.transfer(safeAdd(couponAmount,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]));
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
  > |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |      orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = uint(0); 
    |      EthLongExercised(tokenUser,minMaxDMWCPNonce,v,rs,couponAmount,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(225)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |      orderRecord[tokenUser[1]][orderHash].coupon = safeSub(orderRecord[tokenUser[1]][orderHash].coupon,couponAmount);
    |      orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
  > |      orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = uint(0); 
    |      EthLongExercised(tokenUser,minMaxDMWCPNonce,v,rs,couponAmount,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |    }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(226)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |    admin.transfer(safeAdd(orderRecord[tokenUser[1]][orderHash].coupon,orderRecord[tokenUser[1]][orderHash].balance));
    |    Token(tokenUser[0]).transfer(admin,orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]]);
  > |    orderRecord[tokenUser[1]][orderHash].balance = uint(0);
    |    orderRecord[tokenUser[1]][orderHash].coupon = uint(0);
    |    orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]] = uint(0);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(250)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |    Token(tokenUser[0]).transfer(admin,orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]]);
    |    orderRecord[tokenUser[1]][orderHash].balance = uint(0);
  > |    orderRecord[tokenUser[1]][orderHash].coupon = uint(0);
    |    orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]] = uint(0);
    |    DonationClaimed(tokenUser,minMaxDMWCPNonce,v,rs,orderRecord[tokenUser[1]][orderHash].coupon,orderRecord[tokenUser[1]][orderHash].balance);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(251)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |    orderRecord[tokenUser[1]][orderHash].balance = uint(0);
    |    orderRecord[tokenUser[1]][orderHash].coupon = uint(0);
  > |    orderRecord[tokenUser[1]][orderHash].shortBalance[tokenUser[0]] = uint(0);
    |    DonationClaimed(tokenUser,minMaxDMWCPNonce,v,rs,orderRecord[tokenUser[1]][orderHash].coupon,orderRecord[tokenUser[1]][orderHash].balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(252)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |    );
    |    msg.sender.transfer(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
  > |    orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |    orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = uint(0);
    |    ActivationWithdrawal(tokenUser,minMaxDMWCPNonce,v,rs,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(300)

[31mViolation[0m for UnrestrictedWrite in contract 'ShortOrder':
    |    msg.sender.transfer(orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |    orderRecord[tokenUser[1]][orderHash].balance = safeSub(orderRecord[tokenUser[1]][orderHash].balance,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
  > |    orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender] = uint(0);
    |    ActivationWithdrawal(tokenUser,minMaxDMWCPNonce,v,rs,orderRecord[tokenUser[1]][orderHash].longBalance[msg.sender]);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(301)

[33mWarning[0m for UnrestrictedWrite in contract 'ShortOrder':
    |    );
    |    sellerShort[0].transfer(msg.value);
  > |    orderRecord[sellerShort[1]][hashRS[0]].longBalance[msg.sender] = orderRecord[sellerShort[1]][hashRS[0]].longBalance[sellerShort[0]];
    |    orderRecord[sellerShort[1]][hashRS[0]].longBalance[sellerShort[0]] = uint(0);
    |    LongBought(sellerShort,amountNonceExpiry,v,hashRS,msg.value);
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'ShortOrder':
    |    );
    |    msg.sender.transfer(orderRecord[msg.sender][orderHash].coupon);
  > |    orderRecord[msg.sender][orderHash].coupon = uint(0);
    |    NonActivationWithdrawal(tokenUser,minMaxDMWCPNonce,v,rs,orderRecord[msg.sender][orderHash].coupon);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(276)

[33mWarning[0m for UnrestrictedWrite in contract 'ShortOrder':
    |
    |  function changeAdmin(address _admin) external onlyAdmin {
  > |    admin = _admin;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(102)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.18;
    |
  > |contract Token {
    |  /// @return total amount of tokens
    |  function totalSupply() constant returns (uint256 supply) {}
  at /home/jiaming/mavs_srcs/contract@0x3c96c6e76c403c774ba2ab023df5730375c09b2d.sol(3)


