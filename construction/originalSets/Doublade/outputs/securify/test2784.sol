Processing contract: /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol:ContractReceiver
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol:ERC20
Processing contract: /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol:TERATO
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'ContractReceiver':
    | * Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(65)

[31mViolation[0m for MissingInputValidation in contract 'ContractReceiver':
    |    }
    |
  > |    function tokenFallback(address _from, uint _value, bytes _data) public {
    |      TKN memory tkn;
    |      tkn.sender = _from;
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(74)

[33mWarning[0m for MissingInputValidation in contract 'ContractReceiver':
    | * Contract that is working with ERC223 tokens
    | */
  > | contract ContractReceiver {
    |
    |    struct TKN {
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(65)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * Include SafeMath Lib
    | */
  > |contract SafeMath {
    |    uint256 constant public MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(34)

[33mWarning[0m for MissingInputValidation in contract 'SafeMath':
    | */
    |contract SafeMath {
  > |    uint256 constant public MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(35)

[33mWarning[0m for DAO in contract 'TERATO':
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(221)

[33mWarning[0m for LockedEther in contract 'TERATO':
    | * EDOGE is an ERC20 token with ERC223 Extensions
    | */
  > |contract TERATO is ERC20, SafeMath {
    |
    |    string public name = "TERATO";
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(95)

[31mViolation[0m for MissingInputValidation in contract 'TERATO':
    |
    |    // Function that is called when a user or another contract wants to transfer funds .
  > |    function transfer(address _to, uint _value, bytes _data, string _custom_fallback) public returns (bool success) {
    |
    |        if (isContract(_to)) {
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(152)

[31mViolation[0m for MissingInputValidation in contract 'TERATO':
    |
    |    // Get balance of the address provided
  > |    function balanceOf(address _owner) constant public returns (uint256 balance) {
    |        return balances[_owner];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(227)

[31mViolation[0m for MissingInputValidation in contract 'TERATO':
    |    // Prevent from any transfers if token is not yet unlocked
    |    // Use SafeMath for the main logic
  > |    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    |        // Protect against wrapping uints.
    |        require(balances[_from] >= _value && allowed[_from][msg.sender] >= _value && balances[_to] + _value > balances[_to]);
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(234)

[31mViolation[0m for MissingInputValidation in contract 'TERATO':
    |    }
    |
  > |    function approve(address _spender, uint256 _value) public returns (bool success) {
    |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(248)

[31mViolation[0m for MissingInputValidation in contract 'TERATO':
    |    }
    |
  > |    function allowance(address _owner, address _spender) constant public returns (uint256 remaining) {
    |      return allowed[_owner][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(254)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    | */
    |contract SafeMath {
  > |    uint256 constant public MAX_UINT256 =
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(35)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    |    0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    |
  > |    function safeAdd(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        if (x > MAX_UINT256 - y)
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    |    }
    |
  > |    function safeSub(uint256 x, uint256 y) constant internal returns (uint256 z) {
    |        if (x < y) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(44)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    |    uint256 public totalSupply = 68000000 * 10**8;
    |
  > |    address public owner;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(105)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    |
    |
  > |    bool public tokenCreated = false;
    |
    |    mapping(address => uint256) balances;
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(108)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    |
    |    // Function to access name of token .sha
  > |    function name() constant public returns (string _name) {
    |        return name;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(135)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    |    }
    |    // Function to access symbol of token .
  > |    function symbol() constant public returns (string _symbol) {
    |        return symbol;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(139)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    |    }
    |    // Function to access decimals of token .
  > |    function decimals() constant public returns (uint8 _decimals) {
    |        return decimals;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(143)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    |    }
    |    // Function to access total supply of tokens .
  > |    function totalSupply() constant public returns (uint256 _totalSupply) {
    |        return totalSupply;
    |    }
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(147)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    |
    |    // assemble the given address bytecode. If bytecode exists then the _addr is a contract.
  > |    function isContract(address _addr) private returns (bool is_contract) {
    |        uint length;
    |        assembly {
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(193)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    |
    |    // function that is called when transaction target is an address
  > |    function transferToAddress(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(203)

[33mWarning[0m for MissingInputValidation in contract 'TERATO':
    |
    |    // function that is called when transaction target is a contract
  > |    function transferToContract(address _to, uint _value, bytes _data) private returns (bool success) {
    |        if (balanceOf(msg.sender) < _value) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(214)

[31mViolation[0m for UnhandledException in contract 'TERATO':
    |            balances[_to] = safeAdd(balanceOf(_to), _value);
    |            ContractReceiver receiver = ContractReceiver(_to);
  > |            receiver.call.value(0)(bytes4(sha3(_custom_fallback)), msg.sender, _value, _data);
    |            Transfer(msg.sender, _to, _value, _data);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(161)

[33mWarning[0m for UnhandledException in contract 'TERATO':
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  > |        receiver.tokenFallback(msg.sender, _value, _data);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(221)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'TERATO':
    |            balances[_to] = safeAdd(balanceOf(_to), _value);
    |            ContractReceiver receiver = ContractReceiver(_to);
  > |            receiver.call.value(0)(bytes4(sha3(_custom_fallback)), msg.sender, _value, _data);
    |            Transfer(msg.sender, _to, _value, _data);
    |            return true;
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(161)

[31mViolation[0m for UnrestrictedWrite in contract 'TERATO':
    |            revert();
    |        }
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(207)

[31mViolation[0m for UnrestrictedWrite in contract 'TERATO':
    |        }
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(208)

[31mViolation[0m for UnrestrictedWrite in contract 'TERATO':
    |            revert();
    |        }
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(218)

[31mViolation[0m for UnrestrictedWrite in contract 'TERATO':
    |        }
    |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
    |        receiver.tokenFallback(msg.sender, _value, _data);
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(219)

[31mViolation[0m for UnrestrictedWrite in contract 'TERATO':
    |        uint256 allowance = allowed[_from][msg.sender];
    |        require(balances[_from] >= _value && allowance >= _value);
  > |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        if (allowance < MAX_UINT256) {
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(239)

[31mViolation[0m for UnrestrictedWrite in contract 'TERATO':
    |        require(balances[_from] >= _value && allowance >= _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
  > |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        if (allowance < MAX_UINT256) {
    |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(240)

[33mWarning[0m for UnrestrictedWrite in contract 'TERATO':
    |                revert();
    |            }
  > |            balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |            balances[_to] = safeAdd(balanceOf(_to), _value);
    |            ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(158)

[33mWarning[0m for UnrestrictedWrite in contract 'TERATO':
    |            revert();
    |        }
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(207)

[33mWarning[0m for UnrestrictedWrite in contract 'TERATO':
    |            revert();
    |        }
  > |        balances[msg.sender] = safeSub(balanceOf(msg.sender), _value);
    |        balances[_to] = safeAdd(balanceOf(_to), _value);
    |        ContractReceiver receiver = ContractReceiver(_to);
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(218)

[33mWarning[0m for UnrestrictedWrite in contract 'TERATO':
    |        balances[_from] = safeSub(balanceOf(_from), _value);
    |        if (allowance < MAX_UINT256) {
  > |            allowed[_from][msg.sender] = safeSub(allowed[_from][msg.sender], _value);
    |        }
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(242)

[33mWarning[0m for UnrestrictedWrite in contract 'TERATO':
    |
    |    function approve(address _spender, uint256 _value) public returns (bool success) {
  > |        allowed[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xb6232969a6c1f995c802b8ed84265e4f7f92076d.sol(249)


