Processing contract: /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol:ValueToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ValueToken':
    |pragma solidity ^0.4.14;
    |
  > |contract ValueToken {
    |    string public symbol;
    |    string public name;
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |
    |    // What is the balance of a particular account?
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(41)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    // deliberately authorized the sender of the message via some mechanism; we propose
    |    // these standardized APIs for approval:
  > |    function transferFrom(
    |        address _from,
    |        address _to,
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    // Allow _spender to withdraw from your account, multiple times, up to the _value amount.
    |    // If this function is called again it overwrites the current allowance with _value.
  > |    function approve(address _spender, uint256 _amount) returns (bool success) {
    |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(86)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(92)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function transferOwnership(address _newOwner) onlyOwner {
    |        owner = _newOwner;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(102)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function transferCentralBanking(address _newCentralBank) onlyOwner {
    |        centralBank = _newCentralBank;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(106)

[31mViolation[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function updateValueAndMint(uint256 _newValue, uint256 _toMint) onlyCentralBank {
    |        require(_newValue >= 0);
    |        _value = _newValue;
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(136)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |
    |contract ValueToken {
  > |    string public symbol;
    |    string public name;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |contract ValueToken {
    |    string public symbol;
  > |    string public name;
    |    uint8 public decimals;
    |    uint256 _totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    string public symbol;
    |    string public name;
  > |    uint8 public decimals;
    |    uint256 _totalSupply;
    |    uint256 _value;
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |
    |    // Owner of this contract
  > |    address public owner;
    |    address public centralBank;
    |
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(11)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    // Owner of this contract
    |    address public owner;
  > |    address public centralBank;
    |
    |    // Balances for each account
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(12)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function totalSupply() constant returns (uint256 supply) {
    |        return _totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function value() constant returns (uint256 returnValue) {
    |        return _value;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function updateValue(uint256 _newValue) onlyCentralBank {
    |        require(_newValue >= 0);
    |        _value = _newValue;
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(131)

[33mWarning[0m for MissingInputValidation in contract 'ValueToken':
    |    }
    |
  > |    function updateValueAndBurn(uint256 _newValue, uint256 _toBurn) onlyCentralBank {
    |        require(_newValue >= 0);
    |        _value = _newValue;
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(142)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |            && _amount > 0
    |            && balances[_to] + _amount > balances[_to]) {
  > |            balances[msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(msg.sender, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |            && balances[_to] + _amount > balances[_to]) {
    |            balances[_from] -= _amount;
  > |            allowed[_from][msg.sender] -= _amount;
    |            balances[_to] += _amount;
    |            Transfer(_from, _to, _amount);
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |    // If this function is called again it overwrites the current allowance with _value.
    |    function approve(address _spender, uint256 _amount) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _amount;
    |        Approval(msg.sender, _spender, _amount);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(87)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |
    |    function transferOwnership(address _newOwner) onlyOwner {
  > |        owner = _newOwner;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(103)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |
    |    function transferCentralBanking(address _newCentralBank) onlyOwner {
  > |        centralBank = _newCentralBank;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(107)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |
    |    function mint(uint256 _amount) onlyCentralBank {
  > |        balances[owner] += _amount;
    |        _totalSupply += _amount;
    |        Transfer(0, this, _amount);
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(117)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |    function mint(uint256 _amount) onlyCentralBank {
    |        balances[owner] += _amount;
  > |        _totalSupply += _amount;
    |        Transfer(0, this, _amount);
    |        Transfer(this, owner, _amount);
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(118)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |    function burn(uint256 _amount) onlyCentralBank {
    |        require (balances[owner] >= _amount);
  > |        balances[owner] -= _amount;
    |        _totalSupply -= _amount;
    |        Transfer(owner, this, _amount);
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(125)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |        require (balances[owner] >= _amount);
    |        balances[owner] -= _amount;
  > |        _totalSupply -= _amount;
    |        Transfer(owner, this, _amount);
    |        Transfer(this, 0, _amount);
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(126)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |    function updateValue(uint256 _newValue) onlyCentralBank {
    |        require(_newValue >= 0);
  > |        _value = _newValue;
    |    }
    |
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(133)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |    function updateValueAndMint(uint256 _newValue, uint256 _toMint) onlyCentralBank {
    |        require(_newValue >= 0);
  > |        _value = _newValue;
    |        mint(_toMint);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(138)

[33mWarning[0m for UnrestrictedWrite in contract 'ValueToken':
    |    function updateValueAndBurn(uint256 _newValue, uint256 _toBurn) onlyCentralBank {
    |        require(_newValue >= 0);
  > |        _value = _newValue;
    |        burn(_toBurn);
    |    }
  at /home/jiaming/mavs_srcs/contract@0xfe81b2bb25c34dfb2a023d1378a5f41759973067.sol(144)


