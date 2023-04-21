Processing contract: /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol:CGT
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol:ContractReceiver
Processing contract: /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for DAO in contract 'CGT':
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(72)

[33mWarning[0m for DAO in contract 'CGT':
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(133)

[33mWarning[0m for LockedEther in contract 'CGT':
    |}
    | 
  > |contract CGT is SafeMath {
    |    
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value, bytes _data);
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(29)

[31mViolation[0m for MissingInputValidation in contract 'CGT':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value) public {
    |        if(msg.sender != _from) return;
    |
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(138)

[31mViolation[0m for MissingInputValidation in contract 'CGT':
    |
    |
  > |    function balanceOf(address _owner) public constant returns (uint balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(152)

[33mWarning[0m for MissingInputValidation in contract 'CGT':
    |
    |contract SafeMath {
  > |    uint256 constant public MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(5)

[33mWarning[0m for MissingInputValidation in contract 'CGT':
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  > |    function safeAdd(uint256 x, uint256 y) pure internal returns (uint256 z) {
    |        if (x > MAX_UINT256 - y) assert(false);
    |        return x + y;
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'CGT':
    |    }
    |
  > |    function safeSub(uint256 x, uint256 y) pure internal returns (uint256 z) {
    |        if (x < y) assert(false);
    |        return x - y;
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(13)

[33mWarning[0m for MissingInputValidation in contract 'CGT':
    |  
    |  // Function to access name of token .
  > |  function name() public constant returns (string _name) {
    |      return name;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(48)

[33mWarning[0m for MissingInputValidation in contract 'CGT':
    |  }
    |  // Function to access symbol of token .
  > |  function symbol() public constant returns (string _symbol) {
    |      return symbol;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(52)

[33mWarning[0m for MissingInputValidation in contract 'CGT':
    |  }
    |  // Function to access decimals of token .
  > |  function decimals() public constant returns (uint8 _decimals) {
    |      return decimals;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(56)

[33mWarning[0m for MissingInputValidation in contract 'CGT':
    |  }
    |  // Function to access total supply of tokens .
  > |  function totalSupply() public constant returns (uint256 _totalSupply) {
    |      return totalSupply;
    |  }
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(60)

[33mWarning[0m for MissingInputValidation in contract 'CGT':
    |
    |//assemble the given address bytecode. If bytecode exists then the _addr is a contract.
  > |    function isContract(address _addr) private view returns (bool is_contract) {
    |        uint length;
    |        assembly {
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(109)

[33mWarning[0m for MissingInputValidation in contract 'CGT':
    |
    |  //function that is called when transaction target is an address
  > |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) assert(false);
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(119)

[33mWarning[0m for MissingInputValidation in contract 'CGT':
    |  
    |  //function that is called when transaction target is a contract
  > |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) assert(false);
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(128)

[33mWarning[0m for UnhandledException in contract 'CGT':
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
  > |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(72)

[33mWarning[0m for UnhandledException in contract 'CGT':
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(133)

[31mViolation[0m for UnrestrictedWrite in contract 'CGT':
    |    if(isContract(_to)) {
    |        if (balanceOf(msg.sender) < _value) assert(false);
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(70)

[31mViolation[0m for UnrestrictedWrite in contract 'CGT':
    |        if (balanceOf(msg.sender) < _value) assert(false);
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        assert(_to.call.value(0)(bytes4(keccak256(_custom_fallback)), msg.sender, _value, _data));
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(71)

[31mViolation[0m for UnrestrictedWrite in contract 'CGT':
    |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) assert(false);
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(121)

[31mViolation[0m for UnrestrictedWrite in contract 'CGT':
    |        if (balanceOf(msg.sender) < _value) assert(false);
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        emit Transfer(msg.sender, _to, _value, _data);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(122)

[31mViolation[0m for UnrestrictedWrite in contract 'CGT':
    |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) assert(false);
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(130)

[31mViolation[0m for UnrestrictedWrite in contract 'CGT':
    |        if (balanceOf(msg.sender) < _value) assert(false);
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(131)

[31mViolation[0m for UnrestrictedWrite in contract 'CGT':
    |        if (safeAdd(balances[_to] , _value) < balances[_to]) return;
    |
  > |        balances[_from] = safeSub(balances[_from],_value);
    |        balances[_to] = safeAdd(balances[_to],_value);
    |        /* Notifiy anyone listening that this transfer took place */
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(144)

[31mViolation[0m for UnrestrictedWrite in contract 'CGT':
    |
    |        balances[_from] = safeSub(balances[_from],_value);
  > |        balances[_to] = safeAdd(balances[_to],_value);
    |        /* Notifiy anyone listening that this transfer took place */
    |        bytes memory empty;
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(145)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | 
    |
  > |contract SafeMath {
    |    uint256 constant public MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(4)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    |
    |contract SafeMath {
  > |    uint256 constant public MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  at /home/jiaming/mavs_srcs/contract@0x89de551f9628c0c00cbb8adf4a07cce3815cead4.sol(5)


