Processing contract: /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol:BitUnits
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol:ERC223
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol:ERC223Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[31mViolation[0m for DAOConstantGas in contract 'BitUnits':
    |    if (purchasedAmount > balances[0x0]) { revert(); } // too much ETC sent
    |
  > |    treasury.transfer(msg.value);
    |    balances[0x0] = balances[0x0].sub(purchasedAmount);
    |    balances[msg.sender] = balances[msg.sender].add(purchasedAmount);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(214)

[33mWarning[0m for TODAmount in contract 'BitUnits':
    |    if (purchasedAmount > balances[0x0]) { revert(); } // too much ETC sent
    |
  > |    treasury.transfer(msg.value);
    |    balances[0x0] = balances[0x0].sub(purchasedAmount);
    |    balances[msg.sender] = balances[msg.sender].add(purchasedAmount);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(214)

[33mWarning[0m for TODReceiver in contract 'BitUnits':
    |    if (purchasedAmount > balances[0x0]) { revert(); } // too much ETC sent
    |
  > |    treasury.transfer(msg.value);
    |    balances[0x0] = balances[0x0].sub(purchasedAmount);
    |    balances[msg.sender] = balances[msg.sender].add(purchasedAmount);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(214)

[33mWarning[0m for UnhandledException in contract 'BitUnits':
    |    balances[_to] = balanceOf(_to).add(_value);
    |    ContractReceiver reciever = ContractReceiver(_to);
  > |    reciever.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value);
    |    ERC223Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(106)

[33mWarning[0m for UnhandledException in contract 'BitUnits':
    |    if (purchasedAmount > balances[0x0]) { revert(); } // too much ETC sent
    |
  > |    treasury.transfer(msg.value);
    |    balances[0x0] = balances[0x0].sub(purchasedAmount);
    |    balances[msg.sender] = balances[msg.sender].add(purchasedAmount);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(214)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'BitUnits':
    |    balances[_to] = balanceOf(_to).add(_value);
    |    ContractReceiver reciever = ContractReceiver(_to);
  > |    reciever.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value);
    |    ERC223Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUnits':
    |  function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |    balances[_to] = balanceOf(_to).add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUnits':
    |  function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |    balances[_to] = balanceOf(_to).add(_value);
    |    ContractReceiver reciever = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'BitUnits':
    |    treasury.transfer(msg.value);
    |    balances[0x0] = balances[0x0].sub(purchasedAmount);
  > |    balances[msg.sender] = balances[msg.sender].add(purchasedAmount);
    |
    |    emit Transfer(0x0, msg.sender, purchasedAmount);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(216)

[33mWarning[0m for LockedEther in contract 'ERC223Token':
    |}
    |
  > |contract ERC223Token is ERC223 {
    |  using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(22)

[33mWarning[0m for UnhandledException in contract 'ERC223Token':
    |    balances[_to] = balanceOf(_to).add(_value);
    |    ContractReceiver reciever = ContractReceiver(_to);
  > |    reciever.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value);
    |    ERC223Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(106)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC223Token':
    |    balances[_to] = balanceOf(_to).add(_value);
    |    ContractReceiver reciever = ContractReceiver(_to);
  > |    reciever.tokenFallback(msg.sender, _value, _data);
    |    Transfer(msg.sender, _to, _value);
    |    ERC223Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(106)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |  function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |    balances[_to] = balanceOf(_to).add(_value);
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(93)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC223Token':
    |  function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |    if (balanceOf(msg.sender) < _value) revert();
  > |    balances[msg.sender] = balanceOf(msg.sender).sub(_value);
    |    balances[_to] = balanceOf(_to).add(_value);
    |    ContractReceiver reciever = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(103)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that throw on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x5b54240612a83d34e89c141fd2f8d399349a9490.sol(124)


