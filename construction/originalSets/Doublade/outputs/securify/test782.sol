Processing contract: /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol:PIGT
  Attempt to decompile the contract with methods...
  Success. Inlining methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'PIGT':
    |}
    |
  > |contract PIGT is SafeMath {
    |    string public constant standard = 'Token 0.1';
    |    uint8 public constant decimals = 18;
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(27)

[31mViolation[0m for MissingInputValidation in contract 'PIGT':
    |    uint256 public totalSupply = 0.1 * 10**8 * 10**uint256(decimals);
    |
  > |    mapping (address => uint256) public balanceOf;
    |    mapping (address => mapping (address => uint256)) public allowance;
    |
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(36)

[31mViolation[0m for MissingInputValidation in contract 'PIGT':
    |
    |    mapping (address => uint256) public balanceOf;
  > |    mapping (address => mapping (address => uint256)) public allowance;
    |
    |    event Transfer(address indexed _from, address indexed _to, uint256 _value);
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(37)

[31mViolation[0m for MissingInputValidation in contract 'PIGT':
    |    }
    |
  > |    function transferFrom(address _from, address _to, uint256 _value)
    |    public
    |    returns (bool success)
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(57)

[33mWarning[0m for MissingInputValidation in contract 'PIGT':
    |    }
    |
  > |    function safeAdd(uint256 _x, uint256 _y) internal returns (uint256) {
    |        uint256 z = _x + _y;
    |        assert(z >= _x);
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(8)

[33mWarning[0m for MissingInputValidation in contract 'PIGT':
    |    }
    |
  > |    function safeSub(uint256 _x, uint256 _y) internal returns (uint256) {
    |        assert(_x >= _y);
    |        return _x - _y;
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(14)

[33mWarning[0m for MissingInputValidation in contract 'PIGT':
    |
    |contract PIGT is SafeMath {
  > |    string public constant standard = 'Token 0.1';
    |    uint8 public constant decimals = 18;
    |
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(28)

[33mWarning[0m for MissingInputValidation in contract 'PIGT':
    |contract PIGT is SafeMath {
    |    string public constant standard = 'Token 0.1';
  > |    uint8 public constant decimals = 18;
    |
    |    // you need change the following three values
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(29)

[33mWarning[0m for MissingInputValidation in contract 'PIGT':
    |
    |    // you need change the following three values
  > |    string public constant name = 'pig token';
    |    string public constant symbol = 'PIGT';
    |    uint256 public totalSupply = 0.1 * 10**8 * 10**uint256(decimals);
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(32)

[33mWarning[0m for MissingInputValidation in contract 'PIGT':
    |    // you need change the following three values
    |    string public constant name = 'pig token';
  > |    string public constant symbol = 'PIGT';
    |    uint256 public totalSupply = 0.1 * 10**8 * 10**uint256(decimals);
    |
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(33)

[33mWarning[0m for MissingInputValidation in contract 'PIGT':
    |    string public constant name = 'pig token';
    |    string public constant symbol = 'PIGT';
  > |    uint256 public totalSupply = 0.1 * 10**8 * 10**uint256(decimals);
    |
    |    mapping (address => uint256) public balanceOf;
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(34)

[31mViolation[0m for UnrestrictedWrite in contract 'PIGT':
    |    returns (bool success)
    |    {
  > |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(51)

[31mViolation[0m for UnrestrictedWrite in contract 'PIGT':
    |    {
    |        balanceOf[msg.sender] = safeSub(balanceOf[msg.sender], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(msg.sender, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(52)

[31mViolation[0m for UnrestrictedWrite in contract 'PIGT':
    |    returns (bool success)
    |    {
  > |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(61)

[31mViolation[0m for UnrestrictedWrite in contract 'PIGT':
    |    {
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
  > |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
    |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(62)

[31mViolation[0m for UnrestrictedWrite in contract 'PIGT':
    |        allowance[_from][msg.sender] = safeSub(allowance[_from][msg.sender], _value);
    |        balanceOf[_from] = safeSub(balanceOf[_from], _value);
  > |        balanceOf[_to] = safeAdd(balanceOf[_to], _value);
    |        Transfer(_from, _to, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(63)

[33mWarning[0m for UnrestrictedWrite in contract 'PIGT':
    |        //  https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    |        require(_value == 0 || allowance[msg.sender][_spender] == 0);
  > |        allowance[msg.sender][_spender] = _value;
    |        Approval(msg.sender, _spender, _value);
    |        return true;
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(77)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    |pragma solidity ^0.4.18;
    |
  > |contract SafeMath {
    |
    |    function SafeMath() {
  at /home/jiaming/mavs_srcs/contract@0x31bd42a29642e388bcaf57bd020955ef2783725d.sol(3)


