Processing contract: /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol:KangKangToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol:Token
[33mWarning[0m for LockedEther in contract 'KangKangToken':
    |}
    |
  > |contract KangKangToken is StandardToken {
    |    string public constant name = "Kang Kang Token";
    |    string public constant symbol = "KKT";
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(73)

[31mViolation[0m for MissingInputValidation in contract 'KangKangToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //默认totalSupply 不会超过最大值 (2^256 - 1).
    |        //如果随着时间的推移将会有新的token生成，则可以用下面这句避免溢出的异常
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'KangKangToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns 
    |    (bool success) {
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= 
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'KangKangToken':
    |    }
    |    
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'KangKangToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'KangKangToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];//允许_spender从_owner中转出的token数
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'KangKangToken':
    |contract Token{
    |    // token总量，默认会为public变量生成一个getter函数接口，名称为totalSupply().
  > |    uint256 public totalSupply;
    |
    |    /// 获取账户_owner拥有token的数量 
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'KangKangToken':
    |
    |contract KangKangToken is StandardToken {
  > |    string public constant name = "Kang Kang Token";
    |    string public constant symbol = "KKT";
    |    uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'KangKangToken':
    |contract KangKangToken is StandardToken {
    |    string public constant name = "Kang Kang Token";
  > |    string public constant symbol = "KKT";
    |    uint8 public constant decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'KangKangToken':
    |    string public constant name = "Kang Kang Token";
    |    string public constant symbol = "KKT";
  > |    uint8 public constant decimals = 18;
    |
    |    uint256 public constant ONE_TOKENS = (10 ** uint256(decimals));
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'KangKangToken':
    |    uint8 public constant decimals = 18;
    |
  > |    uint256 public constant ONE_TOKENS = (10 ** uint256(decimals));
    |    uint256 public constant MILLION_TOKENS = (10**6) * ONE_TOKENS;
    |    uint256 public constant TOTAL_TOKENS = 1500 * MILLION_TOKENS;
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(78)

[33mWarning[0m for MissingInputValidation in contract 'KangKangToken':
    |
    |    uint256 public constant ONE_TOKENS = (10 ** uint256(decimals));
  > |    uint256 public constant MILLION_TOKENS = (10**6) * ONE_TOKENS;
    |    uint256 public constant TOTAL_TOKENS = 1500 * MILLION_TOKENS;
    |
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'KangKangToken':
    |    uint256 public constant ONE_TOKENS = (10 ** uint256(decimals));
    |    uint256 public constant MILLION_TOKENS = (10**6) * ONE_TOKENS;
  > |    uint256 public constant TOTAL_TOKENS = 1500 * MILLION_TOKENS;
    |
    |    function KangKangToken ()    
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(80)

[31mViolation[0m for UnrestrictedWrite in contract 'KangKangToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;//从消息发送者账户中减去token数量_value
  > |        balances[_to] += _value;//往接收账户增加token数量_value
    |        Transfer(msg.sender, _to, _value);//触发转币交易事件
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'KangKangToken':
    |        // _value && balances[_to] + _value > balances[_to]);
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;//接收账户增加token数量_value
    |        balances[_from] -= _value; //支出账户_from减去token数量_value
    |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'KangKangToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;//接收账户增加token数量_value
  > |        balances[_from] -= _value; //支出账户_from减去token数量_value
    |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
    |        Transfer(_from, _to, _value);//触发转币交易事件
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'KangKangToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;//从消息发送者账户中减去token数量_value
    |        balances[_to] += _value;//往接收账户增加token数量_value
    |        Transfer(msg.sender, _to, _value);//触发转币交易事件
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'KangKangToken':
    |        balances[_to] += _value;//接收账户增加token数量_value
    |        balances[_from] -= _value; //支出账户_from减去token数量_value
  > |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
    |        Transfer(_from, _to, _value);//触发转币交易事件
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'KangKangToken':
    |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(61)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //默认totalSupply 不会超过最大值 (2^256 - 1).
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) returns (bool success) {
    |        //默认totalSupply 不会超过最大值 (2^256 - 1).
    |        //如果随着时间的推移将会有新的token生成，则可以用下面这句避免溢出的异常
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) returns 
    |    (bool success) {
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= 
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(43)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function balanceOf(address _owner) constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
    |        allowed[msg.sender][_spender] = _value;
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];//允许_spender从_owner中转出的token数
    |    }
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(66)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract Token{
    |    // token总量，默认会为public变量生成一个getter函数接口，名称为totalSupply().
  > |    uint256 public totalSupply;
    |
    |    /// 获取账户_owner拥有token的数量 
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;//从消息发送者账户中减去token数量_value
  > |        balances[_to] += _value;//往接收账户增加token数量_value
    |        Transfer(msg.sender, _to, _value);//触发转币交易事件
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        // _value && balances[_to] + _value > balances[_to]);
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;//接收账户增加token数量_value
    |        balances[_from] -= _value; //支出账户_from减去token数量_value
    |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;//接收账户增加token数量_value
  > |        balances[_from] -= _value; //支出账户_from减去token数量_value
    |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
    |        Transfer(_from, _to, _value);//触发转币交易事件
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;//从消息发送者账户中减去token数量_value
    |        balances[_to] += _value;//往接收账户增加token数量_value
    |        Transfer(msg.sender, _to, _value);//触发转币交易事件
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;//接收账户增加token数量_value
    |        balances[_from] -= _value; //支出账户_from减去token数量_value
  > |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
    |        Transfer(_from, _to, _value);//触发转币交易事件
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |    function approve(address _spender, uint256 _value) returns (bool success)   
    |    {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x6029c3ab189ec60ba4815f39dcd7895d9ed277da.sol(61)


