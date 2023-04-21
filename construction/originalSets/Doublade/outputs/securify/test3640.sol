Processing contract: /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol:HumanStandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol:StandardToken
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol:Token
[33mWarning[0m for LockedEther in contract 'HumanStandardToken':
    |}
    |
  > |contract HumanStandardToken is StandardToken { 
    |
    |    /* Public variables of the token */
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(72)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //默认totalSupply 不会超过最大值 (2^256 - 1).
    |        //如果随着时间的推移将会有新的token生成，则可以用下面这句避免溢出的异常
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= 
    |        // _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |    
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];//允许_spender从_owner中转出的token数
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    /* Approves and then calls the receiving contract */
    |    
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(90)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |contract Token{
    |    // token总量，默认会为public变量生成一个getter函数接口，名称为totalSupply().
  > |    uint256 public totalSupply;
    |
    |    /// 获取账户_owner拥有token的数量 
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |
    |    /* Public variables of the token */
  > |    string public name;         //名称: eg Simon Bucks
    |    uint8 public decimals;      //最多的小数位数，How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;       //token简称: eg SBX
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(75)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    /* Public variables of the token */
    |    string public name;         //名称: eg Simon Bucks
  > |    uint8 public decimals;      //最多的小数位数，How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;       //token简称: eg SBX
    |    string public version = 'H0.1';    //版本
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(76)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    string public name;         //名称: eg Simon Bucks
    |    uint8 public decimals;      //最多的小数位数，How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
  > |    string public symbol;       //token简称: eg SBX
    |    string public version = 'H0.1';    //版本
    |
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(77)

[33mWarning[0m for MissingInputValidation in contract 'HumanStandardToken':
    |    uint8 public decimals;      //最多的小数位数，How many decimals to show. ie. There could 1000 base units with 3 decimals. Meaning 0.980 SBX = 980 base units. It's like comparing 1 wei to 1 ether.
    |    string public symbol;       //token简称: eg SBX
  > |    string public version = 'H0.1';    //版本
    |
    |    constructor(uint256 _initialAmount, string _tokenName, uint8 _decimalUnits, string _tokenSymbol) public {
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(78)

[33mWarning[0m for UnhandledException in contract 'HumanStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(96)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'HumanStandardToken':
    |        //receiveApproval(address _from, uint256 _value, address _tokenContract, bytes _extraData)
    |        //it is assumed that when does this that the call *should* succeed, otherwise one would use vanilla approve instead.
  > |        require(_spender.call(bytes4(bytes32(keccak256("receiveApproval(address,uint256,address,bytes)"))), msg.sender, _value, this, _extraData));
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(96)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;//从消息发送者账户中减去token数量_value
  > |        balances[_to] += _value;//往接收账户增加token数量_value
    |        emit Transfer(msg.sender, _to, _value);//触发转币交易事件
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        // _value && balances[_to] + _value > balances[_to]);
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;//接收账户增加token数量_value
    |        balances[_from] -= _value; //支出账户_from减去token数量_value
    |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;//接收账户增加token数量_value
  > |        balances[_from] -= _value; //支出账户_from减去token数量_value
    |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
    |        emit Transfer(_from, _to, _value);//触发转币交易事件
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;//从消息发送者账户中减去token数量_value
    |        balances[_to] += _value;//往接收账户增加token数量_value
    |        emit Transfer(msg.sender, _to, _value);//触发转币交易事件
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |        balances[_to] += _value;//接收账户增加token数量_value
    |        balances[_from] -= _value; //支出账户_from减去token数量_value
  > |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
    |        emit Transfer(_from, _to, _value);//触发转币交易事件
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'HumanStandardToken':
    |    
    |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        //call the receiveApproval function on the contract you want to be notified. This crafts the function signature manually so one doesn't have to include a contract in here just for this.
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(91)

[33mWarning[0m for LockedEther in contract 'StandardToken':
    |}
    |
  > |contract StandardToken is Token {
    |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //默认totalSupply 不会超过最大值 (2^256 - 1).
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(31)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |contract StandardToken is Token {
  > |    function transfer(address _to, uint256 _value) public returns (bool success) {
    |        //默认totalSupply 不会超过最大值 (2^256 - 1).
    |        //如果随着时间的推移将会有新的token生成，则可以用下面这句避免溢出的异常
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(32)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        //require(balances[_from] >= _value && allowed[_from][msg.sender] >= 
    |        // _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(44)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |    
  > |    function balanceOf(address _owner) public constant returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(55)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(59)

[31mViolation[0m for MissingInputValidation in contract 'StandardToken':
    |    }
    |
  > |    function allowance(address _owner, address _spender) public constant returns (uint256 remaining) {
    |        return allowed[_owner][_spender];//允许_spender从_owner中转出的token数
    |    }
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(65)

[33mWarning[0m for MissingInputValidation in contract 'StandardToken':
    |contract Token{
    |    // token总量，默认会为public变量生成一个getter函数接口，名称为totalSupply().
  > |    uint256 public totalSupply;
    |
    |    /// 获取账户_owner拥有token的数量 
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(4)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[msg.sender] >= _value);
    |        balances[msg.sender] -= _value;//从消息发送者账户中减去token数量_value
  > |        balances[_to] += _value;//往接收账户增加token数量_value
    |        emit Transfer(msg.sender, _to, _value);//触发转币交易事件
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(38)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        // _value && balances[_to] + _value > balances[_to]);
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
  > |        balances[_to] += _value;//接收账户增加token数量_value
    |        balances[_from] -= _value; //支出账户_from减去token数量_value
    |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(48)

[31mViolation[0m for UnrestrictedWrite in contract 'StandardToken':
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value);
    |        balances[_to] += _value;//接收账户增加token数量_value
  > |        balances[_from] -= _value; //支出账户_from减去token数量_value
    |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
    |        emit Transfer(_from, _to, _value);//触发转币交易事件
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(49)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        //require(balances[msg.sender] >= _value && balances[_to] + _value > balances[_to]);
    |        require(balances[msg.sender] >= _value);
  > |        balances[msg.sender] -= _value;//从消息发送者账户中减去token数量_value
    |        balances[_to] += _value;//往接收账户增加token数量_value
    |        emit Transfer(msg.sender, _to, _value);//触发转币交易事件
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(37)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |        balances[_to] += _value;//接收账户增加token数量_value
    |        balances[_from] -= _value; //支出账户_from减去token数量_value
  > |        allowed[_from][msg.sender] -= _value;//消息发送者可以从账户_from中转出的数量减少_value
    |        emit Transfer(_from, _to, _value);//触发转币交易事件
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(50)

[33mWarning[0m for UnrestrictedWrite in contract 'StandardToken':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        emit Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xee691f056b6f94694ad389a2b13d93a05e0cd06c.sol(60)


