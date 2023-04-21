Processing contract: /home/jiaming/mavs_srcs/contract@0xec8da70adbaea0379744a26ed18b4616c02f0fc5.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0xec8da70adbaea0379744a26ed18b4616c02f0fc5.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0xec8da70adbaea0379744a26ed18b4616c02f0fc5.sol:PeekePrivateTokenCoupon
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xec8da70adbaea0379744a26ed18b4616c02f0fc5.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'PeekePrivateTokenCoupon':
    | **/
    | 
  > |contract PeekePrivateTokenCoupon is ERC223 {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0xec8da70adbaea0379744a26ed18b4616c02f0fc5.sol(27)

[33mWarning[0m for UnhandledException in contract 'PeekePrivateTokenCoupon':
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver reciever = ContractReceiver(_to);
  > |        reciever.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value);
    |        emit ERC223Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xec8da70adbaea0379744a26ed18b4616c02f0fc5.sol(110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'PeekePrivateTokenCoupon':
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver reciever = ContractReceiver(_to);
  > |        reciever.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value);
    |        emit ERC223Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xec8da70adbaea0379744a26ed18b4616c02f0fc5.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'PeekePrivateTokenCoupon':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xec8da70adbaea0379744a26ed18b4616c02f0fc5.sol(97)

[33mWarning[0m for UnrestrictedWrite in contract 'PeekePrivateTokenCoupon':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) revert();
  > |        balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |        balances[_to] = balanceOf(_to).add(_value);
    |        ContractReceiver reciever = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0xec8da70adbaea0379744a26ed18b4616c02f0fc5.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'PeekePrivateTokenCoupon':
    |    function burn() public {
    |        uint256 tokens = balances[msg.sender];
  > |        balances[msg.sender] = 0;
    |        totalSupply = totalSupply.sub(tokens);
    |        emit Burn(msg.sender, tokens);
  at /home/jiaming/mavs_srcs/contract@0xec8da70adbaea0379744a26ed18b4616c02f0fc5.sol(119)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |  /**
    |  * @dev Multiplies two numbers, throws on overflow.
  at /home/jiaming/mavs_srcs/contract@0xec8da70adbaea0379744a26ed18b4616c02f0fc5.sol(135)


