Processing contract: /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol:IProxyManagement
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol:ITokenRecipient
Processing contract: /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol:NeterContract
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'IProxyManagement':
    |pragma solidity ^0.4.8;
    |
  > |contract IProxyManagement { 
    |    function isProxyLegit(address _address) returns (bool){}
    |    function raiseTransferEvent(address _from, address _to, uint _ammount){}
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(3)

[33mWarning[0m for LockedEther in contract 'NeterContract':
    |}
    |
  > |contract NeterContract {
    |    
    |  
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(14)

[33mWarning[0m for UnhandledException in contract 'NeterContract':
    |
    |    function transferViaProxy(address _source, address _to, uint256 _amount) returns (uint error){
  > |        if (!proxyManagementContract.isProxyLegit(msg.sender)) { return 1; }
    |
    |        if (balances[_source] < _amount) {return 55;}
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(86)

[33mWarning[0m for UnhandledException in contract 'NeterContract':
    |        balances[_to] += _amount;
    |
  > |        if (msg.sender == proxyManagementContract.dedicatedProxyAddress()){
    |            createTransferEvent(false, _source, _to, _amount); 
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(95)

[33mWarning[0m for UnhandledException in contract 'NeterContract':
    |    
    |    function transferFromViaProxy(address _source, address _from, address _to, uint256 _amount) returns (uint error) {
  > |        if (!proxyManagementContract.isProxyLegit(msg.sender)){ return 1; }
    |
    |        if (balances[_from] < _amount) {return 55;}
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(104)

[33mWarning[0m for UnhandledException in contract 'NeterContract':
    |        allowed[_from][_source] -= _amount;
    |
  > |        if (msg.sender == proxyManagementContract.dedicatedProxyAddress()){
    |            createTransferEvent(false, _source, _to, _amount); 
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(115)

[33mWarning[0m for UnhandledException in contract 'NeterContract':
    |    
    |    function approveFromProxy(address _source, address _spender, uint256 _value) returns (uint error) {
  > |        if (!proxyManagementContract.isProxyLegit(msg.sender)){ return 1; }
    |
    |        allowed[_source][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(124)

[33mWarning[0m for UnhandledException in contract 'NeterContract':
    |
    |        allowed[_source][_spender] = _value;
  > |        if (msg.sender == proxyManagementContract.dedicatedProxyAddress()){
    |            createApprovalEvent(false, _source, _spender, _value);
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(127)

[33mWarning[0m for UnhandledException in contract 'NeterContract':
    |        allowed[msg.sender][_spender] = _value;
    |        ITokenRecipient spender = ITokenRecipient(_spender);
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(209)

[33mWarning[0m for UnhandledException in contract 'NeterContract':
    |    function createTransferEvent(bool _relayEvent, address _from, address _to, uint256 _value) internal {
    |        if (_relayEvent){
  > |            proxyManagementContract.raiseTransferEvent(_from, _to, _value);
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(215)

[33mWarning[0m for UnhandledException in contract 'NeterContract':
    |    function createApprovalEvent(bool _relayEvent, address _sender, address _spender, uint _value) internal {
    |        if (_relayEvent){
  > |            proxyManagementContract.raiseApprovalEvent(_sender, _spender, _value);
    |        }
    |        Approval(_sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(222)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NeterContract':
    |
    |    function transferViaProxy(address _source, address _to, uint256 _amount) returns (uint error){
  > |        if (!proxyManagementContract.isProxyLegit(msg.sender)) { return 1; }
    |
    |        if (balances[_source] < _amount) {return 55;}
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(86)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NeterContract':
    |        balances[_to] += _amount;
    |
  > |        if (msg.sender == proxyManagementContract.dedicatedProxyAddress()){
    |            createTransferEvent(false, _source, _to, _amount); 
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(95)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NeterContract':
    |    
    |    function transferFromViaProxy(address _source, address _from, address _to, uint256 _amount) returns (uint error) {
  > |        if (!proxyManagementContract.isProxyLegit(msg.sender)){ return 1; }
    |
    |        if (balances[_from] < _amount) {return 55;}
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NeterContract':
    |        allowed[_from][_source] -= _amount;
    |
  > |        if (msg.sender == proxyManagementContract.dedicatedProxyAddress()){
    |            createTransferEvent(false, _source, _to, _amount); 
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(115)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NeterContract':
    |    
    |    function approveFromProxy(address _source, address _spender, uint256 _value) returns (uint error) {
  > |        if (!proxyManagementContract.isProxyLegit(msg.sender)){ return 1; }
    |
    |        allowed[_source][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(124)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NeterContract':
    |
    |        allowed[_source][_spender] = _value;
  > |        if (msg.sender == proxyManagementContract.dedicatedProxyAddress()){
    |            createApprovalEvent(false, _source, _spender, _value);
    |        }else{
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(127)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NeterContract':
    |        allowed[msg.sender][_spender] = _value;
    |        ITokenRecipient spender = ITokenRecipient(_spender);
  > |        spender.receiveApproval(msg.sender, _value, this, _extraData);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(209)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NeterContract':
    |    function createTransferEvent(bool _relayEvent, address _from, address _to, uint256 _value) internal {
    |        if (_relayEvent){
  > |            proxyManagementContract.raiseTransferEvent(_from, _to, _value);
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(215)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'NeterContract':
    |    function createApprovalEvent(bool _relayEvent, address _sender, address _spender, uint _value) internal {
    |        if (_relayEvent){
  > |            proxyManagementContract.raiseApprovalEvent(_sender, _spender, _value);
    |        }
    |        Approval(_sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(222)

[31mViolation[0m for UnrestrictedWrite in contract 'NeterContract':
    |        if (lockdown) {return 55;}
    |
  > |        balances[_source] -= _amount;
    |        balances[_to] += _amount;
    |
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(92)

[31mViolation[0m for UnrestrictedWrite in contract 'NeterContract':
    |
    |        balances[_source] -= _amount;
  > |        balances[_to] += _amount;
    |
    |        if (msg.sender == proxyManagementContract.dedicatedProxyAddress()){
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(93)

[31mViolation[0m for UnrestrictedWrite in contract 'NeterContract':
    |        if (_amount > allowed[_from][_source]) {return 55;}
    |
  > |        balances[_from] -= _amount;
    |        balances[_to] += _amount;
    |        allowed[_from][_source] -= _amount;
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(111)

[31mViolation[0m for UnrestrictedWrite in contract 'NeterContract':
    |
    |        balances[_from] -= _amount;
  > |        balances[_to] += _amount;
    |        allowed[_from][_source] -= _amount;
    |
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(112)

[31mViolation[0m for UnrestrictedWrite in contract 'NeterContract':
    |        balances[_from] -= _amount;
    |        balances[_to] += _amount;
  > |        allowed[_from][_source] -= _amount;
    |
    |        if (msg.sender == proxyManagementContract.dedicatedProxyAddress()){
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(113)

[31mViolation[0m for UnrestrictedWrite in contract 'NeterContract':
    |        if (!proxyManagementContract.isProxyLegit(msg.sender)){ return 1; }
    |
  > |        allowed[_source][_spender] = _value;
    |        if (msg.sender == proxyManagementContract.dedicatedProxyAddress()){
    |            createApprovalEvent(false, _source, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |        if(lockdown) { return 55; }
    |
  > |        balances[msg.sender] -= _amount;
    |        balances[_to] += _amount;
    |        createTransferEvent(true, msg.sender, _to, _amount);              
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |        balances[_to] += _amount;
    |        createTransferEvent(true, _from, _to, _amount);
  > |        allowed[_from][msg.sender] -= _amount;
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(71)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |
    |    function approve(address _spender, uint256 _value) returns (uint error) {
  > |        allowed[msg.sender][_spender] = _value;
    |        createApprovalEvent(true, msg.sender, _spender, _value);
    |        return 0;
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(76)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |        if(totalSupply + _amount < totalSupply) { return 55; }
    |
  > |        totalSupply += _amount;
    |        balances[_destination] += _amount;
    |        Create(_destination, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(141)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |
    |        totalSupply += _amount;
  > |        balances[_destination] += _amount;
    |        Create(_destination, _amount);
    |        createTransferEvent(true, 0x0, _destination, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |        if (balances[_destination] < _amount) { return 55;} 
    |
  > |        totalSupply -= _amount;
    |        balances[_destination] -= _amount;
    |        Destroy(_destination, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |
    |        totalSupply -= _amount;
  > |        balances[_destination] -= _amount;
    |        Destroy(_destination, _amount);
    |        createTransferEvent(true, _destination, 0x0, _amount);
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(154)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |        if( msg.sender != dev) {return 1;}
    |     
  > |        curator = _curatorAddress;
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(163)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |        if (msg.sender != curator) { return 1;}
    |        
  > |        creationAddress = _contractAddress;
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(170)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |        if (msg.sender != curator) { return 1;}
    |        
  > |        destructionAddress = _contractAddress;
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(177)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |        if (msg.sender != curator) { return 1;}
    |        
  > |        proxyManagementContract = IProxyManagement(_contractAddress);
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |        if (msg.sender != curator && msg.sender != dev) { return 1; }
    |        
  > |        lockdown = !lockdown;
    |        return 0;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(191)

[33mWarning[0m for UnrestrictedWrite in contract 'NeterContract':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        ITokenRecipient spender = ITokenRecipient(_spender);
    |        spender.receiveApproval(msg.sender, _value, this, _extraData);
  at /home/jiaming/mavs_srcs/contract@0xf9dd354be4a35ba3f44f8b51564e9d5110b16357.sol(207)


