Processing contract: /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol:Exchange
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol:Owned
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol:Token
[33mWarning[0m for DAOConstantGas in contract 'Exchange':
    |    function withdrawEther(address _address,uint256 _amount) onlyOwner {
    |        require(_address != 0);
  > |        _address.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(156)

[33mWarning[0m for DAOConstantGas in contract 'Exchange':
    |        uint256 etherAmount = _tokenAmount / rate;
    |        require(etherAmount > 0);
  > |        _from.transfer(etherAmount);
    |
    |        // totalReturnedCredit+=_tokenAmount;
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(218)

[33mWarning[0m for LockedEther in contract 'Exchange':
    |
    |
  > |contract Exchange is Owned {
    |
    |    event onExchangeTokenToEther(address who, uint256 tokenAmount, uint256 etherAmount);
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(118)

[33mWarning[0m for TODAmount in contract 'Exchange':
    |    function withdrawEther(address _address,uint256 _amount) onlyOwner {
    |        require(_address != 0);
  > |        _address.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(156)

[33mWarning[0m for TODAmount in contract 'Exchange':
    |        uint256 etherAmount = _tokenAmount / rate;
    |        require(etherAmount > 0);
  > |        _from.transfer(etherAmount);
    |
    |        // totalReturnedCredit+=_tokenAmount;
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(218)

[33mWarning[0m for TODReceiver in contract 'Exchange':
    |    function withdrawEther(address _address,uint256 _amount) onlyOwner {
    |        require(_address != 0);
  > |        _address.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(156)

[33mWarning[0m for TODReceiver in contract 'Exchange':
    |        uint256 etherAmount = _tokenAmount / rate;
    |        require(etherAmount > 0);
  > |        _from.transfer(etherAmount);
    |
    |        // totalReturnedCredit+=_tokenAmount;
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(218)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |    function withdrawEther(address _address,uint256 _amount) onlyOwner {
    |        require(_address != 0);
  > |        _address.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(156)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |    function withdrawToken(address _address, uint256 _amount) onlyOwner {
    |        require(_address != 0);
  > |        token.transfer(_address, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(161)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |            _tokenAmount = quota;
    |        
  > |        uint256 balance = token.balanceOf(_from);
    |        if (_tokenAmount > balance)
    |            _tokenAmount = balance;
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(205)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |
    |        //require(_tokenAmount > 0.01 ether);
  > |        require(token.transferFrom(_from, this, _tokenAmount));        
    |
    |        accountQuotaUsed[_from] = _tokenAmount.add(accountQuotaUsed[_from]);
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(212)

[33mWarning[0m for UnhandledException in contract 'Exchange':
    |        uint256 etherAmount = _tokenAmount / rate;
    |        require(etherAmount > 0);
  > |        _from.transfer(etherAmount);
    |
    |        // totalReturnedCredit+=_tokenAmount;
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(218)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |    function withdrawToken(address _address, uint256 _amount) onlyOwner {
    |        require(_address != 0);
  > |        token.transfer(_address, _amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |            _tokenAmount = quota;
    |        
  > |        uint256 balance = token.balanceOf(_from);
    |        if (_tokenAmount > balance)
    |            _tokenAmount = balance;
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(205)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |
    |        //require(_tokenAmount > 0.01 ether);
  > |        require(token.transferFrom(_from, this, _tokenAmount));        
    |
    |        accountQuotaUsed[_from] = _tokenAmount.add(accountQuotaUsed[_from]);
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(212)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |    function withdrawEther(address _address,uint256 _amount) onlyOwner {
    |        require(_address != 0);
  > |        _address.transfer(_amount);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(156)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Exchange':
    |        uint256 etherAmount = _tokenAmount / rate;
    |        require(etherAmount > 0);
  > |        _from.transfer(etherAmount);
    |
    |        // totalReturnedCredit+=_tokenAmount;
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |
    |    function setOwner(address _newOwner) onlyOwner {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(17)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |    //tested
    |    function setRate(uint256 _rate) onlyOwner {
  > |        rate = _rate;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |    //tested
    |    function setTokenQuota(uint256 _quota) onlyOwner {
  > |        tokenQuota = _quota;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(175)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |    //tested    
    |    function setTokenToEtherAllowed(bool _allowed) onlyOwner {
  > |        tokenToEtherAllowed = _allowed;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'Exchange':
    |        require(token.transferFrom(_from, this, _tokenAmount));        
    |
  > |        accountQuotaUsed[_from] = _tokenAmount.add(accountQuotaUsed[_from]);
    |        
    |        uint256 etherAmount = _tokenAmount / rate;
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(214)

[33mWarning[0m for LockedEther in contract 'Owned':
    |pragma solidity ^0.4.11;
    |
  > |contract Owned {
    |
    |    address public owner;
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Owned':
    |    }
    |
  > |    function setOwner(address _newOwner) onlyOwner {
    |        owner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'Owned':
    |contract Owned {
    |
  > |    address public owner;
    |
    |    function Owned() {
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(5)

[33mWarning[0m for UnrestrictedWrite in contract 'Owned':
    |
    |    function setOwner(address _newOwner) onlyOwner {
  > |        owner = _newOwner;
    |    }
    |}
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(17)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |  function mul(uint256 a, uint256 b) internal constant returns (uint256) {
    |    uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xbcb03c4b10f04e568abf88df136f579038dd0ef1.sol(26)


