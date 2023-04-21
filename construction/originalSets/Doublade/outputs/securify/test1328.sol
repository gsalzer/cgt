Processing contract: /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol:Multiplexer
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAOConstantGas in contract 'Multiplexer':
    |		for (uint8 i = 0; i < _to.length; i++) {
    |			afterValue = afterValue + _value[i];
  > |			assert(_to[i].send(_value[i]));
    |		}
    |		// send back remaining value to sender
  at /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol(23)

[33mWarning[0m for DAOConstantGas in contract 'Multiplexer':
    |		uint256 remainingValue = beforeValue - afterValue;
    |		if (remainingValue > 0) {
  > |			assert(msg.sender.send(remainingValue));
    |		}
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol(28)

[33mWarning[0m for LockedEther in contract 'Multiplexer':
    |/// :repository https://github.com/DigixGlobal/multiplexer
    |
  > |contract Multiplexer {
    |
    |	function sendEth(address[] _to, uint256[] _value) payable returns (bool _success) {
  at /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol(11)

[31mViolation[0m for MissingInputValidation in contract 'Multiplexer':
    |contract Multiplexer {
    |
  > |	function sendEth(address[] _to, uint256[] _value) payable returns (bool _success) {
    |		// input validation
    |		assert(_to.length == _value.length);
  at /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'Multiplexer':
    |	}
    |
  > |	function sendErc20(address _tokenAddress, address[] _to, uint256[] _value) returns (bool _success) {
    |		// input validation
    |		assert(_to.length == _value.length);
  at /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol(33)

[33mWarning[0m for TODReceiver in contract 'Multiplexer':
    |		uint256 remainingValue = beforeValue - afterValue;
    |		if (remainingValue > 0) {
  > |			assert(msg.sender.send(remainingValue));
    |		}
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol(28)

[33mWarning[0m for UnhandledException in contract 'Multiplexer':
    |		for (uint8 i = 0; i < _to.length; i++) {
    |			afterValue = afterValue + _value[i];
  > |			assert(_to[i].send(_value[i]));
    |		}
    |		// send back remaining value to sender
  at /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol(23)

[33mWarning[0m for UnhandledException in contract 'Multiplexer':
    |		uint256 remainingValue = beforeValue - afterValue;
    |		if (remainingValue > 0) {
  > |			assert(msg.sender.send(remainingValue));
    |		}
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol(28)

[33mWarning[0m for UnhandledException in contract 'Multiplexer':
    |		// loop through to addresses and send value
    |		for (uint8 i = 0; i < _to.length; i++) {
  > |			assert(token.transferFrom(msg.sender, _to[i], _value[i]) == true);
    |		}
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol(41)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'Multiplexer':
    |		// loop through to addresses and send value
    |		for (uint8 i = 0; i < _to.length; i++) {
  > |			assert(token.transferFrom(msg.sender, _to[i], _value[i]) == true);
    |		}
    |		return true;
  at /home/jiaming/mavs_srcs/contract@0x53a30b07bea5b8e9b5f710e038867a1531b0b5dc.sol(41)


