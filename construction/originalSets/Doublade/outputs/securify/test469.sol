Processing contract: /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol:ClearCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol:IERC20
[33mWarning[0m for LockedEther in contract 'ClearCoin':
    |}
    |
  > |contract ClearCoin is IERC20 {
    |
    |  uint public constant _totalSupply = 100000000000000000;
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(14)

[31mViolation[0m for MissingInputValidation in contract 'ClearCoin':
    |  }
    |
  > |  function balanceOf(address _owner) constant returns (uint256 balance) {
    |    return balances[_owner];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'ClearCoin':
    |  }
    |
  > |  function transfer(address _to, uint256 _value) returns (bool success) {
    |    require(
    |      balances[msg.sender] >= _value
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'ClearCoin':
    |  }
    |
  > |  function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |    require(
    |      allowed[_from][msg.sender] >= _value
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(48)

[31mViolation[0m for MissingInputValidation in contract 'ClearCoin':
    |  }
    |
  > |  function approve(address _spender, uint256 _value) returns (bool success) {
    |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(61)

[31mViolation[0m for MissingInputValidation in contract 'ClearCoin':
    |  }
    |
  > |  function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |    return allowed[_owner][_spender];
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(67)

[33mWarning[0m for MissingInputValidation in contract 'ClearCoin':
    |contract ClearCoin is IERC20 {
    |
  > |  uint public constant _totalSupply = 100000000000000000;
    |
    |  string public constant symbol ="XCLR";
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(16)

[33mWarning[0m for MissingInputValidation in contract 'ClearCoin':
    |  uint public constant _totalSupply = 100000000000000000;
    |
  > |  string public constant symbol ="XCLR";
    |  string public constant name = "ClearCoin";
    |  uint8 public constant decimals = 8;
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(18)

[33mWarning[0m for MissingInputValidation in contract 'ClearCoin':
    |
    |  string public constant symbol ="XCLR";
  > |  string public constant name = "ClearCoin";
    |  uint8 public constant decimals = 8;
    |
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(19)

[33mWarning[0m for MissingInputValidation in contract 'ClearCoin':
    |  string public constant symbol ="XCLR";
    |  string public constant name = "ClearCoin";
  > |  uint8 public constant decimals = 8;
    |
    |  mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(20)

[33mWarning[0m for MissingInputValidation in contract 'ClearCoin':
    |  }
    |
  > |  function totalSupply() constant returns (uint256 totalSupply) {
    |    return _totalSupply;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(29)

[31mViolation[0m for UnrestrictedWrite in contract 'ClearCoin':
    |    );
    |    balances[msg.sender] -= _value;
  > |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(43)

[31mViolation[0m for UnrestrictedWrite in contract 'ClearCoin':
    |      && _value > 0
    |    );
  > |    balances[_from] -= _value;
    |    balances[_to] += _value;
    |    allowed[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(54)

[31mViolation[0m for UnrestrictedWrite in contract 'ClearCoin':
    |    );
    |    balances[_from] -= _value;
  > |    balances[_to] += _value;
    |    allowed[_from][msg.sender] -= _value;
    |    Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(55)

[33mWarning[0m for UnrestrictedWrite in contract 'ClearCoin':
    |      && _value > 0
    |    );
  > |    balances[msg.sender] -= _value;
    |    balances[_to] += _value;
    |    Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(42)

[33mWarning[0m for UnrestrictedWrite in contract 'ClearCoin':
    |    balances[_from] -= _value;
    |    balances[_to] += _value;
  > |    allowed[_from][msg.sender] -= _value;
    |    Transfer(_from, _to, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(56)

[33mWarning[0m for UnrestrictedWrite in contract 'ClearCoin':
    |
    |  function approve(address _spender, uint256 _value) returns (bool success) {
  > |    allowed[msg.sender][_spender] = _value;
    |    Approval(msg.sender, _spender, _value);
    |    return true;
  at /home/jiaming/mavs_srcs/contract@0x1e26b3d07e57f453cae30f7ddd2f945f5bf3ef33.sol(62)


