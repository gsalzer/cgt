Processing contract: /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol:IProxy
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol:ProxyManagementContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'IProxy':
    |pragma solidity ^0.4.8;
    |
  > |contract IProxy{
    |	function raiseTransferEvent(address _from, address _to, uint256 _value) returns (bool success) {}
    |	function raiseApprovalEvent(address _owner, address _spender, uint256 _value) returns (bool success){}
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(3)

[33mWarning[0m for LockedEther in contract 'ProxyManagementContract':
    |}
    |
  > |contract ProxyManagementContract{
    |
    |  
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(8)

[33mWarning[0m for UnhandledException in contract 'ProxyManagementContract':
    |        if (msg.sender != tokenAddress) { return 1; }
    |        
  > |        dedicatedProxy.raiseTransferEvent(_from, _to, _value);
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(64)

[33mWarning[0m for UnhandledException in contract 'ProxyManagementContract':
    |        if (msg.sender == tokenAddress) { return 1; }
    |
  > |        dedicatedProxy.raiseApprovalEvent(_owner, _spender, _value);
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(71)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProxyManagementContract':
    |        if (msg.sender != tokenAddress) { return 1; }
    |        
  > |        dedicatedProxy.raiseTransferEvent(_from, _to, _value);
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(64)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProxyManagementContract':
    |        if (msg.sender == tokenAddress) { return 1; }
    |
  > |        dedicatedProxy.raiseApprovalEvent(_owner, _spender, _value);
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'ProxyManagementContract':
    |
    |contract IProxy{
  > |	function raiseTransferEvent(address _from, address _to, uint256 _value) returns (bool success) {}
    |	function raiseApprovalEvent(address _owner, address _spender, uint256 _value) returns (bool success){}
    |}
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ProxyManagementContract':
    |        if(msg.sender != curator){ return 1;}
    |        
  > |        approvedProxies[_proxyAdress] = true;
    |        proxyList.push(_proxyAdress);
    |        return 0;
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(28)

[33mWarning[0m for UnrestrictedWrite in contract 'ProxyManagementContract':
    |        
    |        approvedProxies[_proxyAdress] = true;
  > |        proxyList.push(_proxyAdress);
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(29)

[33mWarning[0m for UnrestrictedWrite in contract 'ProxyManagementContract':
    |        if(msg.sender != curator){ return 1;}
    |        
  > |        dedicatedProxy = IProxy(_contractAddress);
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(57)

[33mWarning[0m for UnrestrictedWrite in contract 'ProxyManagementContract':
    |        if (msg.sender != dev){ return 1; }
    |              
  > |        curator = _curatorAdress;
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(78)

[33mWarning[0m for UnrestrictedWrite in contract 'ProxyManagementContract':
    |        if (msg.sender != curator){ return 1; }
    |              
  > |        dedicatedProxy = IProxy(_contractAddress);
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(85)

[33mWarning[0m for UnrestrictedWrite in contract 'ProxyManagementContract':
    |        if (msg.sender != curator){ return 1; }
    |        
  > |        tokenAddress = _contractAddress;
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb834a20ffe2c3feb10bc2f4d0f43ff532395e117.sol(92)


