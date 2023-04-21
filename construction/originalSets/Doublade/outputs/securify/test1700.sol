Processing contract: /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol:PiperToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    |
    |//import "./Receiver_Interface.sol";
  > | contract ContractReceiver {
    |     
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    
    |    
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |      TKN memory tkn;
    |      tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    |
    |//import "./Receiver_Interface.sol";
  > | contract ContractReceiver {
    |     
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(4)

[33mWarning[0m for DAOConstantGas in contract 'PiperToken':
    |      balances[msg.sender]=safeAdd(balances[msg.sender],safeMul(msg.value,exchange));
    |      totalSupply=safeAdd(totalSupply,safeMul(msg.value,exchange)); // increase the supply
  > |      admin.transfer(address(this).balance);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(117)

[33mWarning[0m for LockedEther in contract 'PiperToken':
    |}
    | 
  > |contract PiperToken is ERC223, SafeMath {
    |
    |  mapping(address => uint) balances;
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(78)

[31mViolation[0m for TODAmount in contract 'PiperToken':
    |      balances[msg.sender]=safeAdd(balances[msg.sender],safeMul(msg.value,exchange));
    |      totalSupply=safeAdd(totalSupply,safeMul(msg.value,exchange)); // increase the supply
  > |      admin.transfer(address(this).balance);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(117)

[33mWarning[0m for TODReceiver in contract 'PiperToken':
    |      balances[msg.sender]=safeAdd(balances[msg.sender],safeMul(msg.value,exchange));
    |      totalSupply=safeAdd(totalSupply,safeMul(msg.value,exchange)); // increase the supply
  > |      admin.transfer(address(this).balance);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(117)

[33mWarning[0m for UnhandledException in contract 'PiperToken':
    |      balances[msg.sender]=safeAdd(balances[msg.sender],safeMul(msg.value,exchange));
    |      totalSupply=safeAdd(totalSupply,safeMul(msg.value,exchange)); // increase the supply
  > |      admin.transfer(address(this).balance);
    |  }
    |  
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(117)

[33mWarning[0m for UnhandledException in contract 'PiperToken':
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(135)

[33mWarning[0m for UnhandledException in contract 'PiperToken':
    |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value, _data);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(196)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PiperToken':
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(135)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PiperToken':
    |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value, _data);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(196)

[31mViolation[0m for UnrestrictedWrite in contract 'PiperToken':
    |      if(block.timestamp>endICO)revert();
    |      balances[msg.sender]=safeAdd(balances[msg.sender],safeMul(msg.value,exchange));
  > |      totalSupply=safeAdd(totalSupply,safeMul(msg.value,exchange)); // increase the supply
    |      admin.transfer(address(this).balance);
    |  }
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(116)

[31mViolation[0m for UnrestrictedWrite in contract 'PiperToken':
    |        if (balanceOf(msg.sender) < _value) revert();
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(134)

[31mViolation[0m for UnrestrictedWrite in contract 'PiperToken':
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    Transfer(msg.sender, _to, _value, _data);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(185)

[31mViolation[0m for UnrestrictedWrite in contract 'PiperToken':
    |    if (balanceOf(msg.sender) < _value) revert();
    |    balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
    |    receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(194)

[33mWarning[0m for UnrestrictedWrite in contract 'PiperToken':
    |      
    |      if(block.timestamp>endICO)revert();
  > |      balances[msg.sender]=safeAdd(balances[msg.sender],safeMul(msg.value,exchange));
    |      totalSupply=safeAdd(totalSupply,safeMul(msg.value,exchange)); // increase the supply
    |      admin.transfer(address(this).balance);
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(115)

[33mWarning[0m for UnrestrictedWrite in contract 'PiperToken':
    |    if(isContract(_to)) {
    |        if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'PiperToken':
    |  function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(184)

[33mWarning[0m for UnrestrictedWrite in contract 'PiperToken':
    |  function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |    balances[_to] = safeAdd(balanceOf(_to), _value);
    |    ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(193)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | 
    | /* https://github.com/LykkeCity/EthereumApiDotNetCore/blob/master/src/ContractBuilder/contracts/token/SafeMath.sol */
  > |contract SafeMath {
    |    uint256 constant public MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    | /* https://github.com/LykkeCity/EthereumApiDotNetCore/blob/master/src/ContractBuilder/contracts/token/SafeMath.sol */
    |contract SafeMath {
  > |    uint256 constant public MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  at /home/jiaming/mavs_srcs/contract@0x6c2fa6691b237c9e453926d8d484d4c5ab635db5.sol(58)


