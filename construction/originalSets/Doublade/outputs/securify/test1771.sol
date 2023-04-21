Processing contract: /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol:ERC223Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol:ERC223ReceivingContract
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol:UnityToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ERC223ReceivingContract':
    | */
    | 
  > |contract ERC223ReceivingContract {
    |
    |  struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'ERC223ReceivingContract':
    |   * @param _data  Transaction metadata.
    |   */
  > |  function tokenFallback(address _from, uint _value, bytes _data) public pure {
    |    TKN memory tkn;
    |    tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(71)

[33mWarning[0m for MissingInputValidation in contract 'ERC223ReceivingContract':
    | */
    | 
  > |contract ERC223ReceivingContract {
    |
    |  struct TKN {
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(55)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(9)

[33mWarning[0m for LockedEther in contract 'UnityToken':
    | */
    |
  > |contract UnityToken is ERC223Interface {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(111)

[33mWarning[0m for UnhandledException in contract 'UnityToken':
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |      TransferContract(msg.sender, _to, _value, _data);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(161)

[33mWarning[0m for UnhandledException in contract 'UnityToken':
    |    balances[_to] = balances[_to].add(_value);
    |    ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    TransferContract(msg.sender, _to, _value, _data);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(223)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnityToken':
    |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
  > |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |      TransferContract(msg.sender, _to, _value, _data);
    |      return true;
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(161)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'UnityToken':
    |    balances[_to] = balances[_to].add(_value);
    |    ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |    receiver.tokenFallback(msg.sender, _value, _data);
    |    TransferContract(msg.sender, _to, _value, _data);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(223)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |        revert();
    |
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(159)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |    if (balanceOf(msg.sender) < _value)
    |      revert();
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(209)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |    if (balanceOf(msg.sender) < _value)
    |      revert();
  > |    balances[msg.sender] = balances[msg.sender].sub(_value);
    |    balances[_to] = balances[_to].add(_value);
    |    ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |
    |  function addAllowed(address newAddress) public onlyOwner {
  > |    allowedAddresses[newAddress] = true;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(131)

[33mWarning[0m for UnrestrictedWrite in contract 'UnityToken':
    |
    |  function removeAllowed(address remAddress) public onlyOwner {
  > |    allowedAddresses[remAddress] = false;
    |  }
    |
  at /home/jiaming/mavs_srcs/contract@0x70acb336d7d4bfa8c19d9cfab5f8c5c1aa0d8dee.sol(135)


