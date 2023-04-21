Processing contract: /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol:RentChain
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'RentChain':
    |}
    |
  > |contract RentChain is SafeMath {
    |    string public name = "RENTCHAIN";
    |    string public symbol = "RENT";
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(35)

[31mViolation[0m for MissingInputValidation in contract 'RentChain':
    |    uint8 constant public decimals = 2;
    |    mapping(address => uint256)  _balances;
  > |    mapping(address => mapping(address => uint256)) public _allowed;
    |
    |    uint256  public totalSupply = 188 * 100000000 * 100;
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(40)

[31mViolation[0m for MissingInputValidation in contract 'RentChain':
    |    }
    |
  > |    function balanceOf(address addr) public view returns (uint256) {
    |        return _balances[addr];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(50)

[31mViolation[0m for MissingInputValidation in contract 'RentChain':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value)  public returns (bool) {
    |        require(_to != address(0));
    |        require(_balances[_from] >= _value && _value > 0);
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(66)

[31mViolation[0m for MissingInputValidation in contract 'RentChain':
    |    }
    |
  > |    function approve(address spender, uint256 value)  public returns (bool) {
    |        require(spender != address(0));
    |        _allowed[msg.sender][spender] = value;
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(80)

[31mViolation[0m for MissingInputValidation in contract 'RentChain':
    |    }
    |
  > |    function allowance(address _master, address _spender) public view returns (uint256) {
    |        return _allowed[_master][_spender];
    |    }
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(87)

[33mWarning[0m for MissingInputValidation in contract 'RentChain':
    |    }
    |
  > |    function safeSub(uint256 a, uint256 b) internal pure returns (uint256) {
    |        _assert(b <= a);
    |        return a - b;
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(17)

[33mWarning[0m for MissingInputValidation in contract 'RentChain':
    |    }
    |
  > |    function safeAdd(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a + b;
    |        _assert(c >= a && c >= b);
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(22)

[33mWarning[0m for MissingInputValidation in contract 'RentChain':
    |    }
    |
  > |    function _assert(bool assertion) internal pure {
    |        if (!assertion) {
    |            revert();
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'RentChain':
    |
    |contract RentChain is SafeMath {
  > |    string public name = "RENTCHAIN";
    |    string public symbol = "RENT";
    |    uint8 constant public decimals = 2;
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(36)

[33mWarning[0m for MissingInputValidation in contract 'RentChain':
    |contract RentChain is SafeMath {
    |    string public name = "RENTCHAIN";
  > |    string public symbol = "RENT";
    |    uint8 constant public decimals = 2;
    |    mapping(address => uint256)  _balances;
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(37)

[33mWarning[0m for MissingInputValidation in contract 'RentChain':
    |    string public name = "RENTCHAIN";
    |    string public symbol = "RENT";
  > |    uint8 constant public decimals = 2;
    |    mapping(address => uint256)  _balances;
    |    mapping(address => mapping(address => uint256)) public _allowed;
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(38)

[33mWarning[0m for MissingInputValidation in contract 'RentChain':
    |    mapping(address => mapping(address => uint256)) public _allowed;
    |
  > |    uint256  public totalSupply = 188 * 100000000 * 100;
    |
    |
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(42)

[31mViolation[0m for UnrestrictedWrite in contract 'RentChain':
    |        require(_allowed[_from][msg.sender] >= _value);
    |
  > |        _balances[_to] = safeAdd(_balances[_to], _value);
    |        _balances[_from] = safeSub(_balances[_from], _value);
    |        _allowed[_from][msg.sender] = safeSub(_allowed[_from][msg.sender], _value);
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(73)

[31mViolation[0m for UnrestrictedWrite in contract 'RentChain':
    |
    |        _balances[_to] = safeAdd(_balances[_to], _value);
  > |        _balances[_from] = safeSub(_balances[_from], _value);
    |        _allowed[_from][msg.sender] = safeSub(_allowed[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(74)

[33mWarning[0m for UnrestrictedWrite in contract 'RentChain':
    |        require(_balances[_to] + _value >= _balances[_to]);
    |
  > |        _balances[msg.sender] = safeSub(_balances[msg.sender], _value);
    |        _balances[_to] = safeAdd(_balances[_to], _value);
    |        emit Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(60)

[33mWarning[0m for UnrestrictedWrite in contract 'RentChain':
    |        _balances[_to] = safeAdd(_balances[_to], _value);
    |        _balances[_from] = safeSub(_balances[_from], _value);
  > |        _allowed[_from][msg.sender] = safeSub(_allowed[_from][msg.sender], _value);
    |        emit Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(75)

[33mWarning[0m for UnrestrictedWrite in contract 'RentChain':
    |    function approve(address spender, uint256 value)  public returns (bool) {
    |        require(spender != address(0));
  > |        _allowed[msg.sender][spender] = value;
    |        emit Approval(msg.sender, spender, value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(82)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.24;
    |
  > |contract SafeMath {
    |    function safeMul(uint256 a, uint256 b) internal pure returns (uint256) {
    |        uint256 c = a * b;
  at /home/jiaming/mavs_srcs/contract@0xe88eae0a78b63113cecf9d89c2f612a710826435.sol(3)


