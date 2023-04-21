Processing contract: /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol:OnlineSocialChainToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol:Token
[33mWarning[0m for LockedEther in contract 'OnlineSocialChainToken':
    |}
    |
  > |contract OnlineSocialChainToken is StandardToken {
    |    function () {
    |        throw;
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(45)

[31mViolation[0m for MissingInputValidation in contract 'OnlineSocialChainToken':
    |}
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'OnlineSocialChainToken':
    |        } else { return false; }
    |    }
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'OnlineSocialChainToken':
    |        } else { return false; }
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'OnlineSocialChainToken':
    |        return balances[_owner];
    |    }
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'OnlineSocialChainToken':
    |        return true;
    |    }
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(38)

[31mViolation[0m for MissingInputValidation in contract 'OnlineSocialChainToken':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'OnlineSocialChainToken':
    |pragma solidity ^0.4.3;
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'OnlineSocialChainToken':
    |        throw;
    |    }
  > |    string public name;       
    |    uint8 public decimals;
    |    string public symbol;              
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(49)

[33mWarning[0m for MissingInputValidation in contract 'OnlineSocialChainToken':
    |    }
    |    string public name;       
  > |    uint8 public decimals;
    |    string public symbol;              
    |    string public version = 'H0.1';
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(50)

[33mWarning[0m for MissingInputValidation in contract 'OnlineSocialChainToken':
    |    string public name;       
    |    uint8 public decimals;
  > |    string public symbol;              
    |    string public version = 'H0.1';
    |    function OnlineSocialChainToken(
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(51)

[33mWarning[0m for MissingInputValidation in contract 'OnlineSocialChainToken':
    |    uint8 public decimals;
    |    string public symbol;              
  > |    string public version = 'H0.1';
    |    function OnlineSocialChainToken(
    |        uint256 _initialAmount,
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(52)

[33mWarning[0m for UnhandledException in contract 'OnlineSocialChainToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(69)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'OnlineSocialChainToken':
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  > |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(69)

[33mWarning[0m for UnrestrictedWrite in contract 'OnlineSocialChainToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'OnlineSocialChainToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'OnlineSocialChainToken':
    |    }
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(34)

[33mWarning[0m for UnrestrictedWrite in contract 'OnlineSocialChainToken':
    |
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        if(!_spender.call(bytes4(bytes32(sha3("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData)) { throw; }
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(67)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    |}
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(12)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |}
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
    |            balances[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        } else { return false; }
    |    }
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
    |            balances[_to] += _value;
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(21)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        } else { return false; }
    |    }
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(30)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        return balances[_owner];
    |    }
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(33)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |        return true;
    |    }
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |pragma solidity ^0.4.3;
    |contract Token {
  > |    uint256 public totalSupply;
    |    function balanceOf(address _owner) constant returns (uint256 balance);
    |    function transfer(address _to, uint256 _value) returns (bool success);
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(3)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(15)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(25)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    }
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x112f2e6c0051d3b2d9ac64116af8e769c4ea2541.sol(34)


