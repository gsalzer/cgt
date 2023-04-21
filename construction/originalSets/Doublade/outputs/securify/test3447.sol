Processing contract: /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol:Brainmab
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Brainmab':
    |pragma solidity ^0.4.24;
    |
  > |contract Brainmab {
    |    string public name;
    |    string public symbol;
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(3)

[31mViolation[0m for MissingInputValidation in contract 'Brainmab':
    |    }
    |
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(23)

[31mViolation[0m for MissingInputValidation in contract 'Brainmab':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'Brainmab':
    |    }
    |
  > |    function balanceOf(address _owner) public view returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(46)

[31mViolation[0m for MissingInputValidation in contract 'Brainmab':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
    |        return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'Brainmab':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(54)

[33mWarning[0m for MissingInputValidation in contract 'Brainmab':
    |
    |contract Brainmab {
  > |    string public name;
    |    string public symbol;
    |    uint256 public totalSupply;
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'Brainmab':
    |contract Brainmab {
    |    string public name;
  > |    string public symbol;
    |    uint256 public totalSupply;
    |    uint8 public decimals;
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'Brainmab':
    |    string public name;
    |    string public symbol;
  > |    uint256 public totalSupply;
    |    uint8 public decimals;
    |
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(6)

[33mWarning[0m for MissingInputValidation in contract 'Brainmab':
    |    string public symbol;
    |    uint256 public totalSupply;
  > |    uint8 public decimals;
    |
    |    mapping (address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'Brainmab':
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'Brainmab':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            emit Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(38)

[33mWarning[0m for UnrestrictedWrite in contract 'Brainmab':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe23665542fdd22de602eab11bb4d1ddbfb07e53b.sol(55)


