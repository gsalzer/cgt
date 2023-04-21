Processing contract: /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol:SYLVIe
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'SYLVIe':
    |
    |// ERC20を元にしています。            url:https://github.com/ConsenSys/Tokens/blob/master/Token_Contracts/contracts/StandardToken.sol
  > |contract SYLVIe {
    |
    |  function () {
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(4)

[31mViolation[0m for MissingInputValidation in contract 'SYLVIe':
    |  }
    |
  > |  function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
    |          balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(25)

[31mViolation[0m for MissingInputValidation in contract 'SYLVIe':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |      if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |          balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'SYLVIe':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint256 balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'SYLVIe':
    |  }
    |
  > |  function approve(address _spender, uint256 _value) returns (bool success) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'SYLVIe':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'SYLVIe':
    |  }
    |
  > |  string public name = "SYLVIe";                              // トークン名
    |  uint8 public decimals = 0;                                  // 小数点以下何桁か
    |  string public symbol = "SLV";                               // トークンの単位
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'SYLVIe':
    |
    |  string public name = "SYLVIe";                              // トークン名
  > |  uint8 public decimals = 0;                                  // 小数点以下何桁か
    |  string public symbol = "SLV";                               // トークンの単位
    |  uint256 public totalSupply = 100000000;                     // 総供給量
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'SYLVIe':
    |  string public name = "SYLVIe";                              // トークン名
    |  uint8 public decimals = 0;                                  // 小数点以下何桁か
  > |  string public symbol = "SLV";                               // トークンの単位
    |  uint256 public totalSupply = 100000000;                     // 総供給量
    |  mapping (address => uint256) balances;                      // アドレスと所有トークン数のマッピング
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'SYLVIe':
    |  uint8 public decimals = 0;                                  // 小数点以下何桁か
    |  string public symbol = "SLV";                               // トークンの単位
  > |  uint256 public totalSupply = 100000000;                     // 総供給量
    |  mapping (address => uint256) balances;                      // アドレスと所有トークン数のマッピング
    |  mapping (address => mapping (address => uint256)) allowed;  // 第1引数のアドレスが第2引数のアドレスにいくらの送信を許可しているか
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(14)

[33mWarning[0m for UnrestrictedWrite in contract 'SYLVIe':
    |  function transfer(address _to, uint256 _value) returns (bool success) {
    |      if (balances[msg.sender] >= _value && _value > 0) {
  > |          balances[msg.sender] -= _value;
    |          balances[_to] += _value;
    |          Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(27)

[33mWarning[0m for UnrestrictedWrite in contract 'SYLVIe':
    |          balances[_to] += _value;
    |          balances[_from] -= _value;
  > |          allowed[_from][msg.sender] -= _value;
    |          Transfer(_from, _to, _value);
    |          return true;
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'SYLVIe':
    |
    |  function approve(address _spender, uint256 _value) returns (bool success) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x5b0cf947b24434d116373677e1c41145fa4dacb5.sol(49)


