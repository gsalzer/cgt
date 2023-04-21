Processing contract: /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol:TokenContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol:VfSE_Token_Exchange
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public owner;
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public owner;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(30)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    _;
    |  }
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(41)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(44)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.23;
    |
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    |    if (a == 0) {
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(3)

[33mWarning[0m for DAOConstantGas in contract 'VfSE_Token_Exchange':
    |    require (address(this).balance >= transactionPrice);
    |    require (tkn.transferFrom(msg.sender, address(this), _amount));
  > |    seller.transfer(transactionPrice);
    |    emit BuyTransaction(transactionPrice, _amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(98)

[33mWarning[0m for DAOConstantGas in contract 'VfSE_Token_Exchange':
    |
    |  function getBalance(uint256 _amount) onlyOwner public {
  > |    msg.sender.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(103)

[33mWarning[0m for DAOConstantGas in contract 'VfSE_Token_Exchange':
    |    uint256 tokensLeft = tkn.balanceOf(address(this));
    |    tkn.transfer(msg.sender, tokensLeft);
  > |    msg.sender.transfer(address(this).balance);
    |    selfdestruct(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(115)

[33mWarning[0m for LockedEther in contract 'VfSE_Token_Exchange':
    |}
    |
  > |contract VfSE_Token_Exchange is Ownable {
    |  using SafeMath for uint256;
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(55)

[31mViolation[0m for TODAmount in contract 'VfSE_Token_Exchange':
    |    uint256 tokensLeft = tkn.balanceOf(address(this));
    |    tkn.transfer(msg.sender, tokensLeft);
  > |    msg.sender.transfer(address(this).balance);
    |    selfdestruct(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(115)

[33mWarning[0m for TODAmount in contract 'VfSE_Token_Exchange':
    |
    |  function getBalance(uint256 _amount) onlyOwner public {
  > |    msg.sender.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(103)

[33mWarning[0m for TODReceiver in contract 'VfSE_Token_Exchange':
    |    require (address(this).balance >= transactionPrice);
    |    require (tkn.transferFrom(msg.sender, address(this), _amount));
  > |    seller.transfer(transactionPrice);
    |    emit BuyTransaction(transactionPrice, _amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(98)

[33mWarning[0m for TODReceiver in contract 'VfSE_Token_Exchange':
    |
    |  function getBalance(uint256 _amount) onlyOwner public {
  > |    msg.sender.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(103)

[33mWarning[0m for TODReceiver in contract 'VfSE_Token_Exchange':
    |    uint256 tokensLeft = tkn.balanceOf(address(this));
    |    tkn.transfer(msg.sender, tokensLeft);
  > |    msg.sender.transfer(address(this).balance);
    |    selfdestruct(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(115)

[33mWarning[0m for UnhandledException in contract 'VfSE_Token_Exchange':
    |    uint256 tokensToSell = msg.value.mul(sellPrice);
    |    tokensToSell = tokensToSell.div(100);
  > |    require(tkn.balanceOf(address(this)) >= tokensToSell);
    |    tkn.transfer(msg.sender, tokensToSell);
    |    emit SellTransaction(msg.value, tokensToSell);
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(86)

[33mWarning[0m for UnhandledException in contract 'VfSE_Token_Exchange':
    |    tokensToSell = tokensToSell.div(100);
    |    require(tkn.balanceOf(address(this)) >= tokensToSell);
  > |    tkn.transfer(msg.sender, tokensToSell);
    |    emit SellTransaction(msg.value, tokensToSell);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(87)

[33mWarning[0m for UnhandledException in contract 'VfSE_Token_Exchange':
    |    transactionPrice = transactionPrice.mul(100);
    |    require (address(this).balance >= transactionPrice);
  > |    require (tkn.transferFrom(msg.sender, address(this), _amount));
    |    seller.transfer(transactionPrice);
    |    emit BuyTransaction(transactionPrice, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(97)

[33mWarning[0m for UnhandledException in contract 'VfSE_Token_Exchange':
    |    require (address(this).balance >= transactionPrice);
    |    require (tkn.transferFrom(msg.sender, address(this), _amount));
  > |    seller.transfer(transactionPrice);
    |    emit BuyTransaction(transactionPrice, _amount);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(98)

[33mWarning[0m for UnhandledException in contract 'VfSE_Token_Exchange':
    |
    |  function getBalance(uint256 _amount) onlyOwner public {
  > |    msg.sender.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(103)

[33mWarning[0m for UnhandledException in contract 'VfSE_Token_Exchange':
    |  function getTokens(uint256 _amount) onlyOwner public {
    |    TokenContract tkn = TokenContract(tokenAddress);
  > |    tkn.transfer(msg.sender, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(108)

[33mWarning[0m for UnhandledException in contract 'VfSE_Token_Exchange':
    |  function killMe() onlyOwner public {
    |    TokenContract tkn = TokenContract(tokenAddress);
  > |    uint256 tokensLeft = tkn.balanceOf(address(this));
    |    tkn.transfer(msg.sender, tokensLeft);
    |    msg.sender.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(113)

[33mWarning[0m for UnhandledException in contract 'VfSE_Token_Exchange':
    |    TokenContract tkn = TokenContract(tokenAddress);
    |    uint256 tokensLeft = tkn.balanceOf(address(this));
  > |    tkn.transfer(msg.sender, tokensLeft);
    |    msg.sender.transfer(address(this).balance);
    |    selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(114)

[33mWarning[0m for UnhandledException in contract 'VfSE_Token_Exchange':
    |    uint256 tokensLeft = tkn.balanceOf(address(this));
    |    tkn.transfer(msg.sender, tokensLeft);
  > |    msg.sender.transfer(address(this).balance);
    |    selfdestruct(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VfSE_Token_Exchange':
    |    uint256 tokensToSell = msg.value.mul(sellPrice);
    |    tokensToSell = tokensToSell.div(100);
  > |    require(tkn.balanceOf(address(this)) >= tokensToSell);
    |    tkn.transfer(msg.sender, tokensToSell);
    |    emit SellTransaction(msg.value, tokensToSell);
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VfSE_Token_Exchange':
    |    tokensToSell = tokensToSell.div(100);
    |    require(tkn.balanceOf(address(this)) >= tokensToSell);
  > |    tkn.transfer(msg.sender, tokensToSell);
    |    emit SellTransaction(msg.value, tokensToSell);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(87)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VfSE_Token_Exchange':
    |    transactionPrice = transactionPrice.mul(100);
    |    require (address(this).balance >= transactionPrice);
  > |    require (tkn.transferFrom(msg.sender, address(this), _amount));
    |    seller.transfer(transactionPrice);
    |    emit BuyTransaction(transactionPrice, _amount);
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(97)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VfSE_Token_Exchange':
    |  function getTokens(uint256 _amount) onlyOwner public {
    |    TokenContract tkn = TokenContract(tokenAddress);
  > |    tkn.transfer(msg.sender, _amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(108)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VfSE_Token_Exchange':
    |  function killMe() onlyOwner public {
    |    TokenContract tkn = TokenContract(tokenAddress);
  > |    uint256 tokensLeft = tkn.balanceOf(address(this));
    |    tkn.transfer(msg.sender, tokensLeft);
    |    msg.sender.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(113)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VfSE_Token_Exchange':
    |    TokenContract tkn = TokenContract(tokenAddress);
    |    uint256 tokensLeft = tkn.balanceOf(address(this));
  > |    tkn.transfer(msg.sender, tokensLeft);
    |    msg.sender.transfer(address(this).balance);
    |    selfdestruct(owner);
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(114)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VfSE_Token_Exchange':
    |    uint256 tokensLeft = tkn.balanceOf(address(this));
    |    tkn.transfer(msg.sender, tokensLeft);
  > |    msg.sender.transfer(address(this).balance);
    |    selfdestruct(owner);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'VfSE_Token_Exchange':
    |
    |  function getBalance(uint256 _amount) onlyOwner public {
  > |    msg.sender.transfer(_amount);
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'VfSE_Token_Exchange':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(owner, newOwner);
  > |    owner = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(44)

[33mWarning[0m for UnrestrictedWrite in contract 'VfSE_Token_Exchange':
    |
    |  function setBuyPrice(uint256 _price) onlyOwner public {
  > |    buyPrice = _price;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'VfSE_Token_Exchange':
    |
    |  function setSellPrice(uint256 _price) onlyOwner public {
  > |    sellPrice = _price;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'VfSE_Token_Exchange':
    |
    |  function changeToken(address _address) onlyOwner public {
  > |    tokenAddress = _address;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x3383fa56bce7c7b540de3e00d4ca2e8e93aef4a9.sol(120)


