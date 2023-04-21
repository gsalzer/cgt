Processing contract: /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol:AkiCoin
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol:ERC20CompatibleToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol:ERC223Interface
Processing contract: /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol:ERC223ReceivingContract
Processing contract: /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'AkiCoin':
    | * @title Based on the reference implementation of the ERC223 standard token.
    | */
  > |contract AkiCoin is ERC223Interface, ERC20CompatibleToken {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(178)

[33mWarning[0m for UnhandledException in contract 'AkiCoin':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(110)

[33mWarning[0m for UnhandledException in contract 'AkiCoin':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(224)

[33mWarning[0m for UnhandledException in contract 'AkiCoin':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(251)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AkiCoin':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AkiCoin':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, _data);
    |        }
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(224)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'AkiCoin':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(251)

[33mWarning[0m for UnrestrictedWrite in contract 'AkiCoin':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'AkiCoin':
    |   */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'AkiCoin':
    |   */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'AkiCoin':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'AkiCoin':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(160)

[33mWarning[0m for UnrestrictedWrite in contract 'AkiCoin':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        if(codeLength>0) {
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(220)

[33mWarning[0m for UnrestrictedWrite in contract 'AkiCoin':
    |        }
    |
  > |        balances[msg.sender] = balances[msg.sender].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
    |        if(codeLength>0) {
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(247)

[33mWarning[0m for LockedEther in contract 'ERC20CompatibleToken':
    |}
    |
  > |contract ERC20CompatibleToken {
    |    using SafeMath for uint;
    |
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(78)

[33mWarning[0m for UnhandledException in contract 'ERC20CompatibleToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(110)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC20CompatibleToken':
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  > |            receiver.tokenFallback(msg.sender, _value, empty);
    |        }
    |
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(110)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20CompatibleToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        if(codeLength>0) {
    |            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20CompatibleToken':
    |   */
    |    function approve(address _spender, uint256 _value) public returns (bool) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20CompatibleToken':
    |   */
    |    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
  > |        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(150)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20CompatibleToken':
    |        uint oldValue = allowed[msg.sender][_spender];
    |        if (_subtractedValue > oldValue) {
  > |            allowed[msg.sender][_spender] = 0;
    |        } else {
    |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC20CompatibleToken':
    |            allowed[msg.sender][_spender] = 0;
    |        } else {
  > |            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
    |        }
    |        Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(160)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Math operations with safety checks
    | */
  > |library SafeMath {
    |  function mul(uint a, uint b) internal returns (uint) {
    |    uint c = a * b;
  at /home/jiaming/mavs_srcs/contract@0x298efc582f84bb5cc2c45f8882440315e37a76d4.sol(30)


