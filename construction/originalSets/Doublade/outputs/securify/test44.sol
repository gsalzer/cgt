Processing contract: /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol:MyDFSToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol:StandardToken
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    |}
    |
  > |contract ContractReceiver {
    |     
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(62)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    
    |    
  > |    function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |      TKN memory tkn;
    |      tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(72)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    |}
    |
  > |contract ContractReceiver {
    |     
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(62)

[33mWarning[0m for LockedEther in contract 'MyDFSToken':
    |}
    |
  > |contract MyDFSToken is StandardToken {
    |
    |    string public name = "MyDFS Token";
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(251)

[33mWarning[0m for UnhandledException in contract 'MyDFSToken':
    |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(104)

[33mWarning[0m for UnhandledException in contract 'MyDFSToken':
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(165)

[33mWarning[0m for UnhandledException in contract 'MyDFSToken':
    |        if (isContract(_to)) {
    |            ContractReceiver receiver = ContractReceiver(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        Transfer(_from, _to, _value, empty);
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(189)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyDFSToken':
    |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
  > |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |            Transfer(msg.sender, _to, _value, _data);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(104)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyDFSToken':
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(165)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'MyDFSToken':
    |        if (isContract(_to)) {
    |            ContractReceiver receiver = ContractReceiver(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        Transfer(_from, _to, _value, empty);
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(189)

[33mWarning[0m for UnrestrictedWrite in contract 'MyDFSToken':
    |        if(isContract(_to)) {
    |            if (balanceOf(msg.sender) < _value) revert();
  > |            balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |            balances[_to] = balanceOf(_to).add(_value);
    |            assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(102)

[33mWarning[0m for UnrestrictedWrite in contract 'MyDFSToken':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(153)

[33mWarning[0m for UnrestrictedWrite in contract 'MyDFSToken':
    |      function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(162)

[33mWarning[0m for UnrestrictedWrite in contract 'MyDFSToken':
    |        balances[_to] = balanceOf(_to).add(_value);
    |        balances[_from] = balanceOf(_from).sub(_value);
  > |        allowed[_from][msg.sender] = allowance(_from, msg.sender).sub(_value);
    |        if (isContract(_to)) {
    |            ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(186)

[33mWarning[0m for UnrestrictedWrite in contract 'MyDFSToken':
    |        returns (bool) 
    |    {
  > |        allowed[msg.sender][spender] = allowed[msg.sender][spender].add(value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(205)

[33mWarning[0m for UnrestrictedWrite in contract 'MyDFSToken':
    |        returns (bool) 
    |    {
  > |        allowed[msg.sender][spender] = allowed[msg.sender][spender].add(value);
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(219)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |library SafeMath {
    |  function mul(uint a, uint b) internal pure returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x0298d4d15bc4294386b05e5185d3833fc76924b3.sol(3)


