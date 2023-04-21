Processing contract: /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol:IERC20Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol:IToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol:ProxyContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'IERC20Token':
    |pragma solidity ^0.4.8;
    |
  > |contract IERC20Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(3)

[33mWarning[0m for LockedEther in contract 'IToken':
    |}
    |
  > |contract IToken {
    |    function totalSupply() constant returns (uint256 supply) {}
    |    function balanceOf(address _owner) constant returns (uint256 balance) {}
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(40)

[33mWarning[0m for LockedEther in contract 'ProxyContract':
    |}
    |
  > |contract ProxyContract is IERC20Token {
    |
    |
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(51)

[33mWarning[0m for UnhandledException in contract 'ProxyContract':
    |
    |    function totalSupply() constant returns (uint256 supply) {
  > |        return tokenContract.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(73)

[33mWarning[0m for UnhandledException in contract 'ProxyContract':
    |
    |    function balanceOf(address _owner) constant returns (uint256 balance) {
  > |        return tokenContract.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(77)

[33mWarning[0m for UnhandledException in contract 'ProxyContract':
    |        if (!proxyWorking) { return false;}
    |        
  > |        uint error =  tokenContract.transferViaProxy(msg.sender, _to, _value);
    |        
    |        if(error == 0){
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(83)

[33mWarning[0m for UnhandledException in contract 'ProxyContract':
    |        if (!proxyWorking) { return false;}
    |        
  > |        uint error =  tokenContract.transferFromViaProxy(msg.sender, _from, _to, _value);
    |        
    |        if(error == 0){
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(96)

[33mWarning[0m for UnhandledException in contract 'ProxyContract':
    |        if (!proxyWorking) { return false;}
    |        
  > |        uint error =  tokenContract.approveFromProxy(msg.sender, _spender, _value);
    |        
    |        if(error == 0){
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(109)

[33mWarning[0m for UnhandledException in contract 'ProxyContract':
    |
    |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
  > |        return tokenContract.allowance(_owner, _spender);
    |    } 
    |    
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(120)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProxyContract':
    |
    |    function totalSupply() constant returns (uint256 supply) {
  > |        return tokenContract.totalSupply();
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(73)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProxyContract':
    |
    |    function balanceOf(address _owner) constant returns (uint256 balance) {
  > |        return tokenContract.balanceOf(_owner);
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(77)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProxyContract':
    |        if (!proxyWorking) { return false;}
    |        
  > |        uint error =  tokenContract.transferViaProxy(msg.sender, _to, _value);
    |        
    |        if(error == 0){
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(83)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProxyContract':
    |        if (!proxyWorking) { return false;}
    |        
  > |        uint error =  tokenContract.transferFromViaProxy(msg.sender, _from, _to, _value);
    |        
    |        if(error == 0){
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(96)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProxyContract':
    |        if (!proxyWorking) { return false;}
    |        
  > |        uint error =  tokenContract.approveFromProxy(msg.sender, _spender, _value);
    |        
    |        if(error == 0){
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(109)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ProxyContract':
    |
    |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
  > |        return tokenContract.allowance(_owner, _spender);
    |    } 
    |    
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(120)

[33mWarning[0m for UnrestrictedWrite in contract 'ProxyContract':
    |        if (msg.sender != curator) { return 1;}
    |        
  > |        tokenContract = IToken(_tokenAddress);
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'ProxyContract':
    |        if (msg.sender != curator) { return 1;}
    |        
  > |        proxyManagementAddress = _proxyManagementAddress;
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'ProxyContract':
    |        if (msg.sender != curator) { return 1; }       
    |        
  > |        proxyWorking = !proxyWorking;
    |        return 0;
    |
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(140)

[33mWarning[0m for UnrestrictedWrite in contract 'ProxyContract':
    |        if( msg.sender != dev) {return 1;}
    |     
  > |        curator = _curatorAddress;
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x238e2854ded65f30c9c7765cf26cc882949323d7.sol(148)


