Processing contract: /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol:HumanStandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol:StandardToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol:Token
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'HumanStandardToken':
    |.*/
    |
  > |contract HumanStandardToken is StandardToken {
    |
    |    function () {
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(166)

[33mWarning[0m for UnhandledException in contract 'HumanStandardToken':
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        approve(_spender, _value);
  > |             if(!_spender.call(bytes4(keccak256("receiveApproval(address,uint256,address,bytes)")), abi.encode(msg.sender, _value, this, _extraData))) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(202)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HumanStandardToken':
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) returns (bool success) {
    |        approve(_spender, _value);
  > |             if(!_spender.call(bytes4(keccak256("receiveApproval(address,uint256,address,bytes)")), abi.encode(msg.sender, _value, this, _extraData))) { throw; }
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(202)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |      require(_value <= balances[msg.sender]);
    |      require(_to != address(0));
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        require(_spender != address(0));
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(139)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |
    |
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(40)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |.*/
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(109)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |      require(_value <= balances[msg.sender]);
    |      require(_to != address(0));
  > |      balances[msg.sender] = balances[msg.sender].sub(_value);
    |      balances[_to] = balances[_to].add(_value);
    |      emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(114)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_from] = balances[_from].sub(_value);
    |        balances[_to] = balances[_to].add(_value);
  > |        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(128)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        require(_spender != address(0));
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(139)

[33mWarning[0m for LockedEther in contract 'Token':
    |pragma solidity ^0.4.25;
  > |contract Token {
    |
    |    /// @return total amount of tokens
  at /home/jiaming/mavs_srcs/contract@0x43abd2c4b3090eea8de02a1faf3b03a56944d9fc.sol(2)


