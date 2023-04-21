Processing contract: /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol:ThreesigWallet
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'ThreesigWallet':
    |    assert(txs[txIdx].founder != msg.sender);
    |    
  > |    txs[txIdx].destAddr.transfer(balance);
    |    balance = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(40)

[33mWarning[0m for LockedEther in contract 'ThreesigWallet':
    |pragma solidity ^0.4.4;
    |
  > |contract ThreesigWallet {
    |
    |  mapping (address => bool) public founders;
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'ThreesigWallet':
    |contract ThreesigWallet {
    |
  > |  mapping (address => bool) public founders;
    |
    |  struct Tx {
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'ThreesigWallet':
    |  
    |  // one of founders can propose destination address for ethers
  > |  function proposeTx(address destAddr) isFounder {
    |    txs.push(Tx({
    |      founder: msg.sender,
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'ThreesigWallet':
    |  }
    |  
  > |  Tx[] public txs;
    |  
    |  uint256 balance;
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'ThreesigWallet':
    |  
    |  // another founder can approve specified tx and send it to destAddr
  > |  function approveTx(uint8 txIdx) isFounder {
    |    assert(txs[txIdx].founder != msg.sender);
    |    
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(37)

[31mViolation[0m for TODAmount in contract 'ThreesigWallet':
    |    assert(txs[txIdx].founder != msg.sender);
    |    
  > |    txs[txIdx].destAddr.transfer(balance);
    |    balance = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(40)

[33mWarning[0m for UnhandledException in contract 'ThreesigWallet':
    |    assert(txs[txIdx].founder != msg.sender);
    |    
  > |    txs[txIdx].destAddr.transfer(balance);
    |    balance = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(40)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ThreesigWallet':
    |    assert(txs[txIdx].founder != msg.sender);
    |    
  > |    txs[txIdx].destAddr.transfer(balance);
    |    balance = 0;
    |  }
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'ThreesigWallet':
    |pragma solidity ^0.4.4;
    |
  > |contract ThreesigWallet {
    |
    |  mapping (address => bool) public founders;
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(3)

[31mViolation[0m for UnrestrictedWrite in contract 'ThreesigWallet':
    |  // one of founders can propose destination address for ethers
    |  function proposeTx(address destAddr) isFounder {
  > |    txs.push(Tx({
    |      founder: msg.sender,
    |      destAddr: destAddr
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(30)

[33mWarning[0m for UnrestrictedWrite in contract 'ThreesigWallet':
    |    
    |    txs[txIdx].destAddr.transfer(balance);
  > |    balance = 0;
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0xaaec8b72a46be4aa4d8709ce182ed584c387e944.sol(41)


