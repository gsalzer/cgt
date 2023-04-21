Processing contract: /home/jiaming/mavs_srcs/contract@0x12e29c3d8a8437b1a82afb07dca489548e08ebbe.sol:CoinContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'CoinContract':
  > |contract CoinContract {
    |  bool private workingState = false;
    |  address public owner;
  at /home/jiaming/mavs_srcs/contract@0x12e29c3d8a8437b1a82afb07dca489548e08ebbe.sol(1)

[31mViolation[0m for UnhandledException in contract 'CoinContract':
    |    uint256 value = x * _amount;
    |    FundsGot(_client, etherClients[_client]);
  > |    ret = proxy.call(bytes4(sha3("generateTokens(address,uint256)")), _client, value);
    |  }
    |  //@title Sender funds getter
  at /home/jiaming/mavs_srcs/contract@0x12e29c3d8a8437b1a82afb07dca489548e08ebbe.sol(53)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'CoinContract':
    |    uint256 value = x * _amount;
    |    FundsGot(_client, etherClients[_client]);
  > |    ret = proxy.call(bytes4(sha3("generateTokens(address,uint256)")), _client, value);
    |  }
    |  //@title Sender funds getter
  at /home/jiaming/mavs_srcs/contract@0x12e29c3d8a8437b1a82afb07dca489548e08ebbe.sol(53)

[31mViolation[0m for UnrestrictedWrite in contract 'CoinContract':
    |  function pay(address _client, uint256 _amount) workingFlag returns (bool ret) {
    |    require(x > 0);
  > |    etherClients[_client] += _amount;
    |    uint256 value = x * _amount;
    |    FundsGot(_client, etherClients[_client]);
  at /home/jiaming/mavs_srcs/contract@0x12e29c3d8a8437b1a82afb07dca489548e08ebbe.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinContract':
    |  //@title Contract enabler
    |  function enableContract() onlyOwner {
  > |    workingState = true;
    |    ContractEnabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x12e29c3d8a8437b1a82afb07dca489548e08ebbe.sol(35)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinContract':
    |  //@title Contract disabler
    |  function disableContract() onlyOwner {
  > |    workingState = false;
    |    ContractDisabled();
    |  }
  at /home/jiaming/mavs_srcs/contract@0x12e29c3d8a8437b1a82afb07dca489548e08ebbe.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'CoinContract':
    |  //@title Contract proxy setter
    |  function setProxy(address _proxy) onlyOwner {
  > |    proxy = _proxy;
    |  }
    |  //@title Contract payment function
  at /home/jiaming/mavs_srcs/contract@0x12e29c3d8a8437b1a82afb07dca489548e08ebbe.sol(45)


