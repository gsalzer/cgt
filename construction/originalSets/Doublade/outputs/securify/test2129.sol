Processing contract: /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol:EtherZaarTwitter
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol:Ownable
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'EtherZaarTwitter':
    |      twitterIdToEthereumBalance[_twitterId] = 0;
    |
  > |      (msg.sender).transfer(transferAmount);
    |
    |      emit Withdraw(_twitterId, transferAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(125)

[33mWarning[0m for DAOConstantGas in contract 'EtherZaarTwitter':
    |      twitterIdToEthereumBalance[_twitterId] = 0;
    |
  > |      (twitterIdToEthereumAddress[_twitterId]).transfer(sendAmount);
    |
    |      emit Withdraw(_twitterId, sendAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(138)

[33mWarning[0m for LockedEther in contract 'EtherZaarTwitter':
    |}
    |
  > |contract EtherZaarTwitter is Ownable {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |  event TransferCreditDeposit(uint256 twitterId, uint256 transferCredits);
    |
  > |  mapping (uint256 => address) public twitterIdToEthereumAddress;
    |  mapping (uint256 => uint256) public twitterIdToEthereumBalance;
    |  mapping (uint256 => uint256) public twitterIdToTransferCredits;
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(87)

[31mViolation[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |
    |  mapping (uint256 => address) public twitterIdToEthereumAddress;
  > |  mapping (uint256 => uint256) public twitterIdToEthereumBalance;
    |  mapping (uint256 => uint256) public twitterIdToTransferCredits;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(88)

[31mViolation[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |  mapping (uint256 => address) public twitterIdToEthereumAddress;
    |  mapping (uint256 => uint256) public twitterIdToEthereumBalance;
  > |  mapping (uint256 => uint256) public twitterIdToTransferCredits;
    |
    |  function _addEthereumAddress(uint256 _twitterId, address _ethereumAddress) external onlyTwitterBot {
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(89)

[31mViolation[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |  mapping (uint256 => uint256) public twitterIdToTransferCredits;
    |
  > |  function _addEthereumAddress(uint256 _twitterId, address _ethereumAddress) external onlyTwitterBot {
    |    twitterIdToEthereumAddress[_twitterId] = _ethereumAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(91)

[31mViolation[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |  }
    |
  > |  function _depositEthereum(uint256 _twitterId) external payable{
    |      twitterIdToEthereumBalance[_twitterId] += msg.value;
    |      emit EthereumDeposit(_twitterId, twitterIdToEthereumAddress[_twitterId], msg.value);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(97)

[31mViolation[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |  }
    |
  > |  function _depositTransferCredits(uint256 _twitterId, uint256 _transferCredits) external onlyTransferCreditBot{
    |      twitterIdToTransferCredits[_twitterId] += _transferCredits;
    |      emit TransferCreditDeposit(_twitterId, _transferCredits);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |  }
    |
  > |  function _transferEthereum(uint256 _senderTwitterId, uint256 _receiverTwitterId, uint256 _ethereumAmount) external onlyTwitterBot {
    |      require(twitterIdToEthereumBalance[_senderTwitterId] >= _ethereumAmount);
    |      require(twitterIdToTransferCredits[_senderTwitterId] > 0);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(107)

[31mViolation[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |  }
    |
  > |  function _withdrawEthereum(uint256 _twitterId) external {
    |      require(twitterIdToEthereumBalance[_twitterId] > 0);
    |      require(twitterIdToEthereumAddress[_twitterId] == msg.sender);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(118)

[31mViolation[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |  }
    |
  > |  function _sendEthereum(uint256 _twitterId) external onlyTwitterBot {
    |      require(twitterIdToEthereumBalance[_twitterId] > 0);
    |      require(twitterIdToTransferCredits[_twitterId] > 0);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(130)

[33mWarning[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |
    |contract Ownable {
  > |  address public ownerAddress;
    |  address public transferCreditBotAddress;
    |  address public twitterBotAddress;
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |contract Ownable {
    |  address public ownerAddress;
  > |  address public transferCreditBotAddress;
    |  address public twitterBotAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |  address public ownerAddress;
    |  address public transferCreditBotAddress;
  > |  address public twitterBotAddress;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |    }
    |
  > |  function setTransferCreditBot(address _newTransferCreditBot) public onlyOwner {
    |        require(_newTransferCreditBot != address(0));
    |        transferCreditBotAddress = _newTransferCreditBot;
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |    }
    |
  > |  function setTwitterBot(address _newTwitterBot) public onlyOwner {
    |        require(_newTwitterBot != address(0));
    |        twitterBotAddress = _newTwitterBot;
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'EtherZaarTwitter':
    |    }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(ownerAddress, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(69)

[33mWarning[0m for TODReceiver in contract 'EtherZaarTwitter':
    |      twitterIdToEthereumBalance[_twitterId] = 0;
    |
  > |      (msg.sender).transfer(transferAmount);
    |
    |      emit Withdraw(_twitterId, transferAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(125)

[33mWarning[0m for UnhandledException in contract 'EtherZaarTwitter':
    |      twitterIdToEthereumBalance[_twitterId] = 0;
    |
  > |      (msg.sender).transfer(transferAmount);
    |
    |      emit Withdraw(_twitterId, transferAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(125)

[33mWarning[0m for UnhandledException in contract 'EtherZaarTwitter':
    |      twitterIdToEthereumBalance[_twitterId] = 0;
    |
  > |      (twitterIdToEthereumAddress[_twitterId]).transfer(sendAmount);
    |
    |      emit Withdraw(_twitterId, sendAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(138)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherZaarTwitter':
    |      twitterIdToEthereumBalance[_twitterId] = 0;
    |
  > |      (msg.sender).transfer(transferAmount);
    |
    |      emit Withdraw(_twitterId, transferAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(125)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'EtherZaarTwitter':
    |      twitterIdToEthereumBalance[_twitterId] = 0;
    |
  > |      (twitterIdToEthereumAddress[_twitterId]).transfer(sendAmount);
    |
    |      emit Withdraw(_twitterId, sendAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(138)

[31mViolation[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |
    |  function _depositEthereum(uint256 _twitterId) external payable{
  > |      twitterIdToEthereumBalance[_twitterId] += msg.value;
    |      emit EthereumDeposit(_twitterId, twitterIdToEthereumAddress[_twitterId], msg.value);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(98)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |  function setTransferCreditBot(address _newTransferCreditBot) public onlyOwner {
    |        require(_newTransferCreditBot != address(0));
  > |        transferCreditBotAddress = _newTransferCreditBot;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |  function setTwitterBot(address _newTwitterBot) public onlyOwner {
    |        require(_newTwitterBot != address(0));
  > |        twitterBotAddress = _newTwitterBot;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(ownerAddress, newOwner);
  > |    ownerAddress = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(72)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |
    |  function _addEthereumAddress(uint256 _twitterId, address _ethereumAddress) external onlyTwitterBot {
  > |    twitterIdToEthereumAddress[_twitterId] = _ethereumAddress;
    |
    |    emit addressRegistration(_twitterId, _ethereumAddress);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(92)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |
    |  function _depositTransferCredits(uint256 _twitterId, uint256 _transferCredits) external onlyTransferCreditBot{
  > |      twitterIdToTransferCredits[_twitterId] += _transferCredits;
    |      emit TransferCreditDeposit(_twitterId, _transferCredits);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |      require(twitterIdToTransferCredits[_senderTwitterId] > 0);
    |
  > |      twitterIdToEthereumBalance[_senderTwitterId] = twitterIdToEthereumBalance[_senderTwitterId] - _ethereumAmount;
    |      twitterIdToTransferCredits[_senderTwitterId] = twitterIdToTransferCredits[_senderTwitterId] - 1;
    |      twitterIdToEthereumBalance[_receiverTwitterId] += _ethereumAmount;
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(111)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |
    |      twitterIdToEthereumBalance[_senderTwitterId] = twitterIdToEthereumBalance[_senderTwitterId] - _ethereumAmount;
  > |      twitterIdToTransferCredits[_senderTwitterId] = twitterIdToTransferCredits[_senderTwitterId] - 1;
    |      twitterIdToEthereumBalance[_receiverTwitterId] += _ethereumAmount;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(112)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |      twitterIdToEthereumBalance[_senderTwitterId] = twitterIdToEthereumBalance[_senderTwitterId] - _ethereumAmount;
    |      twitterIdToTransferCredits[_senderTwitterId] = twitterIdToTransferCredits[_senderTwitterId] - 1;
  > |      twitterIdToEthereumBalance[_receiverTwitterId] += _ethereumAmount;
    |
    |      emit Transfer(_receiverTwitterId, _senderTwitterId, _ethereumAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(113)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |
    |      uint256 transferAmount = twitterIdToEthereumBalance[_twitterId];
  > |      twitterIdToEthereumBalance[_twitterId] = 0;
    |
    |      (msg.sender).transfer(transferAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(123)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |      require(twitterIdToTransferCredits[_twitterId] > 0);
    |
  > |      twitterIdToTransferCredits[_twitterId] = twitterIdToTransferCredits[_twitterId] - 1;
    |      uint256 sendAmount = twitterIdToEthereumBalance[_twitterId];
    |      twitterIdToEthereumBalance[_twitterId] = 0;
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(134)

[33mWarning[0m for UnrestrictedWrite in contract 'EtherZaarTwitter':
    |      twitterIdToTransferCredits[_twitterId] = twitterIdToTransferCredits[_twitterId] - 1;
    |      uint256 sendAmount = twitterIdToEthereumBalance[_twitterId];
  > |      twitterIdToEthereumBalance[_twitterId] = 0;
    |
    |      (twitterIdToEthereumAddress[_twitterId]).transfer(sendAmount);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(136)

[33mWarning[0m for LockedEther in contract 'Ownable':
    |}
    |
  > |contract Ownable {
    |  address public ownerAddress;
    |  address public transferCreditBotAddress;
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |
    |contract Ownable {
  > |  address public ownerAddress;
    |  address public transferCreditBotAddress;
    |  address public twitterBotAddress;
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |contract Ownable {
    |  address public ownerAddress;
  > |  address public transferCreditBotAddress;
    |  address public twitterBotAddress;
    |
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |  address public ownerAddress;
    |  address public transferCreditBotAddress;
  > |  address public twitterBotAddress;
    |
    |  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |  function setTransferCreditBot(address _newTransferCreditBot) public onlyOwner {
    |        require(_newTransferCreditBot != address(0));
    |        transferCreditBotAddress = _newTransferCreditBot;
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(59)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |  function setTwitterBot(address _newTwitterBot) public onlyOwner {
    |        require(_newTwitterBot != address(0));
    |        twitterBotAddress = _newTwitterBot;
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'Ownable':
    |    }
    |
  > |  function transferOwnership(address newOwner) public onlyOwner {
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(ownerAddress, newOwner);
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function setTransferCreditBot(address _newTransferCreditBot) public onlyOwner {
    |        require(_newTransferCreditBot != address(0));
  > |        transferCreditBotAddress = _newTransferCreditBot;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(61)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |  function setTwitterBot(address _newTwitterBot) public onlyOwner {
    |        require(_newTwitterBot != address(0));
  > |        twitterBotAddress = _newTwitterBot;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(66)

[33mWarning[0m for UnrestrictedWrite in contract 'Ownable':
    |    require(newOwner != address(0));
    |    emit OwnershipTransferred(ownerAddress, newOwner);
  > |    ownerAddress = newOwner;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(72)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.22;
    |
  > |library SafeMath {
    |
    |  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
  at /home/jiaming/mavs_srcs/contract@0x8b372327fb107e1e2863ddb9586c8b69e12da5e3.sol(3)


