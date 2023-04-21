Processing contract: /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol:BCHC
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol:Token
[33mWarning[0m for LockedEther in contract 'BCHC':
    |}
    |
  > |contract BCHC is StandardToken {
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(77)

[31mViolation[0m for MissingInputValidation in contract 'BCHC':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'BCHC':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'BCHC':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'BCHC':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'BCHC':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'BCHC':
    |contract Token {
    |    
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'BCHC':
    |    Some wallets/interfaces might not even bother to look at this information.
    |    */
  > |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. 
    |    string public symbol;                 //An identifier: eg SBX
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(86)

[33mWarning[0m for MissingInputValidation in contract 'BCHC':
    |    */
    |    string public name;                   //fancy name: eg Simon Bucks
  > |    uint8 public decimals;                //How many decimals to show. ie. 
    |    string public symbol;                 //An identifier: eg SBX
    |    function BCHC() {
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'BCHC':
    |    string public name;                   //fancy name: eg Simon Bucks
    |    uint8 public decimals;                //How many decimals to show. ie. 
  > |    string public symbol;                 //An identifier: eg SBX
    |    function BCHC() {
    |        balances[msg.sender] = 1000000000000000000;               // Give the creator all initial tokens
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(88)

[33mWarning[0m for UnrestrictedWrite in contract 'BCHC':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'BCHC':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'BCHC':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(64)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |.*/
    |
  > |contract StandardToken is Token {
    |
    |    function transfer(address _to, uint256 _value) returns (bool success) {
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |contract StandardToken is Token {
    |
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //Default assumes totalSupply can't be over max (2^256 - 1).
    |        //If your token leaves out totalSupply and can issue more tokens as time goes on, you need to check if it doesn't wrap.
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(34)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns (bool success) {
    |        //same as above. Replace this line with the following if you want to protect against wrapping uints.
    |        //if (balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(47)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(69)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract Token {
    |    
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(7)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //if (balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]) {
    |        if (balances[msg.sender] >= _value && _value > 0) {
  > |            balances[msg.sender] -= _value;
    |            balances[_to] += _value;
    |            Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |            balances[_to] += _value;
    |            balances[_from] -= _value;
  > |            allowed[_from][msg.sender] -= _value;
    |            Transfer(_from, _to, _value);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(53)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xad2ad60d901dad572f3aa3934b0504f7951fadb3.sol(64)


