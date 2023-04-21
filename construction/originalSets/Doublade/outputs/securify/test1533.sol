Processing contract: /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol:TokenERC20
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol:tokenRecipient
[33mWarning[0m for LockedEther in contract 'TokenERC20':
    |interface tokenRecipient { function receiveApproval(address _from, uint256 _value, address _token, bytes _extraData) public; }  // token的 接受者 这里声明接口, 将会在我们的ABI里
    |
  > |contract TokenERC20 {
    |/*********Token的属性说明************/
    |    string public name ;
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(5)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // 建立映射 地址对应了 uint' 便是他的余额
  > |    mapping (address => uint256) public balanceOf;   
    |    // 地址对应余额
    |    mapping (address => mapping (address => uint256)) public allowance;
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(13)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    mapping (address => uint256) public balanceOf;   
    |    // 地址对应余额
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |     // 事件，用来通知客户端Token交易发生
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(15)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // 这句很重要, 地址对应的合约地址(也就是token余额)
    |        allowance[_from][msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
    |        allowance[msg.sender][_spender] = _value;   // 这里是可花费总量
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(57)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |
  > |    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public returns (bool success) {
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(63)

[31mViolation[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |    // 这个是用户销毁token.....
  > |    function burnFrom(address _from, uint256 _value) public returns (bool success) {
    |        require(balanceOf[_from] >= _value);        // 一样要有这么多
    |        require(_value <= allowance[_from][msg.sender]);    // 
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(79)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |contract TokenERC20 {
    |/*********Token的属性说明************/
  > |    string public name ;
    |    string public symbol ;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(7)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |/*********Token的属性说明************/
    |    string public name ;
  > |    string public symbol ;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
    |    uint256 public totalSupply; // 发行量
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public name ;
    |    string public symbol ;
  > |    uint8 public decimals = 18;  // 18 是建议的默认值
    |    uint256 public totalSupply; // 发行量
    |
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(9)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    string public symbol ;
    |    uint8 public decimals = 18;  // 18 是建议的默认值
  > |    uint256 public totalSupply; // 发行量
    |
    |    // 建立映射 地址对应了 uint' 便是他的余额
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(10)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |
    |    // token的发送函数
  > |    function _transfer(address _from, address _to, uint _value) internal {
    |        require(_to != 0x0);    // 不是零地址
    |        require(balanceOf[_from] >= _value);        // 有足够的余额来发送
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'TokenERC20':
    |    }
    |    // 正如其名, 这个是烧币的.. ,用于把创建者的 token 烧掉
  > |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // 必须要有这么多
    |        balanceOf[msg.sender] -= _value;
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(71)

[33mWarning[0m for UnhandledException in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(66)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TokenERC20':
    |        tokenRecipient spender = tokenRecipient(_spender);
    |        if (approve(_spender, _value)) {
  > |            spender.receiveApproval(msg.sender, _value, this, _extraData);
    |            return true;
    |        }
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(66)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];  // 这个是为了校验, 避免过程出错, 总量不变对吧?
  > |        balanceOf[_from] -= _value; //发钱 不多说
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);   // 这里触发了转账的事件 , 见上event
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(40)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];  // 这个是为了校验, 避免过程出错, 总量不变对吧?
    |        balanceOf[_from] -= _value; //发钱 不多说
  > |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);   // 这里触发了转账的事件 , 见上event
    |        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);  // 判断总额是否一致, 避免过程出错
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(41)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[msg.sender] >= _value);   // 必须要有这么多
    |        balanceOf[msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(74)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(balanceOf[_from] >= _value);        // 一样要有这么多
    |        require(_value <= allowance[_from][msg.sender]);    // 
  > |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(82)

[31mViolation[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        balanceOf[_from] -= _value;
    |        allowance[_from][msg.sender] -= _value;
  > |        totalSupply -= _value;
    |        emit Burn(_from, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(84)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |
    |        uint previousBalances = balanceOf[_from] + balanceOf[_to];  // 这个是为了校验, 避免过程出错, 总量不变对吧?
  > |        balanceOf[_from] -= _value; //发钱 不多说
    |        balanceOf[_to] += _value;
    |        emit Transfer(_from, _to, _value);   // 这里触发了转账的事件 , 见上event
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(40)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        require(_value <= allowance[_from][msg.sender]);     // 这句很重要, 地址对应的合约地址(也就是token余额)
  > |        allowance[_from][msg.sender] -= _value;
    |        _transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(52)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function approve(address _spender, uint256 _value) public
    |        returns (bool success) {
  > |        allowance[msg.sender][_spender] = _value;   // 这里是可花费总量
    |        return true;
    |    }
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(59)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |    function burn(uint256 _value) public returns (bool success) {
    |        require(balanceOf[msg.sender] >= _value);   // 必须要有这么多
  > |        balanceOf[msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(msg.sender, _value);
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(73)

[33mWarning[0m for UnrestrictedWrite in contract 'TokenERC20':
    |        require(_value <= allowance[_from][msg.sender]);    // 
    |        balanceOf[_from] -= _value;
  > |        allowance[_from][msg.sender] -= _value;
    |        totalSupply -= _value;
    |        emit Burn(_from, _value);
  at /home/jiaming/mavs_srcs/contract@0x61bc0a3c3aec1e81dd5cad8caaa92d6f01f7787f.sol(83)


