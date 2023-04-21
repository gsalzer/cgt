Processing contract: /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol:TTNCoin
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol:Token
[33mWarning[0m for LockedEther in contract 'TTNCoin':
    |}
    |
  > |contract TTNCoin is Token {
    |
    |    string public constant name = "TTN";                   
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(20)

[31mViolation[0m for MissingInputValidation in contract 'TTNCoin':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns 
    |    (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'TTNCoin':
    |        return true;
    |    }
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(52)

[31mViolation[0m for MissingInputValidation in contract 'TTNCoin':
    |
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success)   
    |    { 
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'TTNCoin':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];//允许_spender从_owner中转出的token数
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(64)

[33mWarning[0m for MissingInputValidation in contract 'TTNCoin':
    |pragma solidity ^0.4.16;
    |contract Token{
  > |    uint256 public totalSupply;
    |
    |    function balanceOf(address _owner) public constant returns (uint256 balance);
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(3)

[33mWarning[0m for MissingInputValidation in contract 'TTNCoin':
    |contract TTNCoin is Token {
    |
  > |    string public constant name = "TTN";                   
    |    uint8 public constant decimals = 2; 
    |    string public constant symbol = "TTN";
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'TTNCoin':
    |
    |    string public constant name = "TTN";                   
  > |    uint8 public constant decimals = 2; 
    |    string public constant symbol = "TTN";
    |
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(23)

[33mWarning[0m for MissingInputValidation in contract 'TTNCoin':
    |    string public constant name = "TTN";                   
    |    uint8 public constant decimals = 2; 
  > |    string public constant symbol = "TTN";
    |
    |    function TTNCoin(uint256 _initialAmount) public {
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(24)

[31mViolation[0m for UnrestrictedWrite in contract 'TTNCoin':
    |        require(_to != 0x0);
    |        balances[msg.sender] -= _value;//从消息发送者账户中减去token数量_value
  > |        balances[_to] += _value;//往接收账户增加token数量_value
    |        Transfer(msg.sender, _to, _value);//触发转币交易事件
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(37)

[31mViolation[0m for UnrestrictedWrite in contract 'TTNCoin':
    |    (bool success) {
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;//接收账户增加token数量_value
    |        balances[_from] -= _value; //支出账户_from减去token数量_value
    |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(46)

[31mViolation[0m for UnrestrictedWrite in contract 'TTNCoin':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;//接收账户增加token数量_value
  > |        balances[_from] -= _value; //支出账户_from减去token数量_value
    |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
    |        Transfer(_from, _to, _value);//触发转币交易事件
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(47)

[33mWarning[0m for UnrestrictedWrite in contract 'TTNCoin':
    |        require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(_to != 0x0);
  > |        balances[msg.sender] -= _value;//从消息发送者账户中减去token数量_value
    |        balances[_to] += _value;//往接收账户增加token数量_value
    |        Transfer(msg.sender, _to, _value);//触发转币交易事件
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(36)

[33mWarning[0m for UnrestrictedWrite in contract 'TTNCoin':
    |        balances[_to] += _value;//接收账户增加token数量_value
    |        balances[_from] -= _value; //支出账户_from减去token数量_value
  > |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
    |        Transfer(_from, _to, _value);//触发转币交易事件
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(48)

[33mWarning[0m for UnrestrictedWrite in contract 'TTNCoin':
    |    function approve(address _spender, uint256 _value) public returns (bool success)   
    |    { 
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe48894085d762dee54f6f9d4ff33e03e9417ba8f.sol(59)


